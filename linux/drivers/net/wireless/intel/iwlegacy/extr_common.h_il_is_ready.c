
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; } ;


 int S_EXIT_PENDING ;
 int S_GEO_CONFIGURED ;
 int S_READY ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int
il_is_ready(struct il_priv *il)
{


 return test_bit(S_READY, &il->status) &&
     test_bit(S_GEO_CONFIGURED, &il->status) &&
     !test_bit(S_EXIT_PENDING, &il->status);
}
