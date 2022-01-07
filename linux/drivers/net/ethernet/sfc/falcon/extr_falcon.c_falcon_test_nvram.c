
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int falcon_read_nvram (struct ef4_nic*,int *) ;

__attribute__((used)) static int falcon_test_nvram(struct ef4_nic *efx)
{
 return falcon_read_nvram(efx, ((void*)0));
}
