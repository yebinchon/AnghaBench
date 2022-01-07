
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {scalar_t__ indirect; } ;


 int MR_IND ;
 int MR_PB ;
 int MR_RST ;
 int MR_WDF (int) ;
 int W5300_IMR ;
 int W5300_MR ;
 int W5300_MTYPE ;
 int W5300_RMSRH ;
 int W5300_RMSRL ;
 int W5300_TMSRH ;
 int W5300_TMSRL ;
 int mdelay (int) ;
 int w5300_write (struct w5300_priv*,int ,int) ;
 int w5300_write32 (struct w5300_priv*,int ,int) ;
 int w5300_write_direct (struct w5300_priv*,int ,int) ;
 int w5300_write_macaddr (struct w5300_priv*) ;

__attribute__((used)) static void w5300_hw_reset(struct w5300_priv *priv)
{
 w5300_write_direct(priv, W5300_MR, MR_RST);
 mdelay(5);
 w5300_write_direct(priv, W5300_MR, priv->indirect ?
     MR_WDF(7) | MR_PB | MR_IND :
     MR_WDF(7) | MR_PB);
 w5300_write(priv, W5300_IMR, 0);
 w5300_write_macaddr(priv);




 w5300_write32(priv, W5300_RMSRL, 64 << 24);
 w5300_write32(priv, W5300_RMSRH, 0);
 w5300_write32(priv, W5300_TMSRL, 64 << 24);
 w5300_write32(priv, W5300_TMSRH, 0);
 w5300_write(priv, W5300_MTYPE, 0x00ff);
}
