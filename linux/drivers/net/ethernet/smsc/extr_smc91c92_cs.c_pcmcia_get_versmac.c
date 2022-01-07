
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int tuple_t ;
struct pcmcia_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* ofs; int ns; int * str; } ;
struct TYPE_5__ {TYPE_1__ version_1; } ;
typedef TYPE_2__ cisparse_t ;


 int EINVAL ;
 scalar_t__ cvt_ascii_address (struct net_device*,int *) ;
 scalar_t__ pcmcia_parse_tuple (int *,TYPE_2__*) ;

__attribute__((used)) static int pcmcia_get_versmac(struct pcmcia_device *p_dev,
         tuple_t *tuple,
         void *priv)
{
 struct net_device *dev = priv;
 cisparse_t parse;
 u8 *buf;

 if (pcmcia_parse_tuple(tuple, &parse))
  return -EINVAL;

 buf = parse.version_1.str + parse.version_1.ofs[3];

 if ((parse.version_1.ns > 3) && (cvt_ascii_address(dev, buf) == 0))
  return 0;

 return -EINVAL;
}
