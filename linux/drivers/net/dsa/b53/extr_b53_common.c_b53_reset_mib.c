
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int B53_GLOBAL_CONFIG ;
 int B53_MGMT_PAGE ;
 int GC_RESET_MIB ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void b53_reset_mib(struct b53_device *priv)
{
 u8 gc;

 b53_read8(priv, B53_MGMT_PAGE, B53_GLOBAL_CONFIG, &gc);

 b53_write8(priv, B53_MGMT_PAGE, B53_GLOBAL_CONFIG, gc | GC_RESET_MIB);
 msleep(1);
 b53_write8(priv, B53_MGMT_PAGE, B53_GLOBAL_CONFIG, gc & ~GC_RESET_MIB);
 msleep(1);
}
