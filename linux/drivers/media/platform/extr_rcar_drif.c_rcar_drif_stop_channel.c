
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif {int dmach; } ;


 int RCAR_DRIF_SIIER ;
 int dmaengine_terminate_sync (int ) ;
 int rcar_drif_write (struct rcar_drif*,int ,int) ;

__attribute__((used)) static void rcar_drif_stop_channel(struct rcar_drif *ch)
{

 rcar_drif_write(ch, RCAR_DRIF_SIIER, 0x00000000);


 dmaengine_terminate_sync(ch->dmach);
}
