
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel {int upl; TYPE_1__* ppp; } ;
struct TYPE_2__ {int xmit_recursion; } ;


 int __ppp_channel_push (struct channel*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int * this_cpu_ptr (int ) ;

__attribute__((used)) static void ppp_channel_push(struct channel *pch)
{
 read_lock_bh(&pch->upl);
 if (pch->ppp) {
  (*this_cpu_ptr(pch->ppp->xmit_recursion))++;
  __ppp_channel_push(pch);
  (*this_cpu_ptr(pch->ppp->xmit_recursion))--;
 } else {
  __ppp_channel_push(pch);
 }
 read_unlock_bh(&pch->upl);
}
