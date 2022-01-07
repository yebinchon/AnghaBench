
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_msg {int data; } ;
struct ican3_dev {int ndev; } ;


 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static void ican3_handle_idvers(struct ican3_dev *mod, struct ican3_msg *msg)
{
 netdev_dbg(mod->ndev, "IDVERS response: %s\n", msg->data);
}
