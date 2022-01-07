
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct alcor_sdmmc_host {struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int alcor_read8 (struct alcor_pci_priv*,unsigned int) ;
 int alcor_write8 (struct alcor_pci_priv*,int ,unsigned int) ;

__attribute__((used)) static inline void alcor_rmw8(struct alcor_sdmmc_host *host, unsigned int addr,
          u8 clear, u8 set)
{
 struct alcor_pci_priv *priv = host->alcor_pci;
 u32 var;

 var = alcor_read8(priv, addr);
 var &= ~clear;
 var |= set;
 alcor_write8(priv, var, addr);
}
