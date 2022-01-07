
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int msgs; int pg_num_tcs_supported; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;


 int CXGB4_DCB_FW_PGRATE ;


 int EINVAL ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static int cxgb4_getnumtcs(struct net_device *dev, int tcs_id, u8 *num)
{
 struct port_info *pi = netdev2pinfo(dev);

 switch (tcs_id) {
 case 128:
  if (pi->dcb.msgs & CXGB4_DCB_FW_PGRATE)
   *num = pi->dcb.pg_num_tcs_supported;
  else
   *num = 0x8;
  break;

 case 129:
  *num = 0x8;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
