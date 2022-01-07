
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_cmd_args {int dummy; } ;


 int S5P_FIMV_HOST2RISC_CMD_V6 ;
 int S5P_FIMV_HOST2RISC_INT_V6 ;
 int S5P_FIMV_RISC2HOST_CMD_V6 ;
 int mfc_debug (int,char*,int) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;

__attribute__((used)) static int s5p_mfc_cmd_host2risc_v6(struct s5p_mfc_dev *dev, int cmd,
    struct s5p_mfc_cmd_args *args)
{
 mfc_debug(2, "Issue the command: %d\n", cmd);


 mfc_write(dev, 0x0, S5P_FIMV_RISC2HOST_CMD_V6);


 mfc_write(dev, cmd, S5P_FIMV_HOST2RISC_CMD_V6);
 mfc_write(dev, 0x1, S5P_FIMV_HOST2RISC_INT_V6);

 return 0;
}
