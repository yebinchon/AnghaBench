
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netup_unidvb_dev {int * dma; } ;


 int netup_unidvb_dma_enable (int *,int ) ;
 int netup_unidvb_dma_fini (struct netup_unidvb_dev*,int ) ;
 int netup_unidvb_dma_init (struct netup_unidvb_dev*,int) ;

__attribute__((used)) static int netup_unidvb_dma_setup(struct netup_unidvb_dev *ndev)
{
 int res;

 res = netup_unidvb_dma_init(ndev, 0);
 if (res)
  return res;
 res = netup_unidvb_dma_init(ndev, 1);
 if (res) {
  netup_unidvb_dma_fini(ndev, 0);
  return res;
 }
 netup_unidvb_dma_enable(&ndev->dma[0], 0);
 netup_unidvb_dma_enable(&ndev->dma[1], 0);
 return 0;
}
