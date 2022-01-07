
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cmd; int group_id; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_3__ hdr; } ;
struct iwl_rx_mpdu_desc {int mpdu_len; } ;
struct iwl_rx_cmd_buffer {int _page; int _offset; int truesize; int _rx_page_order; } ;
struct iwl_mvm {TYPE_2__* trans; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_5__ {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; int mq_rx_supported; } ;


 int EINVAL ;
 size_t EIO ;
 size_t ENOMEM ;
 size_t ENOTSUPP ;
 int GFP_ATOMIC ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 int IWL_RX_DESC_SIZE_V1 ;
 int LEGACY_GROUP ;
 int REPLY_RX_MPDU_CMD ;
 scalar_t__ WIDE_ID (int ,int ) ;
 int alloc_pages (int ,int ) ;
 int hex2bin (int ,char*,int) ;
 int iwl_free_rxb (struct iwl_rx_cmd_buffer*) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_rx_mpdu_mq (struct iwl_mvm*,int *,struct iwl_rx_cmd_buffer*,int ) ;
 int le16_to_cpu (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int page_address (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static ssize_t iwl_dbgfs_inject_packet_write(struct iwl_mvm *mvm,
          char *buf, size_t count,
          loff_t *ppos)
{
 struct iwl_rx_cmd_buffer rxb = {
  ._rx_page_order = 0,
  .truesize = 0,
  ._offset = 0,
 };
 struct iwl_rx_packet *pkt;
 struct iwl_rx_mpdu_desc *desc;
 int bin_len = count / 2;
 int ret = -EINVAL;
 size_t mpdu_cmd_hdr_size = (mvm->trans->trans_cfg->device_family >=
        IWL_DEVICE_FAMILY_22560) ?
  sizeof(struct iwl_rx_mpdu_desc) :
  IWL_RX_DESC_SIZE_V1;

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;


 if (!mvm->trans->trans_cfg->mq_rx_supported)
  return -ENOTSUPP;

 rxb._page = alloc_pages(GFP_ATOMIC, 0);
 if (!rxb._page)
  return -ENOMEM;
 pkt = rxb_addr(&rxb);

 ret = hex2bin(page_address(rxb._page), buf, bin_len);
 if (ret)
  goto out;


 if (bin_len < sizeof(*pkt) + mpdu_cmd_hdr_size)
  goto out;


 if (WIDE_ID(pkt->hdr.group_id, pkt->hdr.cmd) !=
     WIDE_ID(LEGACY_GROUP, REPLY_RX_MPDU_CMD))
  goto out;


 desc = (void *)pkt->data;
 if (le16_to_cpu(desc->mpdu_len) !=
     (bin_len - mpdu_cmd_hdr_size - sizeof(*pkt)))
  goto out;

 local_bh_disable();
 iwl_mvm_rx_mpdu_mq(mvm, ((void*)0), &rxb, 0);
 local_bh_enable();
 ret = 0;

out:
 iwl_free_rxb(&rxb);

 return ret ?: count;
}
