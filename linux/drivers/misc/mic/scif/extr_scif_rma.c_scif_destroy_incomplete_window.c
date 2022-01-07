
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct scifmsg {scalar_t__* payload; int src; int uop; } ;
struct scif_allocmsg {scalar_t__ state; scalar_t__ vaddr; int allocwq; } ;
struct scif_window {int nr_pages; struct scif_window* num_pages; struct scif_window* dma_addr; int offset; struct scif_allocmsg alloc_handle; } ;
struct TYPE_2__ {int rma_lock; } ;
struct scif_endpt {TYPE_1__ rma_info; int remote_dev; scalar_t__ remote_ep; int port; } ;


 scalar_t__ OP_COMPLETED ;
 scalar_t__ OP_IN_PROGRESS ;
 int SCIF_FREE_VIRT ;
 int SCIF_NODE_ALIVE_TIMEOUT ;
 scalar_t__ SCIF_REGISTER ;
 int _scif_nodeqp_send (int ,struct scifmsg*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scif_free (struct scif_window*,int) ;
 int scif_free_window_offset (struct scif_endpt*,struct scif_window*,int ) ;
 scalar_t__ scifdev_alive (struct scif_endpt*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void scif_destroy_incomplete_window(struct scif_endpt *ep,
        struct scif_window *window)
{
 int err;
 int nr_pages = window->nr_pages;
 struct scif_allocmsg *alloc = &window->alloc_handle;
 struct scifmsg msg;

retry:

 err = wait_event_timeout(alloc->allocwq,
     alloc->state != OP_IN_PROGRESS,
     SCIF_NODE_ALIVE_TIMEOUT);
 if (!err && scifdev_alive(ep))
  goto retry;

 mutex_lock(&ep->rma_info.rma_lock);
 if (alloc->state == OP_COMPLETED) {
  msg.uop = SCIF_FREE_VIRT;
  msg.src = ep->port;
  msg.payload[0] = ep->remote_ep;
  msg.payload[1] = window->alloc_handle.vaddr;
  msg.payload[2] = (u64)window;
  msg.payload[3] = SCIF_REGISTER;
  _scif_nodeqp_send(ep->remote_dev, &msg);
 }
 mutex_unlock(&ep->rma_info.rma_lock);

 scif_free_window_offset(ep, window, window->offset);
 scif_free(window->dma_addr, nr_pages * sizeof(*window->dma_addr));
 scif_free(window->num_pages, nr_pages * sizeof(*window->num_pages));
 scif_free(window, sizeof(*window));
}
