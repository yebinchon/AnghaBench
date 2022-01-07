
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {int remote_dev; } ;


 int _scifdev_alive (int ) ;

__attribute__((used)) static inline int scifdev_alive(struct scif_endpt *ep)
{
 return _scifdev_alive(ep->remote_dev);
}
