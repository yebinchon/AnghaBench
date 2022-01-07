
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* _init_airo_card (unsigned short,int,int,int *,struct device*) ;

struct net_device *init_airo_card( unsigned short irq, int port, int is_pcmcia,
      struct device *dmdev)
{
 return _init_airo_card ( irq, port, is_pcmcia, ((void*)0), dmdev);
}
