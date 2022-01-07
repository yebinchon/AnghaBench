
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {int state; int conwq; } ;
typedef scalar_t__ scif_epd_t ;


 int SCIFEP_CLLISTEN ;

 int wake_up_interruptible (int *) ;

int __scif_flush(scif_epd_t epd)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;

 switch (ep->state) {
 case 128:
 {
  ep->state = SCIFEP_CLLISTEN;


  wake_up_interruptible(&ep->conwq);
  break;
 }
 default:
  break;
 }
 return 0;
}
