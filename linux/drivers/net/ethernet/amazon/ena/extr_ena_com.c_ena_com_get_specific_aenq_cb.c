
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {struct ena_aenq_handlers* aenq_handlers; } ;
struct ena_com_dev {TYPE_1__ aenq; } ;
struct ena_aenq_handlers {scalar_t__ unimplemented_handler; scalar_t__* handlers; } ;
typedef scalar_t__ ena_aenq_handler ;


 size_t ENA_MAX_HANDLERS ;

__attribute__((used)) static ena_aenq_handler ena_com_get_specific_aenq_cb(struct ena_com_dev *dev,
           u16 group)
{
 struct ena_aenq_handlers *aenq_handlers = dev->aenq.aenq_handlers;

 if ((group < ENA_MAX_HANDLERS) && aenq_handlers->handlers[group])
  return aenq_handlers->handlers[group];

 return aenq_handlers->unimplemented_handler;
}
