
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int SVCMAP (int ,int ,int ) ;
 int WMI_SERVICE_SPOOF_MAC_SUPPORT ;
 int WMI_SERVICE_THERM_THROT ;
 int WMI_SERVICE_TX_DATA_ACK_RSSI ;
 int WMI_TLV_MAX_SERVICE ;
 int WMI_TLV_SERVICE_SPOOF_MAC_SUPPORT ;
 int WMI_TLV_SERVICE_THERM_THROT ;
 int WMI_TLV_SERVICE_TX_DATA_MGMT_ACK_RSSI ;

__attribute__((used)) static inline void
wmi_tlv_svc_map_ext(const __le32 *in, unsigned long *out, size_t len)
{
 SVCMAP(WMI_TLV_SERVICE_SPOOF_MAC_SUPPORT,
        WMI_SERVICE_SPOOF_MAC_SUPPORT,
        WMI_TLV_MAX_SERVICE);
 SVCMAP(WMI_TLV_SERVICE_THERM_THROT,
        WMI_SERVICE_THERM_THROT,
        WMI_TLV_MAX_SERVICE);
 SVCMAP(WMI_TLV_SERVICE_TX_DATA_MGMT_ACK_RSSI,
        WMI_SERVICE_TX_DATA_ACK_RSSI, WMI_TLV_MAX_SERVICE);
}
