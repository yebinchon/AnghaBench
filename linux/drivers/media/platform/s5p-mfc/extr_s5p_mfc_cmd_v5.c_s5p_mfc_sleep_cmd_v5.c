
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_cmd_args {int dummy; } ;


 int S5P_FIMV_H2R_CMD_SLEEP ;
 int memset (struct s5p_mfc_cmd_args*,int ,int) ;
 int s5p_mfc_cmd_host2risc_v5 (struct s5p_mfc_dev*,int ,struct s5p_mfc_cmd_args*) ;

__attribute__((used)) static int s5p_mfc_sleep_cmd_v5(struct s5p_mfc_dev *dev)
{
 struct s5p_mfc_cmd_args h2r_args;

 memset(&h2r_args, 0, sizeof(struct s5p_mfc_cmd_args));
 return s5p_mfc_cmd_host2risc_v5(dev, S5P_FIMV_H2R_CMD_SLEEP, &h2r_args);
}
