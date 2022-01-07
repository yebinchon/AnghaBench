
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 unsigned int ETH_TEST_FL_OFFLINE ;
 int ef4_mdio_an_reconfigure (struct ef4_nic*) ;
 int tenxpress_special_reset (struct ef4_nic*) ;

__attribute__((used)) static int
sfx7101_run_tests(struct ef4_nic *efx, int *results, unsigned flags)
{
 int rc;

 if (!(flags & ETH_TEST_FL_OFFLINE))
  return 0;


 rc = tenxpress_special_reset(efx);
 results[0] = rc ? -1 : 1;

 ef4_mdio_an_reconfigure(efx);

 return rc;
}
