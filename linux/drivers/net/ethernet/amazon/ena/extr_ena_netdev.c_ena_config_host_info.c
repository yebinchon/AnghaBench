
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {struct ena_admin_host_info* host_info; } ;
struct ena_com_dev {TYPE_1__ host_attr; } ;
struct ena_admin_host_info {int bdf; char driver_version; int driver_supported_features; int num_cpus; int os_dist_str; scalar_t__ os_dist; int kernel_ver_str; int kernel_ver; int os_type; } ;
struct TYPE_6__ {int release; int version; } ;
struct TYPE_5__ {int number; } ;


 char DRV_MODULE_VER_MAJOR ;
 char DRV_MODULE_VER_MINOR ;
 char DRV_MODULE_VER_SUBMINOR ;
 int ENA_ADMIN_HOST_INFO_INTERRUPT_MODERATION_MASK ;
 char ENA_ADMIN_HOST_INFO_MINOR_SHIFT ;
 char ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT ;
 char ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT ;
 int ENA_ADMIN_OS_LINUX ;
 int EOPNOTSUPP ;
 int LINUX_VERSION_CODE ;
 int ena_com_allocate_host_info (struct ena_com_dev*) ;
 int ena_com_delete_host_info (struct ena_com_dev*) ;
 int ena_com_set_host_attributes (struct ena_com_dev*) ;
 int num_online_cpus () ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 int strlcpy (int ,int ,int) ;
 int strncpy (int ,int ,int) ;
 TYPE_3__* utsname () ;

__attribute__((used)) static void ena_config_host_info(struct ena_com_dev *ena_dev,
     struct pci_dev *pdev)
{
 struct ena_admin_host_info *host_info;
 int rc;


 rc = ena_com_allocate_host_info(ena_dev);
 if (rc) {
  pr_err("Cannot allocate host info\n");
  return;
 }

 host_info = ena_dev->host_attr.host_info;

 host_info->bdf = (pdev->bus->number << 8) | pdev->devfn;
 host_info->os_type = ENA_ADMIN_OS_LINUX;
 host_info->kernel_ver = LINUX_VERSION_CODE;
 strlcpy(host_info->kernel_ver_str, utsname()->version,
  sizeof(host_info->kernel_ver_str) - 1);
 host_info->os_dist = 0;
 strncpy(host_info->os_dist_str, utsname()->release,
  sizeof(host_info->os_dist_str) - 1);
 host_info->driver_version =
  (DRV_MODULE_VER_MAJOR) |
  (DRV_MODULE_VER_MINOR << ENA_ADMIN_HOST_INFO_MINOR_SHIFT) |
  (DRV_MODULE_VER_SUBMINOR << ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT) |
  ("K"[0] << ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT);
 host_info->num_cpus = num_online_cpus();

 host_info->driver_supported_features =
  ENA_ADMIN_HOST_INFO_INTERRUPT_MODERATION_MASK;

 rc = ena_com_set_host_attributes(ena_dev);
 if (rc) {
  if (rc == -EOPNOTSUPP)
   pr_warn("Cannot set host attributes\n");
  else
   pr_err("Cannot set host attributes\n");

  goto err;
 }

 return;

err:
 ena_com_delete_host_info(ena_dev);
}
