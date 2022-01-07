
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;


 int S5P_FIMV_RISC2HOST_CMD ;
 int S5P_FIMV_RISC_HOST_INT ;
 int S5P_FIMV_SI_RTN_CHID ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;

__attribute__((used)) static void s5p_mfc_clear_int_flags_v5(struct s5p_mfc_dev *dev)
{
 mfc_write(dev, 0, S5P_FIMV_RISC_HOST_INT);
 mfc_write(dev, 0, S5P_FIMV_RISC2HOST_CMD);
 mfc_write(dev, 0xffff, S5P_FIMV_SI_RTN_CHID);
}
