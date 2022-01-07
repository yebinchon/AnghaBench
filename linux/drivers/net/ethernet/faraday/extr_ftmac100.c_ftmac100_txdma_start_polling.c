
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {scalar_t__ base; } ;


 scalar_t__ FTMAC100_OFFSET_TXPD ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ftmac100_txdma_start_polling(struct ftmac100 *priv)
{
 iowrite32(1, priv->base + FTMAC100_OFFSET_TXPD);
}
