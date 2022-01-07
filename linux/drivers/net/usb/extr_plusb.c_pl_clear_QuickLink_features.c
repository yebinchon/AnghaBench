
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int pl_vendor_req (struct usbnet*,int,int ,int ) ;

__attribute__((used)) static inline int
pl_clear_QuickLink_features(struct usbnet *dev, int val)
{
 return pl_vendor_req(dev, 1, (u8) val, 0);
}
