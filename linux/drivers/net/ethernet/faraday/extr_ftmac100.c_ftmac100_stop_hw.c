
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {scalar_t__ base; } ;


 scalar_t__ FTMAC100_OFFSET_MACCR ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ftmac100_stop_hw(struct ftmac100 *priv)
{
 iowrite32(0, priv->base + FTMAC100_OFFSET_MACCR);
}
