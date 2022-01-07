
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int port; } ;


 int TSU_VTAG0 ;
 int TSU_VTAG1 ;

__attribute__((used)) static int sh_eth_get_vtag_index(struct sh_eth_private *mdp)
{
 if (!mdp->port)
  return TSU_VTAG0;
 else
  return TSU_VTAG1;
}
