
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scifmsg {int * payload; int src; int uop; } ;
struct scif_window {scalar_t__ magic; int peer_window; int list; int ref_count; scalar_t__ ep; } ;
struct scif_range {int nr_pages; int va; int phys_addr; struct scif_window* cookie; } ;
struct TYPE_3__ {int rma_lock; int dma_chan; } ;
struct scif_endpt {scalar_t__ state; TYPE_1__ rma_info; TYPE_2__* remote_dev; int port; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int sdev; } ;


 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ SCIFEP_CONNECTED ;
 scalar_t__ SCIFEP_DISCONNECTED ;
 scalar_t__ SCIFEP_MAGIC ;
 int SCIF_MUNMAP ;
 int kfree (struct scif_range*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scif_destroy_remote_window (struct scif_window*) ;
 int scif_drain_dma_intr (int ,int ) ;
 int scif_free (int ,int) ;
 int scif_nodeqp_send (TYPE_2__*,struct scifmsg*) ;
 int scif_put_window (struct scif_window*,int) ;

int scif_put_pages(struct scif_range *pages)
{
 struct scif_endpt *ep;
 struct scif_window *window;
 struct scifmsg msg;

 if (!pages || !pages->cookie)
  return -EINVAL;

 window = pages->cookie;

 if (!window || window->magic != SCIFEP_MAGIC)
  return -EINVAL;

 ep = (struct scif_endpt *)window->ep;






 if (ep->state != SCIFEP_CONNECTED && ep->state != SCIFEP_DISCONNECTED)
  return -ENOTCONN;

 mutex_lock(&ep->rma_info.rma_lock);

 scif_put_window(window, pages->nr_pages);


 if (!window->ref_count) {
  list_del(&window->list);
  mutex_unlock(&ep->rma_info.rma_lock);
  scif_drain_dma_intr(ep->remote_dev->sdev,
        ep->rma_info.dma_chan);

  msg.uop = SCIF_MUNMAP;
  msg.src = ep->port;
  msg.payload[0] = window->peer_window;

  scif_nodeqp_send(ep->remote_dev, &msg);

  scif_destroy_remote_window(window);
 } else {
  mutex_unlock(&ep->rma_info.rma_lock);
 }

 scif_free(pages->phys_addr, pages->nr_pages * sizeof(dma_addr_t));
 scif_free(pages->va, pages->nr_pages * sizeof(void *));
 kfree(pages);
 return 0;
}
