
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {struct mvpp2* priv; int id; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; } ;


 unsigned int MVPP2_PRS_VID_PORT_DFLT (int ) ;
 int mvpp2_prs_hw_inv (struct mvpp2*,unsigned int) ;

void mvpp2_prs_vid_disable_filtering(struct mvpp2_port *port)
{
 unsigned int tid = MVPP2_PRS_VID_PORT_DFLT(port->id);
 struct mvpp2 *priv = port->priv;


 mvpp2_prs_hw_inv(priv, tid);

 priv->prs_shadow[tid].valid = 0;
}
