
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_handler {int protocols; int list; } ;


 int atomic64_or (int ,int *) ;
 int available_protocols ;
 int ir_raw_handler_list ;
 int ir_raw_handler_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ir_raw_handler_register(struct ir_raw_handler *ir_raw_handler)
{
 mutex_lock(&ir_raw_handler_lock);
 list_add_tail(&ir_raw_handler->list, &ir_raw_handler_list);
 atomic64_or(ir_raw_handler->protocols, &available_protocols);
 mutex_unlock(&ir_raw_handler_lock);

 return 0;
}
