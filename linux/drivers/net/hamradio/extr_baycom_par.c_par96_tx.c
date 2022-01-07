
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct parport {TYPE_4__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int scram; } ;
struct TYPE_7__ {TYPE_2__ par96; } ;
struct baycom_state {TYPE_3__ modem; TYPE_1__* pdev; int hdrv; } ;
struct TYPE_8__ {int (* write_data ) (struct parport*,unsigned char) ;} ;
struct TYPE_5__ {struct parport* port; } ;


 unsigned char PAR96_BURST ;
 int PAR96_BURSTBITS ;
 int PAR96_SCRAM_TAP1 ;
 int PAR96_SCRAM_TAPN ;
 unsigned char PAR96_TXBIT ;
 unsigned char PAR97_POWER ;
 unsigned int hdlcdrv_getbits (int *) ;
 int stub1 (struct parport*,unsigned char) ;
 int stub2 (struct parport*,unsigned char) ;

__attribute__((used)) static inline void par96_tx(struct net_device *dev, struct baycom_state *bc)
{
 int i;
 unsigned int data = hdlcdrv_getbits(&bc->hdrv);
 struct parport *pp = bc->pdev->port;

 for(i = 0; i < PAR96_BURSTBITS; i++, data >>= 1) {
  unsigned char val = PAR97_POWER;
  bc->modem.par96.scram = ((bc->modem.par96.scram << 1) |
      (bc->modem.par96.scram & 1));
  if (!(data & 1))
   bc->modem.par96.scram ^= 1;
  if (bc->modem.par96.scram & (PAR96_SCRAM_TAP1 << 1))
   bc->modem.par96.scram ^=
    (PAR96_SCRAM_TAPN << 1);
  if (bc->modem.par96.scram & (PAR96_SCRAM_TAP1 << 2))
   val |= PAR96_TXBIT;
  pp->ops->write_data(pp, val);
  pp->ops->write_data(pp, val | PAR96_BURST);
 }
}
