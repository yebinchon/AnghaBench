
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_com_dev {int dummy; } ;


 int ENA_MMIO_READ_TIMEOUT ;
 int ENA_REGS_CONTROLLER_VERSION_IMPL_ID_MASK ;
 int ENA_REGS_CONTROLLER_VERSION_IMPL_ID_SHIFT ;
 int ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK ;
 int ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_SHIFT ;
 int ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK ;
 int ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_SHIFT ;
 int ENA_REGS_CONTROLLER_VERSION_OFF ;
 int ENA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK ;
 int ENA_REGS_VERSION_MAJOR_VERSION_MASK ;
 int ENA_REGS_VERSION_MAJOR_VERSION_SHIFT ;
 int ENA_REGS_VERSION_MINOR_VERSION_MASK ;
 int ENA_REGS_VERSION_OFF ;
 int ETIME ;
 int MIN_ENA_CTRL_VER ;
 int ena_com_reg_bar_read32 (struct ena_com_dev*,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int,int,...) ;
 scalar_t__ unlikely (int) ;

int ena_com_validate_version(struct ena_com_dev *ena_dev)
{
 u32 ver;
 u32 ctrl_ver;
 u32 ctrl_ver_masked;




 ver = ena_com_reg_bar_read32(ena_dev, ENA_REGS_VERSION_OFF);
 ctrl_ver = ena_com_reg_bar_read32(ena_dev,
       ENA_REGS_CONTROLLER_VERSION_OFF);

 if (unlikely((ver == ENA_MMIO_READ_TIMEOUT) ||
       (ctrl_ver == ENA_MMIO_READ_TIMEOUT))) {
  pr_err("Reg read timeout occurred\n");
  return -ETIME;
 }

 pr_info("ena device version: %d.%d\n",
  (ver & ENA_REGS_VERSION_MAJOR_VERSION_MASK) >>
   ENA_REGS_VERSION_MAJOR_VERSION_SHIFT,
  ver & ENA_REGS_VERSION_MINOR_VERSION_MASK);

 pr_info("ena controller version: %d.%d.%d implementation version %d\n",
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK) >>
   ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_SHIFT,
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK) >>
   ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_SHIFT,
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK),
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_IMPL_ID_MASK) >>
   ENA_REGS_CONTROLLER_VERSION_IMPL_ID_SHIFT);

 ctrl_ver_masked =
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK) |
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK) |
  (ctrl_ver & ENA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK);


 if (ctrl_ver_masked < MIN_ENA_CTRL_VER) {
  pr_err("ENA ctrl version is lower than the minimal ctrl version the driver supports\n");
  return -1;
 }

 return 0;
}
