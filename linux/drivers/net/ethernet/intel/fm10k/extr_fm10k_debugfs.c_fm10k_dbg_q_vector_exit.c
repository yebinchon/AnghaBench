
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_q_vector {int * dbg_q_vector; struct fm10k_intfc* interface; } ;
struct fm10k_intfc {scalar_t__ dbg_intfc; } ;


 int debugfs_remove_recursive (int *) ;

void fm10k_dbg_q_vector_exit(struct fm10k_q_vector *q_vector)
{
 struct fm10k_intfc *interface = q_vector->interface;

 if (interface->dbg_intfc)
  debugfs_remove_recursive(q_vector->dbg_q_vector);
 q_vector->dbg_q_vector = ((void*)0);
}
