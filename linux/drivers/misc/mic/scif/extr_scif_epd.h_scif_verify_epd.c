
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {scalar_t__ state; } ;


 int ECONNRESET ;
 int ENODEV ;
 int ENOTCONN ;
 scalar_t__ SCIFEP_CONNECTED ;
 scalar_t__ SCIFEP_DISCONNECTED ;
 int scifdev_alive (struct scif_endpt*) ;

__attribute__((used)) static inline int scif_verify_epd(struct scif_endpt *ep)
{
 if (ep->state == SCIFEP_DISCONNECTED)
  return -ECONNRESET;

 if (ep->state != SCIFEP_CONNECTED)
  return -ENOTCONN;

 if (!scifdev_alive(ep))
  return -ENODEV;

 return 0;
}
