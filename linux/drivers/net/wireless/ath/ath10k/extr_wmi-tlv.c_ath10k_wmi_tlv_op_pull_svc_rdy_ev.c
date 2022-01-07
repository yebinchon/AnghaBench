
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_tlv_svc_rdy_parse {int service_map_len; struct wlan_host_mem_req const* service_map; int num_mem_reqs; int high_5ghz_chan; int low_5ghz_chan; int eeprom_rd; int num_rf_chains; int phy_capab; int fw_build; int sw_ver1; int sw_ver0; int vht_cap; int ht_cap; int max_tx_power; int min_tx_power; struct wlan_host_mem_req* mem_reqs; struct wlan_host_mem_req* svc_bmap; struct hal_reg_capabilities* reg; struct wmi_tlv_svc_rdy_ev* ev; } ;
struct TYPE_2__ {int abi_ver1; int abi_ver0; int abi_ver_ns3; int abi_ver_ns2; int abi_ver_ns1; int abi_ver_ns0; } ;
struct wmi_tlv_svc_rdy_ev {int num_mem_reqs; int num_rf_chains; int phy_capability; int fw_build_vers; TYPE_1__ abi; int vht_cap_info; int ht_cap_info; int hw_max_tx_power; int hw_min_tx_power; } ;
struct wmi_svc_rdy_ev_arg {int service_map_len; struct wlan_host_mem_req const* service_map; int num_mem_reqs; int high_5ghz_chan; int low_5ghz_chan; int eeprom_rd; int num_rf_chains; int phy_capab; int fw_build; int sw_ver1; int sw_ver0; int vht_cap; int ht_cap; int max_tx_power; int min_tx_power; struct wlan_host_mem_req* mem_reqs; struct wlan_host_mem_req* svc_bmap; struct hal_reg_capabilities* reg; struct wmi_tlv_svc_rdy_ev* ev; } ;
struct wlan_host_mem_req {int dummy; } ;
struct sk_buff {int len; struct wlan_host_mem_req const* data; } ;
struct hal_reg_capabilities {int high_5ghz_chan; int low_5ghz_chan; int eeprom_rd; } ;
struct ath10k {int dummy; } ;
typedef struct wlan_host_mem_req __le32 ;


 int ATH10K_DBG_WMI ;
 int ENOTSUPP ;
 int EPROTO ;
 scalar_t__ WMI_TLV_ABI_VER0 ;
 scalar_t__ WMI_TLV_ABI_VER_NS0 ;
 scalar_t__ WMI_TLV_ABI_VER_NS1 ;
 scalar_t__ WMI_TLV_ABI_VER_NS2 ;
 scalar_t__ WMI_TLV_ABI_VER_NS3 ;
 scalar_t__ __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_tlv_iter (struct ath10k*,struct wlan_host_mem_req const*,int ,int ,struct wmi_tlv_svc_rdy_parse*) ;
 int ath10k_wmi_tlv_len (struct wlan_host_mem_req const*) ;
 int ath10k_wmi_tlv_parse_mem_reqs ;
 int ath10k_wmi_tlv_svc_rdy_parse ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_svc_rdy_ev(struct ath10k *ar,
          struct sk_buff *skb,
          struct wmi_svc_rdy_ev_arg *arg)
{
 const struct hal_reg_capabilities *reg;
 const struct wmi_tlv_svc_rdy_ev *ev;
 const __le32 *svc_bmap;
 const struct wlan_host_mem_req *mem_reqs;
 struct wmi_tlv_svc_rdy_parse svc_rdy = { };
 int ret;

 ret = ath10k_wmi_tlv_iter(ar, skb->data, skb->len,
      ath10k_wmi_tlv_svc_rdy_parse, &svc_rdy);
 if (ret) {
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = svc_rdy.ev;
 reg = svc_rdy.reg;
 svc_bmap = svc_rdy.svc_bmap;
 mem_reqs = svc_rdy.mem_reqs;

 if (!ev || !reg || !svc_bmap || !mem_reqs)
  return -EPROTO;




 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi tlv abi 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x\n",
     __le32_to_cpu(ev->abi.abi_ver0), WMI_TLV_ABI_VER0,
     __le32_to_cpu(ev->abi.abi_ver_ns0), WMI_TLV_ABI_VER_NS0,
     __le32_to_cpu(ev->abi.abi_ver_ns1), WMI_TLV_ABI_VER_NS1,
     __le32_to_cpu(ev->abi.abi_ver_ns2), WMI_TLV_ABI_VER_NS2,
     __le32_to_cpu(ev->abi.abi_ver_ns3), WMI_TLV_ABI_VER_NS3);

 if (__le32_to_cpu(ev->abi.abi_ver0) != WMI_TLV_ABI_VER0 ||
     __le32_to_cpu(ev->abi.abi_ver_ns0) != WMI_TLV_ABI_VER_NS0 ||
     __le32_to_cpu(ev->abi.abi_ver_ns1) != WMI_TLV_ABI_VER_NS1 ||
     __le32_to_cpu(ev->abi.abi_ver_ns2) != WMI_TLV_ABI_VER_NS2 ||
     __le32_to_cpu(ev->abi.abi_ver_ns3) != WMI_TLV_ABI_VER_NS3) {
  return -ENOTSUPP;
 }

 arg->min_tx_power = ev->hw_min_tx_power;
 arg->max_tx_power = ev->hw_max_tx_power;
 arg->ht_cap = ev->ht_cap_info;
 arg->vht_cap = ev->vht_cap_info;
 arg->sw_ver0 = ev->abi.abi_ver0;
 arg->sw_ver1 = ev->abi.abi_ver1;
 arg->fw_build = ev->fw_build_vers;
 arg->phy_capab = ev->phy_capability;
 arg->num_rf_chains = ev->num_rf_chains;
 arg->eeprom_rd = reg->eeprom_rd;
 arg->low_5ghz_chan = reg->low_5ghz_chan;
 arg->high_5ghz_chan = reg->high_5ghz_chan;
 arg->num_mem_reqs = ev->num_mem_reqs;
 arg->service_map = svc_bmap;
 arg->service_map_len = ath10k_wmi_tlv_len(svc_bmap);

 ret = ath10k_wmi_tlv_iter(ar, mem_reqs, ath10k_wmi_tlv_len(mem_reqs),
      ath10k_wmi_tlv_parse_mem_reqs, arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse mem_reqs tlv: %d\n", ret);
  return ret;
 }

 return 0;
}
