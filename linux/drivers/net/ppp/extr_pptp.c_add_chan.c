
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pptp_addr {int call_id; } ;
struct TYPE_3__ {struct pptp_addr src_addr; } ;
struct TYPE_4__ {TYPE_1__ pptp; } ;
struct pppox_sock {TYPE_2__ proto; } ;


 int MAX_CALLID ;
 int callid_bitmap ;
 int * callid_sock ;
 int chan_lock ;
 int find_next_zero_bit (int ,int,int) ;
 int rcu_assign_pointer (int ,struct pppox_sock*) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int add_chan(struct pppox_sock *sock,
      struct pptp_addr *sa)
{
 static int call_id;

 spin_lock(&chan_lock);
 if (!sa->call_id) {
  call_id = find_next_zero_bit(callid_bitmap, MAX_CALLID, call_id + 1);
  if (call_id == MAX_CALLID) {
   call_id = find_next_zero_bit(callid_bitmap, MAX_CALLID, 1);
   if (call_id == MAX_CALLID)
    goto out_err;
  }
  sa->call_id = call_id;
 } else if (test_bit(sa->call_id, callid_bitmap)) {
  goto out_err;
 }

 sock->proto.pptp.src_addr = *sa;
 set_bit(sa->call_id, callid_bitmap);
 rcu_assign_pointer(callid_sock[sa->call_id], sock);
 spin_unlock(&chan_lock);

 return 0;

out_err:
 spin_unlock(&chan_lock);
 return -1;
}
