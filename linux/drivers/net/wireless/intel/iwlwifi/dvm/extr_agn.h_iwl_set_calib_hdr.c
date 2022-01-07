
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_calib_hdr {int groups_num; int data_valid; scalar_t__ first_group; int op_code; } ;



__attribute__((used)) static inline void iwl_set_calib_hdr(struct iwl_calib_hdr *hdr, u8 cmd)
{
 hdr->op_code = cmd;
 hdr->first_group = 0;
 hdr->groups_num = 1;
 hdr->data_valid = 1;
}
