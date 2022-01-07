
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {scalar_t__ base; } ;


 scalar_t__ FTMAC100_OFFSET_IMR ;
 int INT_MASK_ALL_ENABLED ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ftmac100_enable_all_int(struct ftmac100 *priv)
{
 iowrite32(INT_MASK_ALL_ENABLED, priv->base + FTMAC100_OFFSET_IMR);
}
