
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_msg {int len; int spec; } ;
struct ican3_dev {int ndev; } ;


 int le16_to_cpu (int ) ;
 int netdev_warn (int ,char*,int ,int ) ;

__attribute__((used)) static void ican3_handle_unknown_message(struct ican3_dev *mod,
     struct ican3_msg *msg)
{
 netdev_warn(mod->ndev, "received unknown message: spec 0x%.2x length %d\n",
      msg->spec, le16_to_cpu(msg->len));
}
