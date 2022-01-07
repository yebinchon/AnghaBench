
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int ENOBUFS ;

__attribute__((used)) static int efx_ef10_alloc_piobufs(struct efx_nic *efx, unsigned int n)
{
 return n == 0 ? 0 : -ENOBUFS;
}
