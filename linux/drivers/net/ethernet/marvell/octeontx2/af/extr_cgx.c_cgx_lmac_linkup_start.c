
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgx {int cgx_cmd_work; int cgx_cmd_workq; } ;


 int ENODEV ;
 int queue_work (int ,int *) ;

int cgx_lmac_linkup_start(void *cgxd)
{
 struct cgx *cgx = cgxd;

 if (!cgx)
  return -ENODEV;

 queue_work(cgx->cgx_cmd_workq, &cgx->cgx_cmd_work);

 return 0;
}
