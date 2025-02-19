
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int DBGPR (char*) ;
 int DMA_MR ;
 int EBUSY ;
 int SWR ;
 scalar_t__ XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __xgbe_exit(struct xgbe_prv_data *pdata)
{
 unsigned int count = 2000;

 DBGPR("-->xgbe_exit\n");


 XGMAC_IOWRITE_BITS(pdata, DMA_MR, SWR, 1);
 usleep_range(10, 15);


 while (--count && XGMAC_IOREAD_BITS(pdata, DMA_MR, SWR))
  usleep_range(500, 600);

 if (!count)
  return -EBUSY;

 DBGPR("<--xgbe_exit\n");

 return 0;
}
