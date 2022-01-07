
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ef4_nic {int dummy; } ;


 int MDIO_DEVID1 ;
 int MDIO_DEVID2 ;
 int ef4_mdio_read (struct ef4_nic*,int,int ) ;

__attribute__((used)) static inline u32 ef4_mdio_read_id(struct ef4_nic *efx, int mmd)
{
 u16 id_low = ef4_mdio_read(efx, mmd, MDIO_DEVID2);
 u16 id_hi = ef4_mdio_read(efx, mmd, MDIO_DEVID1);
 return (id_hi << 16) | (id_low);
}
