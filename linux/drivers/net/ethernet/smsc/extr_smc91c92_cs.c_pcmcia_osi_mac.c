
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TupleDataLen; int* TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct pcmcia_device {int dummy; } ;
struct net_device {int* dev_addr; } ;


 int EINVAL ;

__attribute__((used)) static int pcmcia_osi_mac(struct pcmcia_device *p_dev,
     tuple_t *tuple,
     void *priv)
{
 struct net_device *dev = priv;
 int i;

 if (tuple->TupleDataLen < 8)
  return -EINVAL;
 if (tuple->TupleData[0] != 0x04)
  return -EINVAL;
 for (i = 0; i < 6; i++)
  dev->dev_addr[i] = tuple->TupleData[i+2];
 return 0;
}
