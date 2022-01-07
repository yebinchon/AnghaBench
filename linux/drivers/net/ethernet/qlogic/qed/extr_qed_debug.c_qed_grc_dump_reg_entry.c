
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum init_split_types { ____Placeholder_init_split_types } init_split_types ;


 int qed_grc_dump_addr_range (struct qed_hwfn*,struct qed_ptt*,int*,int,int,int,int,int,int ) ;
 int qed_grc_dump_reg_entry_hdr (int*,int,int,int) ;

__attribute__((used)) static u32 qed_grc_dump_reg_entry(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt,
      u32 *dump_buf,
      bool dump, u32 addr, u32 len, bool wide_bus,
      enum init_split_types split_type, u8 split_id)
{
 u32 offset = 0;

 offset += qed_grc_dump_reg_entry_hdr(dump_buf, dump, addr, len);
 offset += qed_grc_dump_addr_range(p_hwfn,
       p_ptt,
       dump_buf + offset,
       dump, addr, len, wide_bus,
       split_type, split_id);

 return offset;
}
