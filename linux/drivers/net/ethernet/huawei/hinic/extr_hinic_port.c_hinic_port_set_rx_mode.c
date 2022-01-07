
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_port_rx_mode_cmd {int rx_mode; int func_idx; } ;
struct hinic_hwdev {int hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int rx_mode_cmd ;


 int HINIC_HWIF_FUNC_IDX (int ) ;
 int HINIC_PORT_CMD_SET_RX_MODE ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_port_rx_mode_cmd*,int,int *,int *) ;

int hinic_port_set_rx_mode(struct hinic_dev *nic_dev, u32 rx_mode)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_port_rx_mode_cmd rx_mode_cmd;

 rx_mode_cmd.func_idx = HINIC_HWIF_FUNC_IDX(hwdev->hwif);
 rx_mode_cmd.rx_mode = rx_mode;

 return hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_SET_RX_MODE,
      &rx_mode_cmd, sizeof(rx_mode_cmd),
      ((void*)0), ((void*)0));
}
