
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {int u; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int islpci_private ;


 int IFNAMSIZ ;



 int OID_INL_PHYCAPABILITIES ;
 scalar_t__ PRV_STATE_INIT ;
 scalar_t__ islpci_get_state (int *) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;
 int strncpy (char*,char*,int ) ;

__attribute__((used)) static int
prism54_get_name(struct net_device *ndev, struct iw_request_info *info,
   char *cwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 char *capabilities;
 union oid_res_t r;
 int rvalue;

 if (islpci_get_state(priv) < PRV_STATE_INIT) {
  strncpy(cwrq, "NOT READY!", IFNAMSIZ);
  return 0;
 }
 rvalue = mgt_get_request(priv, OID_INL_PHYCAPABILITIES, 0, ((void*)0), &r);

 switch (r.u) {
 case 129:
  capabilities = "IEEE 802.11a/b/g";
  break;
 case 128:
  capabilities = "IEEE 802.11b/g - FAA Support";
  break;
 case 130:
 default:
  capabilities = "IEEE 802.11b/g";
  break;
 }
 strncpy(cwrq, capabilities, IFNAMSIZ);
 return rvalue;
}
