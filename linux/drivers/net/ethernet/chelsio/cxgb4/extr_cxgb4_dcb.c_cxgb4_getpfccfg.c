
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct port_dcb_info {int pfcen; int state; } ;
struct port_info {struct port_dcb_info dcb; } ;
struct net_device {int dummy; } ;


 int CXGB4_MAX_PRIORITY ;
 int cxgb4_dcb_state_synced (int ) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static void cxgb4_getpfccfg(struct net_device *dev, int priority, u8 *pfccfg)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct port_dcb_info *dcb = &pi->dcb;

 if (!cxgb4_dcb_state_synced(dcb->state) ||
     priority >= CXGB4_MAX_PRIORITY)
  *pfccfg = 0;
 else
  *pfccfg = (pi->dcb.pfcen >> (7 - priority)) & 1;
}
