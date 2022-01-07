
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* net; } ;
struct TYPE_3__ {int upper; } ;
struct TYPE_4__ {TYPE_1__ adj_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static bool qmimux_has_slaves(struct usbnet *dev)
{
 return !list_empty(&dev->net->adj_list.upper);
}
