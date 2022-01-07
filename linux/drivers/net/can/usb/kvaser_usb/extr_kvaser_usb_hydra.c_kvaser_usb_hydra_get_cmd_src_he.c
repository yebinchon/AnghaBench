
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int he_addr; int transid; } ;
struct kvaser_cmd {TYPE_1__ header; } ;


 int KVASER_USB_HYDRA_HE_ADDR_SRC_BITS ;
 int KVASER_USB_HYDRA_HE_ADDR_SRC_MASK ;
 int KVASER_USB_HYDRA_TRANSID_BITS ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 kvaser_usb_hydra_get_cmd_src_he(const struct kvaser_cmd *cmd)
{
 return (cmd->header.he_addr & KVASER_USB_HYDRA_HE_ADDR_SRC_MASK) >>
  KVASER_USB_HYDRA_HE_ADDR_SRC_BITS |
  le16_to_cpu(cmd->header.transid) >>
  KVASER_USB_HYDRA_TRANSID_BITS;
}
