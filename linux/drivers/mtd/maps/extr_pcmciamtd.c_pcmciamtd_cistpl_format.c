
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tuple_t ;
struct pcmcia_device {int dummy; } ;
struct TYPE_4__ {int length; int offset; int edc; int type; } ;
typedef TYPE_1__ cistpl_format_t ;
struct TYPE_5__ {TYPE_1__ format; } ;
typedef TYPE_2__ cisparse_t ;


 int ENOSPC ;
 int pcmcia_parse_tuple (int *,TYPE_2__*) ;
 int pr_debug (char*,int ,int ,int ,int ) ;

__attribute__((used)) static int pcmciamtd_cistpl_format(struct pcmcia_device *p_dev,
    tuple_t *tuple,
    void *priv_data)
{
 cisparse_t parse;

 if (!pcmcia_parse_tuple(tuple, &parse)) {
  cistpl_format_t *t = &parse.format;
  (void)t;
  pr_debug("Format type: %u, Error Detection: %u, offset = %u, length =%u\n",
   t->type, t->edc, t->offset, t->length);
 }
 return -ENOSPC;
}
