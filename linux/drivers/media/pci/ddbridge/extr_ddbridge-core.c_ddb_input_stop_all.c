
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ddb_output {TYPE_1__* port; } ;
struct ddb_input {struct ddb_output* redo; } ;
struct TYPE_2__ {struct ddb_input** input; } ;


 int ddb_input_stop (struct ddb_input*) ;
 int ddb_output_stop (struct ddb_output*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int redirect_lock ;

__attribute__((used)) static void ddb_input_stop_all(struct ddb_input *input)
{
 struct ddb_input *i = input;
 struct ddb_output *o;

 mutex_lock(&redirect_lock);
 ddb_input_stop(input);
 while (i && (o = i->redo)) {
  ddb_output_stop(o);
  i = o->port->input[0];
  if (i)
   ddb_input_stop(i);
 }
 mutex_unlock(&redirect_lock);
}
