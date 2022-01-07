
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwrm_wol_filter_alloc_output {int wol_filter_id; } ;
struct hwrm_wol_filter_alloc_input {int mac_address; int enables; int wol_type; int port_id; int member_0; } ;
struct TYPE_3__ {int port_id; } ;
struct bnxt {int hwrm_cmd_lock; int wol_filter_id; TYPE_2__* dev; TYPE_1__ pf; struct hwrm_wol_filter_alloc_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
struct TYPE_4__ {int dev_addr; } ;


 int ETH_ALEN ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_WOL_FILTER_ALLOC ;
 int WOL_FILTER_ALLOC_REQ_ENABLES_MAC_ADDRESS ;
 int WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_wol_filter_alloc_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_wol_filter_alloc_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int bnxt_hwrm_alloc_wol_fltr(struct bnxt *bp)
{
 struct hwrm_wol_filter_alloc_input req = {0};
 struct hwrm_wol_filter_alloc_output *resp = bp->hwrm_cmd_resp_addr;
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_WOL_FILTER_ALLOC, -1, -1);
 req.port_id = cpu_to_le16(bp->pf.port_id);
 req.wol_type = WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT;
 req.enables = cpu_to_le32(WOL_FILTER_ALLOC_REQ_ENABLES_MAC_ADDRESS);
 memcpy(req.mac_address, bp->dev->dev_addr, ETH_ALEN);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc)
  bp->wol_filter_id = resp->wol_filter_id;
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
