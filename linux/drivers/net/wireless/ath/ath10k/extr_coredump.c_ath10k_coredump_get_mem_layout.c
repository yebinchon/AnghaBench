
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_hw_mem_layout {scalar_t__ hw_id; scalar_t__ hw_rev; } ;
struct ath10k {scalar_t__ target_version; scalar_t__ hw_rev; } ;


 int ARRAY_SIZE (struct ath10k_hw_mem_layout const*) ;
 int ATH10K_FW_CRASH_DUMP_RAM_DATA ;
 scalar_t__ WARN_ON (int) ;
 int ath10k_coredump_mask ;
 struct ath10k_hw_mem_layout const* hw_mem_layouts ;
 int test_bit (int ,int *) ;

const struct ath10k_hw_mem_layout *ath10k_coredump_get_mem_layout(struct ath10k *ar)
{
 int i;

 if (!test_bit(ATH10K_FW_CRASH_DUMP_RAM_DATA, &ath10k_coredump_mask))
  return ((void*)0);

 if (WARN_ON(ar->target_version == 0))
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(hw_mem_layouts); i++) {
  if (ar->target_version == hw_mem_layouts[i].hw_id &&
      ar->hw_rev == hw_mem_layouts[i].hw_rev)
   return &hw_mem_layouts[i];
 }

 return ((void*)0);
}
