
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int transid; } ;
struct kvaser_cmd {TYPE_1__ header; } ;


 int KVASER_USB_HYDRA_TRANSID_MASK ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 kvaser_usb_hydra_get_cmd_transid(const struct kvaser_cmd *cmd)
{
 return le16_to_cpu(cmd->header.transid) & KVASER_USB_HYDRA_TRANSID_MASK;
}
