
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_canfd_channel {int channel; int base; } ;


 int RCANFD_CCTR (int) ;
 int RCANFD_CCTR_ALIE ;
 int RCANFD_CCTR_BEIE ;
 int RCANFD_CCTR_BLIE ;
 int RCANFD_CCTR_BOEIE ;
 int RCANFD_CCTR_BORIE ;
 int RCANFD_CCTR_EPIE ;
 int RCANFD_CCTR_EWIE ;
 int RCANFD_CCTR_OLIE ;
 int RCANFD_CCTR_TAIE ;
 int RCANFD_CERFL (int) ;
 int rcar_canfd_set_bit (int ,int ,int) ;
 int rcar_canfd_write (int ,int ,int ) ;

__attribute__((used)) static void rcar_canfd_enable_channel_interrupts(struct rcar_canfd_channel
       *priv)
{
 u32 ctr, ch = priv->channel;


 rcar_canfd_write(priv->base, RCANFD_CERFL(ch), 0);


 ctr = (RCANFD_CCTR_TAIE |
        RCANFD_CCTR_ALIE | RCANFD_CCTR_BLIE |
        RCANFD_CCTR_OLIE | RCANFD_CCTR_BORIE |
        RCANFD_CCTR_BOEIE | RCANFD_CCTR_EPIE |
        RCANFD_CCTR_EWIE | RCANFD_CCTR_BEIE);
 rcar_canfd_set_bit(priv->base, RCANFD_CCTR(ch), ctr);
}
