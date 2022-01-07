
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int head; } ;
struct be_tx_obj {TYPE_1__ q; } ;


 int queue_head_inc (TYPE_1__*) ;

__attribute__((used)) static u32 be_tx_get_wrb_hdr(struct be_tx_obj *txo)
{
 u32 head = txo->q.head;

 queue_head_inc(&txo->q);
 return head;
}
