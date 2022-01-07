
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_port {int flags; TYPE_1__* app; } ;
struct nfp_pf {int port_refresh_work; int wq; } ;
struct TYPE_2__ {struct nfp_pf* pf; } ;


 int NFP_PORT_CHANGED ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

void nfp_net_refresh_port_table(struct nfp_port *port)
{
 struct nfp_pf *pf = port->app->pf;

 set_bit(NFP_PORT_CHANGED, &port->flags);

 queue_work(pf->wq, &pf->port_refresh_work);
}
