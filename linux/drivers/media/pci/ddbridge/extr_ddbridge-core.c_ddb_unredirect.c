
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ddb_port {TYPE_6__* output; struct ddb_input** input; } ;
struct ddb_output {int dma; TYPE_4__* port; } ;
struct ddb_input {struct ddb_output* redo; struct ddb_input* redi; int dma; TYPE_5__* port; } ;
struct TYPE_12__ {struct ddb_input* redi; TYPE_1__* dma; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {TYPE_3__** input; TYPE_2__* output; } ;
struct TYPE_9__ {struct ddb_input* redi; } ;
struct TYPE_8__ {struct ddb_input* redi; } ;
struct TYPE_7__ {scalar_t__ running; } ;


 int EBUSY ;
 int ddb_redirect_dma (int ,int ,int ) ;
 int ddb_set_dma_table (struct ddb_input*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int redirect_lock ;

__attribute__((used)) static int ddb_unredirect(struct ddb_port *port)
{
 struct ddb_input *oredi, *iredi = ((void*)0);
 struct ddb_output *iredo = ((void*)0);




 mutex_lock(&redirect_lock);
 if (port->output->dma->running) {
  mutex_unlock(&redirect_lock);
  return -EBUSY;
 }
 oredi = port->output->redi;
 if (!oredi)
  goto done;
 if (port->input[0]) {
  iredi = port->input[0]->redi;
  iredo = port->input[0]->redo;

  if (iredo) {
   iredo->port->output->redi = oredi;
   if (iredo->port->input[0]) {
    iredo->port->input[0]->redi = iredi;
    ddb_redirect_dma(oredi->port->dev,
       oredi->dma, iredo->dma);
   }
   port->input[0]->redo = ((void*)0);
   ddb_set_dma_table(port->input[0]);
  }
  oredi->redi = iredi;
  port->input[0]->redi = ((void*)0);
 }
 oredi->redo = ((void*)0);
 port->output->redi = ((void*)0);

 ddb_set_dma_table(oredi);
done:
 mutex_unlock(&redirect_lock);
 return 0;
}
