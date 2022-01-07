
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mvpp2_port {struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; } ;


 int mvpp2_prs_hw_inv (struct mvpp2*,int) ;
 int mvpp2_prs_vid_range_find (struct mvpp2_port*,int ,int) ;

void mvpp2_prs_vid_entry_remove(struct mvpp2_port *port, u16 vid)
{
 struct mvpp2 *priv = port->priv;
 int tid;


 tid = mvpp2_prs_vid_range_find(port, vid, 0xfff);


 if (tid < 0)
  return;

 mvpp2_prs_hw_inv(priv, tid);
 priv->prs_shadow[tid].valid = 0;
}
