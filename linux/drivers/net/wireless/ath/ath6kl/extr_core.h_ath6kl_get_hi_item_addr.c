
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath6kl {scalar_t__ target_type; } ;


 scalar_t__ ATH6KL_AR6003_HI_START_ADDR ;
 scalar_t__ ATH6KL_AR6004_HI_START_ADDR ;
 scalar_t__ TARGET_TYPE_AR6003 ;
 scalar_t__ TARGET_TYPE_AR6004 ;

__attribute__((used)) static inline u32 ath6kl_get_hi_item_addr(struct ath6kl *ar,
       u32 item_offset)
{
 u32 addr = 0;

 if (ar->target_type == TARGET_TYPE_AR6003)
  addr = ATH6KL_AR6003_HI_START_ADDR + item_offset;
 else if (ar->target_type == TARGET_TYPE_AR6004)
  addr = ATH6KL_AR6004_HI_START_ADDR + item_offset;

 return addr;
}
