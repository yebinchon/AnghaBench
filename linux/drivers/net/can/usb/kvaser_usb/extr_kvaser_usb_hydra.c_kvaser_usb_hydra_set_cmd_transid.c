
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int transid; } ;
struct kvaser_cmd {TYPE_1__ header; } ;


 int KVASER_USB_HYDRA_TRANSID_MASK ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static inline void kvaser_usb_hydra_set_cmd_transid(struct kvaser_cmd *cmd,
          u16 transid)
{
 cmd->header.transid =
   cpu_to_le16(transid & KVASER_USB_HYDRA_TRANSID_MASK);
}
