
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int BYTES_TO_DWORDS (int ) ;
 int DBG_STATUS_OK ;
 int GRC_REG_NUMBER_VALID_OVERRIDE_WINDOW ;
 int GRC_REG_PROTECTION_OVERRIDE_WINDOW ;
 int PROTECTION_OVERRIDE_DEPTH_DWORDS ;
 int PROTECTION_OVERRIDE_ELEMENT_DWORDS ;
 int SPLIT_TYPE_NONE ;
 int qed_dump_common_global_params (struct qed_hwfn*,struct qed_ptt*,int*,int,int) ;
 int qed_dump_last_section (int*,int,int) ;
 int qed_dump_num_param (int*,int,char*,int) ;
 int qed_dump_section_hdr (int*,int,char*,int) ;
 int qed_dump_str_param (int*,int,char*,char*) ;
 int qed_grc_dump_addr_range (struct qed_hwfn*,struct qed_ptt*,int*,int,int,int,int,int ,int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static enum dbg_status qed_protection_override_dump(struct qed_hwfn *p_hwfn,
          struct qed_ptt *p_ptt,
          u32 *dump_buf,
          bool dump,
          u32 *num_dumped_dwords)
{
 u32 size_param_offset, override_window_dwords, offset = 0, addr;

 *num_dumped_dwords = 0;


 offset += qed_dump_common_global_params(p_hwfn,
      p_ptt,
      dump_buf + offset, dump, 1);
 offset += qed_dump_str_param(dump_buf + offset,
         dump, "dump-type", "protection-override");




 offset += qed_dump_section_hdr(dump_buf + offset,
           dump, "protection_override_data", 1);
 size_param_offset = offset;
 offset += qed_dump_num_param(dump_buf + offset, dump, "size", 0);

 if (!dump) {
  offset += PROTECTION_OVERRIDE_DEPTH_DWORDS;
  goto out;
 }


 override_window_dwords =
  qed_rd(p_hwfn, p_ptt, GRC_REG_NUMBER_VALID_OVERRIDE_WINDOW) *
  PROTECTION_OVERRIDE_ELEMENT_DWORDS;
 addr = BYTES_TO_DWORDS(GRC_REG_PROTECTION_OVERRIDE_WINDOW);
 offset += qed_grc_dump_addr_range(p_hwfn,
       p_ptt,
       dump_buf + offset,
       1,
       addr,
       override_window_dwords,
       1, SPLIT_TYPE_NONE, 0);
 qed_dump_num_param(dump_buf + size_param_offset, dump, "size",
      override_window_dwords);
out:

 offset += qed_dump_last_section(dump_buf, offset, dump);

 *num_dumped_dwords = offset;

 return DBG_STATUS_OK;
}
