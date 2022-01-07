
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct s5p_mfc_dev {TYPE_1__ fw_buf; } ;
struct s5p_mfc_cmd_args {int * arg; } ;


 int S5P_FIMV_H2R_CMD_SYS_INIT ;
 int memset (struct s5p_mfc_cmd_args*,int ,int) ;
 int s5p_mfc_cmd_host2risc_v5 (struct s5p_mfc_dev*,int ,struct s5p_mfc_cmd_args*) ;

__attribute__((used)) static int s5p_mfc_sys_init_cmd_v5(struct s5p_mfc_dev *dev)
{
 struct s5p_mfc_cmd_args h2r_args;

 memset(&h2r_args, 0, sizeof(struct s5p_mfc_cmd_args));
 h2r_args.arg[0] = dev->fw_buf.size;
 return s5p_mfc_cmd_host2risc_v5(dev, S5P_FIMV_H2R_CMD_SYS_INIT,
   &h2r_args);
}
