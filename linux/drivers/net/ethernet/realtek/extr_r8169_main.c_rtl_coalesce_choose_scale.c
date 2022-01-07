
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_coalesce_scale {int * nsecs; } ;
struct rtl_coalesce_info {struct rtl_coalesce_scale const* scalev; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 struct rtl_coalesce_scale const* ERR_CAST (struct rtl_coalesce_info const*) ;
 struct rtl_coalesce_scale const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct rtl_coalesce_info const*) ;
 int RTL_COALESCE_T_MAX ;
 int max (int ,int ) ;
 struct rtl_coalesce_info* rtl_coalesce_info (struct net_device*) ;

__attribute__((used)) static const struct rtl_coalesce_scale *rtl_coalesce_choose_scale(
   struct net_device *dev, u32 nsec, u16 *cp01)
{
 const struct rtl_coalesce_info *ci;
 u16 i;

 ci = rtl_coalesce_info(dev);
 if (IS_ERR(ci))
  return ERR_CAST(ci);

 for (i = 0; i < 4; i++) {
  u32 rxtx_maxscale = max(ci->scalev[i].nsecs[0],
     ci->scalev[i].nsecs[1]);
  if (nsec <= rxtx_maxscale * RTL_COALESCE_T_MAX) {
   *cp01 = i;
   return &ci->scalev[i];
  }
 }

 return ERR_PTR(-EINVAL);
}
