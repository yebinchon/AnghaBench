
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hwrm_dbg_coredump_initiate_input {void* segment_id; void* component_id; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_COREDUMP_TIMEOUT ;
 int HWRM_DBG_COREDUMP_INITIATE ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_dbg_coredump_initiate_input*,int ,int,int) ;
 void* cpu_to_le16 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_dbg_coredump_initiate_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_dbg_coredump_initiate(struct bnxt *bp, u16 component_id,
        u16 segment_id)
{
 struct hwrm_dbg_coredump_initiate_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_DBG_COREDUMP_INITIATE, -1, -1);
 req.component_id = cpu_to_le16(component_id);
 req.segment_id = cpu_to_le16(segment_id);

 return hwrm_send_message(bp, &req, sizeof(req), HWRM_COREDUMP_TIMEOUT);
}
