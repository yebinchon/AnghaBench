
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {int id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; } ;


 int MVPP2_PRS_VID_PORT_FIRST (int ) ;
 int MVPP2_PRS_VID_PORT_LAST (int ) ;
 int mvpp2_prs_hw_inv (struct mvpp2*,int) ;

void mvpp2_prs_vid_remove_all(struct mvpp2_port *port)
{
 struct mvpp2 *priv = port->priv;
 int tid;

 for (tid = MVPP2_PRS_VID_PORT_FIRST(port->id);
      tid <= MVPP2_PRS_VID_PORT_LAST(port->id); tid++) {
  if (priv->prs_shadow[tid].valid) {
   mvpp2_prs_hw_inv(priv, tid);
   priv->prs_shadow[tid].valid = 0;
  }
 }
}
