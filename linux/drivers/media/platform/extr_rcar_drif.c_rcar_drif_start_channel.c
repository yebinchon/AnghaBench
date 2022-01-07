
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_drif_sdr {int dummy; } ;
struct rcar_drif {int num; scalar_t__ base; struct rcar_drif_sdr* sdr; } ;


 int RCAR_DRIF_REOF ;
 int RCAR_DRIF_RFFUL ;
 int RCAR_DRIF_RFOVF ;
 int RCAR_DRIF_RFSERR ;
 int RCAR_DRIF_RFUDF ;
 scalar_t__ RCAR_DRIF_SICTR ;
 int RCAR_DRIF_SICTR_RESET ;
 scalar_t__ RCAR_DRIF_SIIER ;
 scalar_t__ RCAR_DRIF_SISTR ;
 int rcar_drif_qbuf (struct rcar_drif*) ;
 int rcar_drif_read (struct rcar_drif*,scalar_t__) ;
 int rcar_drif_write (struct rcar_drif*,scalar_t__,int) ;
 int rdrif_err (struct rcar_drif_sdr*,char*,int ,int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int rcar_drif_start_channel(struct rcar_drif *ch)
{
 struct rcar_drif_sdr *sdr = ch->sdr;
 u32 ctr, str;
 int ret;


 rcar_drif_write(ch, RCAR_DRIF_SICTR, RCAR_DRIF_SICTR_RESET);
 ret = readl_poll_timeout(ch->base + RCAR_DRIF_SICTR, ctr,
     !(ctr & RCAR_DRIF_SICTR_RESET), 7, 100000);
 if (ret) {
  rdrif_err(sdr, "ch%u: failed to reset rx. ctr 0x%08x\n",
     ch->num, rcar_drif_read(ch, RCAR_DRIF_SICTR));
  return ret;
 }


 ret = rcar_drif_qbuf(ch);
 if (ret)
  return ret;


 str = RCAR_DRIF_RFFUL | RCAR_DRIF_REOF | RCAR_DRIF_RFSERR |
  RCAR_DRIF_RFUDF | RCAR_DRIF_RFOVF;
 rcar_drif_write(ch, RCAR_DRIF_SISTR, str);


 rcar_drif_write(ch, RCAR_DRIF_SIIER, 0x00009000);

 return ret;
}
