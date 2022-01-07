
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int ETH_ALEN ;
 int RNDIS_OID_802_11_BSSID ;
 int eth_zero_addr (int *) ;
 int rndis_query_oid (struct usbnet*,int ,int *,int*) ;

__attribute__((used)) static int get_bssid(struct usbnet *usbdev, u8 bssid[ETH_ALEN])
{
 int ret, len;

 len = ETH_ALEN;
 ret = rndis_query_oid(usbdev, RNDIS_OID_802_11_BSSID,
         bssid, &len);

 if (ret != 0)
  eth_zero_addr(bssid);

 return ret;
}
