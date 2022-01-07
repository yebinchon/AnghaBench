
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scifmsg {scalar_t__* payload; int uop; } ;
struct scif_allocmsg {int allocwq; int state; } ;
struct scif_window {struct scif_allocmsg alloc_handle; scalar_t__ nr_pages; } ;
struct scif_endpt {int remote_dev; } ;


 int OP_IN_PROGRESS ;
 int SCIF_ALLOC_REQ ;
 int _scif_nodeqp_send (int ,struct scifmsg*) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static int scif_send_alloc_request(struct scif_endpt *ep,
       struct scif_window *window)
{
 struct scifmsg msg;
 struct scif_allocmsg *alloc = &window->alloc_handle;


 alloc->state = OP_IN_PROGRESS;
 init_waitqueue_head(&alloc->allocwq);


 msg.uop = SCIF_ALLOC_REQ;
 msg.payload[1] = window->nr_pages;
 msg.payload[2] = (u64)&window->alloc_handle;
 return _scif_nodeqp_send(ep->remote_dev, &msg);
}
