
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int SDHCI_AMD_RESET_DLL_REGISTER ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_acpi_amd_hs400_dll(struct sdhci_host *host)
{

 sdhci_writel(host, 0x40003210, SDHCI_AMD_RESET_DLL_REGISTER);
 usleep_range(10, 20);
 sdhci_writel(host, 0x40033210, SDHCI_AMD_RESET_DLL_REGISTER);
}
