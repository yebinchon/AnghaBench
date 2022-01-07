
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct be_eq_obj {TYPE_1__ q; int adapter; } ;


 int be_eq_notify (int ,int ,int,int,int,int ) ;
 int events_get (struct be_eq_obj*) ;

__attribute__((used)) static void be_eq_clean(struct be_eq_obj *eqo)
{
 int num = events_get(eqo);

 be_eq_notify(eqo->adapter, eqo->q.id, 0, 1, num, 0);
}
