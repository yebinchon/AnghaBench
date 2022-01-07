
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_ring_ba_en_cmd {int ring_id; int agg_max_wsize; int amsdu; int ba_timeout; } ;
struct wil6210_priv {scalar_t__ amsdu_en; int fw_capabilities; scalar_t__ use_rx_hw_reordering; scalar_t__ use_enhanced_dma_hw; } ;
typedef int cmd ;


 int WMI_FW_CAPABILITY_AMSDU ;
 int WMI_RING_BA_EN_CMDID ;
 int cpu_to_le16 (int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int,int,int ,int) ;
 int wmi_send (struct wil6210_priv*,int ,int,struct wmi_ring_ba_en_cmd*,int) ;

int wmi_addba(struct wil6210_priv *wil, u8 mid,
       u8 ringid, u8 size, u16 timeout)
{
 u8 amsdu = wil->use_enhanced_dma_hw && wil->use_rx_hw_reordering &&
  test_bit(WMI_FW_CAPABILITY_AMSDU, wil->fw_capabilities) &&
  wil->amsdu_en;
 struct wmi_ring_ba_en_cmd cmd = {
  .ring_id = ringid,
  .agg_max_wsize = size,
  .ba_timeout = cpu_to_le16(timeout),
  .amsdu = amsdu,
 };

 wil_dbg_wmi(wil, "addba: (ring %d size %d timeout %d amsdu %d)\n",
      ringid, size, timeout, amsdu);

 return wmi_send(wil, WMI_RING_BA_EN_CMDID, mid, &cmd, sizeof(cmd));
}
