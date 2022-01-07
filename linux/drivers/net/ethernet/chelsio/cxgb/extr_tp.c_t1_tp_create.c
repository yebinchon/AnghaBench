
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_params {int dummy; } ;
struct petp {int * adapter; } ;
typedef int adapter_t ;


 int GFP_KERNEL ;
 struct petp* kzalloc (int,int ) ;

struct petp *t1_tp_create(adapter_t *adapter, struct tp_params *p)
{
 struct petp *tp = kzalloc(sizeof(*tp), GFP_KERNEL);

 if (!tp)
  return ((void*)0);

 tp->adapter = adapter;

 return tp;
}
