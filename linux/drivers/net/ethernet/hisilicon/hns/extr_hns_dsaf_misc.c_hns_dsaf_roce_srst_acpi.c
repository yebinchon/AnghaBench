
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dummy; } ;


 int HNS_OP_RESET_FUNC ;
 int HNS_ROCE_RESET_FUNC ;
 int hns_dsaf_acpi_srst_by_port (struct dsaf_device*,int ,int ,int ,int) ;

__attribute__((used)) static void hns_dsaf_roce_srst_acpi(struct dsaf_device *dsaf_dev, bool dereset)
{
 hns_dsaf_acpi_srst_by_port(dsaf_dev, HNS_OP_RESET_FUNC,
       HNS_ROCE_RESET_FUNC, 0, dereset);
}
