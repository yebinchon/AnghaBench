
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sleep; } ;
struct dvb_frontend_ops {TYPE_1__ tuner_ops; int * sleep; int * set_voltage; } ;



__attribute__((used)) static inline void prevent_sleep(struct dvb_frontend_ops *ops)
{
 ops->set_voltage = ((void*)0);
 ops->sleep = ((void*)0);
 ops->tuner_ops.sleep = ((void*)0);
}
