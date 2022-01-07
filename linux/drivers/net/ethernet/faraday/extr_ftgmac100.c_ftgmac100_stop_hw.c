
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100 {scalar_t__ base; } ;


 scalar_t__ FTGMAC100_OFFSET_MACCR ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ftgmac100_stop_hw(struct ftgmac100 *priv)
{
 iowrite32(0, priv->base + FTGMAC100_OFFSET_MACCR);
}
