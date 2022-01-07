
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tuple_t ;
struct pcmcia_device {int dummy; } ;
struct TYPE_6__ {int nid; TYPE_1__* id; } ;
typedef TYPE_2__ cistpl_jedec_t ;
struct TYPE_7__ {TYPE_2__ jedec; } ;
typedef TYPE_3__ cisparse_t ;
struct TYPE_5__ {int info; int mfr; } ;


 int ENOSPC ;
 int pcmcia_parse_tuple (int *,TYPE_3__*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int pcmciamtd_cistpl_jedec(struct pcmcia_device *p_dev,
    tuple_t *tuple,
    void *priv_data)
{
 cisparse_t parse;
 int i;

 if (!pcmcia_parse_tuple(tuple, &parse)) {
  cistpl_jedec_t *t = &parse.jedec;
  for (i = 0; i < t->nid; i++)
   pr_debug("JEDEC: 0x%02x 0x%02x\n",
         t->id[i].mfr, t->id[i].info);
 }
 return -ENOSPC;
}
