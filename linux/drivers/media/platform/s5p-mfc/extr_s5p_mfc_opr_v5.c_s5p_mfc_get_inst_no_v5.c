
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;


 int S5P_FIMV_RISC2HOST_ARG1 ;
 int mfc_read (struct s5p_mfc_dev*,int ) ;

__attribute__((used)) static int s5p_mfc_get_inst_no_v5(struct s5p_mfc_dev *dev)
{
 return mfc_read(dev, S5P_FIMV_RISC2HOST_ARG1);
}
