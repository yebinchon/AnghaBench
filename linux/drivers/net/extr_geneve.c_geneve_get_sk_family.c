
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct geneve_sock {TYPE_2__* sock; } ;
typedef int sa_family_t ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_family; } ;



__attribute__((used)) static sa_family_t geneve_get_sk_family(struct geneve_sock *gs)
{
 return gs->sock->sk->sk_family;
}
