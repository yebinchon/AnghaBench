
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtbl_req_hdr {int operation; } ;
struct mt7615_dev {int mt76; } ;
typedef int req ;


 int MCU_EXT_CMD_WTBL_UPDATE ;
 int WTBL_RESET_ALL ;
 int __mt76_mcu_send_msg (int *,int ,struct wtbl_req_hdr*,int,int) ;

int mt7615_mcu_del_wtbl_all(struct mt7615_dev *dev)
{
 struct wtbl_req_hdr req = {
  .operation = WTBL_RESET_ALL,
 };

 return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_WTBL_UPDATE,
       &req, sizeof(req), 1);
}
