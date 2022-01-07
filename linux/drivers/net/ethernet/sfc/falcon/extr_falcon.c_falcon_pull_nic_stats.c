
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int msleep (int) ;

__attribute__((used)) static void falcon_pull_nic_stats(struct ef4_nic *efx)
{
 msleep(10);
}
