
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfv_info {int vq_tx; } ;


 int cfv_release_used_buf (int ) ;

__attribute__((used)) static void cfv_tx_release_tasklet(unsigned long drv)
{
 struct cfv_info *cfv = (struct cfv_info *)drv;
 cfv_release_used_buf(cfv->vq_tx);
}
