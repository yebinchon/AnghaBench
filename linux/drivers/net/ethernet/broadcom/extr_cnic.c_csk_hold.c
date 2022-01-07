
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void csk_hold(struct cnic_sock *csk)
{
 atomic_inc(&csk->ref_count);
}
