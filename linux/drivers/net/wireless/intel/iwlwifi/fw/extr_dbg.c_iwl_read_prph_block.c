
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_trans {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int iwl_read_prph_no_grab (struct iwl_trans*,scalar_t__) ;

__attribute__((used)) static void iwl_read_prph_block(struct iwl_trans *trans, u32 start,
    u32 len_bytes, __le32 *data)
{
 u32 i;

 for (i = 0; i < len_bytes; i += 4)
  *data++ = cpu_to_le32(iwl_read_prph_no_grab(trans, start + i));
}
