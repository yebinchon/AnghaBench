
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma; scalar_t__ addr; int sgt; } ;
struct TYPE_3__ {int size; } ;
struct ispccdc_lsc_config_req {TYPE_2__ table; TYPE_1__ config; } ;
struct isp_device {int dev; } ;
struct isp_ccdc_device {int dummy; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int kfree (struct ispccdc_lsc_config_req*) ;
 int sg_free_table (int *) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_lsc_free_request(struct isp_ccdc_device *ccdc,
      struct ispccdc_lsc_config_req *req)
{
 struct isp_device *isp = to_isp_device(ccdc);

 if (req == ((void*)0))
  return;

 if (req->table.addr) {
  sg_free_table(&req->table.sgt);
  dma_free_coherent(isp->dev, req->config.size, req->table.addr,
      req->table.dma);
 }

 kfree(req);
}
