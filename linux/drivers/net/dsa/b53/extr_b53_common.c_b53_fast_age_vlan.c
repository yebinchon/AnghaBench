
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_FAST_AGE_VID_CTRL ;
 int FAST_AGE_VLAN ;
 int b53_flush_arl (struct b53_device*,int ) ;
 int b53_write16 (struct b53_device*,int ,int ,int ) ;

__attribute__((used)) static int b53_fast_age_vlan(struct b53_device *dev, u16 vid)
{
 b53_write16(dev, B53_CTRL_PAGE, B53_FAST_AGE_VID_CTRL, vid);

 return b53_flush_arl(dev, FAST_AGE_VLAN);
}
