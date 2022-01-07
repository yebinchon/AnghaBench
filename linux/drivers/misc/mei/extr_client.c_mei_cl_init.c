
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {struct mei_device* dev; int state; int writing_state; int link; int rd_pending; int rd_completed; int ev_wait; int tx_wait; int rx_wait; int wait; } ;


 int INIT_LIST_HEAD (int *) ;
 int MEI_FILE_UNINITIALIZED ;
 int MEI_IDLE ;
 int init_waitqueue_head (int *) ;
 int memset (struct mei_cl*,int ,int) ;

__attribute__((used)) static void mei_cl_init(struct mei_cl *cl, struct mei_device *dev)
{
 memset(cl, 0, sizeof(struct mei_cl));
 init_waitqueue_head(&cl->wait);
 init_waitqueue_head(&cl->rx_wait);
 init_waitqueue_head(&cl->tx_wait);
 init_waitqueue_head(&cl->ev_wait);
 INIT_LIST_HEAD(&cl->rd_completed);
 INIT_LIST_HEAD(&cl->rd_pending);
 INIT_LIST_HEAD(&cl->link);
 cl->writing_state = MEI_IDLE;
 cl->state = MEI_FILE_UNINITIALIZED;
 cl->dev = dev;
}
