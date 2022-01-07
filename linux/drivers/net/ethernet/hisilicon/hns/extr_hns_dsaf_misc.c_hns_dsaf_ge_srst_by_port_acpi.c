
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int HNS_GE_RESET_FUNC ;
 int HNS_OP_RESET_FUNC ;
 int hns_dsaf_acpi_srst_by_port (struct dsaf_device*,int ,int ,int ,int) ;

__attribute__((used)) static void hns_dsaf_ge_srst_by_port_acpi(struct dsaf_device *dsaf_dev,
       u32 port, bool dereset)
{
 hns_dsaf_acpi_srst_by_port(dsaf_dev, HNS_OP_RESET_FUNC,
       HNS_GE_RESET_FUNC, port, dereset);
}
