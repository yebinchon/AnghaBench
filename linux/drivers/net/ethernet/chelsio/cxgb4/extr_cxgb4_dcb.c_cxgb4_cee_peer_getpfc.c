
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pfc_num_tcs_supported; int pfcen; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;
struct cee_pfc {int tcs_supported; int pfc_en; } ;


 int DCB_NUMTCS_ATTR_PFC ;
 int bitswap_1 (int ) ;
 int cxgb4_getnumtcs (struct net_device*,int ,int *) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static int cxgb4_cee_peer_getpfc(struct net_device *dev, struct cee_pfc *pfc)
{
 struct port_info *pi = netdev2pinfo(dev);

 cxgb4_getnumtcs(dev, DCB_NUMTCS_ATTR_PFC, &(pfc->tcs_supported));





 pfc->pfc_en = bitswap_1(pi->dcb.pfcen);

 pfc->tcs_supported = pi->dcb.pfc_num_tcs_supported;

 return 0;
}
