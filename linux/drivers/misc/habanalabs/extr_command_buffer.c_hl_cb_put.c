
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_cb {int refcount; } ;


 int cb_release ;
 int kref_put (int *,int ) ;

void hl_cb_put(struct hl_cb *cb)
{
 kref_put(&cb->refcount, cb_release);
}
