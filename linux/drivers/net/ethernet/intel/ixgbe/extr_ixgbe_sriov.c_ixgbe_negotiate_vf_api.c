
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ixgbe_adapter {TYPE_1__* vfinfo; } ;
struct TYPE_2__ {int vf_api; } ;


 int drv ;
 int e_info (int ,char*,size_t,int) ;






__attribute__((used)) static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
      u32 *msgbuf, u32 vf)
{
 int api = msgbuf[1];

 switch (api) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  adapter->vfinfo[vf].vf_api = api;
  return 0;
 default:
  break;
 }

 e_info(drv, "VF %d requested invalid api version %u\n", vf, api);

 return -1;
}
