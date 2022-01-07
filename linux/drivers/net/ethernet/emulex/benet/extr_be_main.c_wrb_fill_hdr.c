
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct be_wrb_params {int features; int vlan_tag; int lso_mss; } ;
struct be_eth_hdr_wrb {int dummy; } ;
struct be_adapter {int dummy; } ;


 int BE_WRB_F_GET (int ,int ) ;
 int CRC ;
 int IPCS ;
 int LSO ;
 int LSO6 ;
 int OS2BMC ;
 int SET_TX_WRB_HDR_BITS (int ,struct be_eth_hdr_wrb*,int ) ;
 int TCPCS ;
 int UDPCS ;
 int VLAN ;
 int VLAN_SKIP_HW ;
 int crc ;
 int event ;
 int ipcs ;
 int len ;
 int lso ;
 int lso6 ;
 int lso_mss ;
 int memset (struct be_eth_hdr_wrb*,int ,int) ;
 int mgmt ;
 int num_wrb ;
 int skb_wrb_cnt (struct sk_buff*) ;
 int tcpcs ;
 int udpcs ;
 int vlan ;
 int vlan_tag ;

__attribute__((used)) static void wrb_fill_hdr(struct be_adapter *adapter,
    struct be_eth_hdr_wrb *hdr,
    struct be_wrb_params *wrb_params,
    struct sk_buff *skb)
{
 memset(hdr, 0, sizeof(*hdr));

 SET_TX_WRB_HDR_BITS(crc, hdr,
       BE_WRB_F_GET(wrb_params->features, CRC));
 SET_TX_WRB_HDR_BITS(ipcs, hdr,
       BE_WRB_F_GET(wrb_params->features, IPCS));
 SET_TX_WRB_HDR_BITS(tcpcs, hdr,
       BE_WRB_F_GET(wrb_params->features, TCPCS));
 SET_TX_WRB_HDR_BITS(udpcs, hdr,
       BE_WRB_F_GET(wrb_params->features, UDPCS));

 SET_TX_WRB_HDR_BITS(lso, hdr,
       BE_WRB_F_GET(wrb_params->features, LSO));
 SET_TX_WRB_HDR_BITS(lso6, hdr,
       BE_WRB_F_GET(wrb_params->features, LSO6));
 SET_TX_WRB_HDR_BITS(lso_mss, hdr, wrb_params->lso_mss);




 SET_TX_WRB_HDR_BITS(event, hdr,
       BE_WRB_F_GET(wrb_params->features, VLAN_SKIP_HW));
 SET_TX_WRB_HDR_BITS(vlan, hdr,
       BE_WRB_F_GET(wrb_params->features, VLAN));
 SET_TX_WRB_HDR_BITS(vlan_tag, hdr, wrb_params->vlan_tag);

 SET_TX_WRB_HDR_BITS(num_wrb, hdr, skb_wrb_cnt(skb));
 SET_TX_WRB_HDR_BITS(len, hdr, skb->len);
 SET_TX_WRB_HDR_BITS(mgmt, hdr,
       BE_WRB_F_GET(wrb_params->features, OS2BMC));
}
