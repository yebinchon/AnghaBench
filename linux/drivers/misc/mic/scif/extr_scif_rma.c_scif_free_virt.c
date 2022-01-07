
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__* payload; } ;
struct scif_window {int dummy; } ;
struct scif_dev {int dummy; } ;


 int scif_destroy_remote_window (struct scif_window*) ;

void scif_free_virt(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_window *window = (struct scif_window *)msg->payload[1];

 scif_destroy_remote_window(window);
}
