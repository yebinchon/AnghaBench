
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int window; scalar_t__ ioaddr; } ;


 scalar_t__ EL3_CMD ;
 scalar_t__ SelectWindow ;
 int iowrite16 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void window_set(struct vortex_private *vp, int window)
{
 if (window != vp->window) {
  iowrite16(SelectWindow + window, vp->ioaddr + EL3_CMD);
  vp->window = window;
 }
}
