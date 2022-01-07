
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int he_addr; } ;
struct kvaser_cmd {TYPE_1__ header; } ;


 int KVASER_USB_HYDRA_HE_ADDR_DEST_MASK ;
 int KVASER_USB_HYDRA_HE_ADDR_SRC_MASK ;

__attribute__((used)) static inline void kvaser_usb_hydra_set_cmd_dest_he(struct kvaser_cmd *cmd,
          u8 dest_he)
{
 cmd->header.he_addr =
  (cmd->header.he_addr & KVASER_USB_HYDRA_HE_ADDR_SRC_MASK) |
  (dest_he & KVASER_USB_HYDRA_HE_ADDR_DEST_MASK);
}
