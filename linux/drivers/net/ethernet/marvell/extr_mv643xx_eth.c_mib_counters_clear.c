
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int dummy; } ;


 int RX_DISCARD_FRAME_CNT ;
 int RX_OVERRUN_FRAME_CNT ;
 int mib_read (struct mv643xx_eth_private*,int) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static void mib_counters_clear(struct mv643xx_eth_private *mp)
{
 int i;

 for (i = 0; i < 0x80; i += 4)
  mib_read(mp, i);


 rdlp(mp, RX_DISCARD_FRAME_CNT);
 rdlp(mp, RX_OVERRUN_FRAME_CNT);
}
