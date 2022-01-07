
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qp_broker_entry {TYPE_2__* consume_q; TYPE_1__* produce_q; } ;
struct TYPE_4__ {int * saved_header; } ;
struct TYPE_3__ {int * saved_header; } ;



__attribute__((used)) static void qp_reset_saved_headers(struct qp_broker_entry *entry)
{
 entry->produce_q->saved_header = ((void*)0);
 entry->consume_q->saved_header = ((void*)0);
}
