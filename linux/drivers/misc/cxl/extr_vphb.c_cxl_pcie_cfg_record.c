
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int cxl_pcie_cfg_record(u8 bus, u8 devfn)
{
 return (bus << 8) + devfn;
}
