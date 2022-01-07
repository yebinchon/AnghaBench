
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_ethhdr {scalar_t__ h_vlan_proto; int h_vlan_encapsulated_proto; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_proto; } ;


 int ETH_DATA_LEN ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_ZLEN ;
 int VLAN_HLEN ;
 scalar_t__ htons (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int nv_getlen(struct net_device *dev, void *packet, int datalen)
{
 int hdrlen;
 int protolen;


 if (((struct vlan_ethhdr *)packet)->h_vlan_proto == htons(ETH_P_8021Q)) {
  protolen = ntohs(((struct vlan_ethhdr *)packet)->h_vlan_encapsulated_proto);
  hdrlen = VLAN_HLEN;
 } else {
  protolen = ntohs(((struct ethhdr *)packet)->h_proto);
  hdrlen = ETH_HLEN;
 }
 if (protolen > ETH_DATA_LEN)
  return datalen;

 protolen += hdrlen;

 if (datalen > ETH_ZLEN) {
  if (datalen >= protolen) {



   return protolen;
  } else {



   return -1;
  }
 } else {

  if (protolen > ETH_ZLEN) {
   return -1;
  }
  return datalen;
 }
}
