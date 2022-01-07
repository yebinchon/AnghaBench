
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int brcmf_pcie_get_resource (void*) ;

__attribute__((used)) static int brcmf_pcie_buscoreprep(void *ctx)
{
 return brcmf_pcie_get_resource(ctx);
}
