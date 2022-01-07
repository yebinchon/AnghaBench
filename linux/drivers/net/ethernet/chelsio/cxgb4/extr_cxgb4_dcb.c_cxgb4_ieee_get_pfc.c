
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_dcb_info {int msgs; int pfcen; int pfc_num_tcs_supported; } ;
struct port_info {struct port_dcb_info dcb; } ;
struct net_device {int dummy; } ;
struct ieee_pfc {int pfc_en; int pfc_cap; } ;


 int CXGB4_DCB_FW_PFC ;
 int bitswap_1 (int ) ;
 int memset (struct ieee_pfc*,int ,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static int cxgb4_ieee_get_pfc(struct net_device *dev, struct ieee_pfc *pfc)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct port_dcb_info *dcb = &pi->dcb;

 memset(pfc, 0, sizeof(struct ieee_pfc));

 if (!(dcb->msgs & CXGB4_DCB_FW_PFC))
  return 0;

 pfc->pfc_cap = dcb->pfc_num_tcs_supported;
 pfc->pfc_en = bitswap_1(dcb->pfcen);

 return 0;
}
