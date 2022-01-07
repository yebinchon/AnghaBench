
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct rcar_drif {TYPE_1__* buf; } ;
struct TYPE_2__ {int status; } ;


 int RCAR_DRIF_BUF_DONE ;
 int RCAR_DRIF_BUF_OVERFLOW ;
 size_t RCAR_DRIF_RFOVF ;
 int RCAR_DRIF_SISTR ;
 size_t rcar_drif_read (struct rcar_drif*,int ) ;
 int rcar_drif_write (struct rcar_drif*,int ,size_t) ;
 scalar_t__ unlikely (size_t) ;

__attribute__((used)) static void rcar_drif_channel_complete(struct rcar_drif *ch, u32 idx)
{
 u32 str;

 ch->buf[idx].status |= RCAR_DRIF_BUF_DONE;


 str = rcar_drif_read(ch, RCAR_DRIF_SISTR);
 if (unlikely(str & RCAR_DRIF_RFOVF)) {

  rcar_drif_write(ch, RCAR_DRIF_SISTR, str);


  ch->buf[idx].status |= RCAR_DRIF_BUF_OVERFLOW;
 }
}
