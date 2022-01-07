
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {struct ofdpa_port* wpriv; } ;
struct rocker {int dummy; } ;
struct ofdpa_port {int dummy; } ;
struct net_device {int dummy; } ;


 struct rocker_port* rocker_port_dev_lower_find (struct net_device*,struct rocker*) ;

__attribute__((used)) static struct ofdpa_port *ofdpa_port_dev_lower_find(struct net_device *dev,
          struct rocker *rocker)
{
 struct rocker_port *rocker_port;

 rocker_port = rocker_port_dev_lower_find(dev, rocker);
 return rocker_port ? rocker_port->wpriv : ((void*)0);
}
