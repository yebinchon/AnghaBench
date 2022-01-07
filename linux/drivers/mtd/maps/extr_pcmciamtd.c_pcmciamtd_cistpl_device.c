
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tuple_t ;
struct TYPE_6__ {int size; } ;
struct pcmciamtd_dev {TYPE_1__ pcmcia_map; } ;
struct pcmcia_device {int dummy; } ;
struct TYPE_8__ {int ndev; TYPE_2__* dev; } ;
typedef TYPE_3__ cistpl_device_t ;
struct TYPE_9__ {TYPE_3__ device; } ;
typedef TYPE_4__ cisparse_t ;
struct TYPE_7__ {int size; int speed; int wp; int type; } ;


 int EINVAL ;
 scalar_t__ pcmcia_parse_tuple (int *,TYPE_4__*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int pcmciamtd_cistpl_device(struct pcmcia_device *p_dev,
    tuple_t *tuple,
    void *priv_data)
{
 struct pcmciamtd_dev *dev = priv_data;
 cisparse_t parse;
 cistpl_device_t *t = &parse.device;
 int i;

 if (pcmcia_parse_tuple(tuple, &parse))
  return -EINVAL;

 pr_debug("Common memory:\n");
 dev->pcmcia_map.size = t->dev[0].size;

 for (i = 0; i < t->ndev; i++) {
  pr_debug("Region %d, type = %u\n", i, t->dev[i].type);
  pr_debug("Region %d, wp = %u\n", i, t->dev[i].wp);
  pr_debug("Region %d, speed = %u ns\n", i, t->dev[i].speed);
  pr_debug("Region %d, size = %u bytes\n", i, t->dev[i].size);
 }
 return 0;
}
