
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ DCB_APP_IDTYPE_ETHTYPE ;
 int __cxgb4_getapp (struct net_device*,scalar_t__,int ,int ) ;

__attribute__((used)) static int cxgb4_getapp(struct net_device *dev, u8 app_idtype, u16 app_id)
{

 return __cxgb4_getapp(dev, app_idtype == DCB_APP_IDTYPE_ETHTYPE ?
         app_idtype : 3, app_id, 0);
}
