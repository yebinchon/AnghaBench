
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t call_id; } ;
struct TYPE_5__ {TYPE_1__ src_addr; } ;
struct TYPE_6__ {TYPE_2__ pptp; } ;
struct pppox_sock {TYPE_3__ proto; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int callid_bitmap ;
 int * callid_sock ;
 int chan_lock ;
 int clear_bit (size_t,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void del_chan(struct pppox_sock *sock)
{
 spin_lock(&chan_lock);
 clear_bit(sock->proto.pptp.src_addr.call_id, callid_bitmap);
 RCU_INIT_POINTER(callid_sock[sock->proto.pptp.src_addr.call_id], ((void*)0));
 spin_unlock(&chan_lock);
}
