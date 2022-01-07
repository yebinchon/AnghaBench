
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input {int req_type; } ;
struct bnxt {int fw_cap; } ;


 int BNXT_FW_CAP_KONG_MB_CHNL ;
 scalar_t__ bnxt_cfa_hwrm_message (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline bool bnxt_kong_hwrm_message(struct bnxt *bp, struct input *req)
{
 return (bp->fw_cap & BNXT_FW_CAP_KONG_MB_CHNL &&
  bnxt_cfa_hwrm_message(le16_to_cpu(req->req_type)));
}
