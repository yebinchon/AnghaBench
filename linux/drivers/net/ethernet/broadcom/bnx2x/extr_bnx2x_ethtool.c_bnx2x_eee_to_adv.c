
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int SHMEM_EEE_100M_ADV ;
 int SHMEM_EEE_10G_ADV ;
 int SHMEM_EEE_1G_ADV ;

__attribute__((used)) static u32 bnx2x_eee_to_adv(u32 eee_adv)
{
 u32 modes = 0;

 if (eee_adv & SHMEM_EEE_100M_ADV)
  modes |= ADVERTISED_100baseT_Full;
 if (eee_adv & SHMEM_EEE_1G_ADV)
  modes |= ADVERTISED_1000baseT_Full;
 if (eee_adv & SHMEM_EEE_10G_ADV)
  modes |= ADVERTISED_10000baseT_Full;

 return modes;
}
