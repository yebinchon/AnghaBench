
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_priv {int dummy; } ;


 int ASSERT_RTNL () ;
 int alx_activate (struct alx_priv*) ;
 int alx_halt (struct alx_priv*) ;

__attribute__((used)) static void alx_reinit(struct alx_priv *alx)
{
 ASSERT_RTNL();

 alx_halt(alx);
 alx_activate(alx);
}
