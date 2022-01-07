
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_mci {int dummy; } ;


 int ATMCI_VERSION ;
 int atmci_readl (struct atmel_mci*,int ) ;

__attribute__((used)) static inline unsigned int atmci_get_version(struct atmel_mci *host)
{
 return atmci_readl(host, ATMCI_VERSION) & 0x00000fff;
}
