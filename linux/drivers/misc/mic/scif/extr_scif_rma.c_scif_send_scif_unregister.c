
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct scifmsg {scalar_t__* payload; int src; int uop; } ;
struct TYPE_2__ {scalar_t__ vaddr; } ;
struct scif_window {TYPE_1__ alloc_handle; } ;
struct scif_endpt {int remote_dev; int port; } ;


 int SCIF_UNREGISTER ;
 int scif_nodeqp_send (int ,struct scifmsg*) ;

__attribute__((used)) static int scif_send_scif_unregister(struct scif_endpt *ep,
         struct scif_window *window)
{
 struct scifmsg msg;

 msg.uop = SCIF_UNREGISTER;
 msg.src = ep->port;
 msg.payload[0] = window->alloc_handle.vaddr;
 msg.payload[1] = (u64)window;
 return scif_nodeqp_send(ep->remote_dev, &msg);
}
