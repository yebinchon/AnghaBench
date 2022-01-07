
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgx {int lmac_count; } ;


 int ENODEV ;

int cgx_get_lmac_cnt(void *cgxd)
{
 struct cgx *cgx = cgxd;

 if (!cgx)
  return -ENODEV;

 return cgx->lmac_count;
}
