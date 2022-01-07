
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct can_ctrlmode {int flags; int mask; } ;


 int CAN_CTRLMODE_FD ;
 int EOPNOTSUPP ;
 size_t IFLA_CAN_BITTIMING ;
 size_t IFLA_CAN_CTRLMODE ;
 size_t IFLA_CAN_DATA_BITTIMING ;
 struct can_ctrlmode* nla_data (struct nlattr*) ;

__attribute__((used)) static int can_validate(struct nlattr *tb[], struct nlattr *data[],
   struct netlink_ext_ack *extack)
{
 bool is_can_fd = 0;







 if (!data)
  return 0;

 if (data[IFLA_CAN_CTRLMODE]) {
  struct can_ctrlmode *cm = nla_data(data[IFLA_CAN_CTRLMODE]);

  is_can_fd = cm->flags & cm->mask & CAN_CTRLMODE_FD;
 }

 if (is_can_fd) {
  if (!data[IFLA_CAN_BITTIMING] || !data[IFLA_CAN_DATA_BITTIMING])
   return -EOPNOTSUPP;
 }

 if (data[IFLA_CAN_DATA_BITTIMING]) {
  if (!is_can_fd || !data[IFLA_CAN_BITTIMING])
   return -EOPNOTSUPP;
 }

 return 0;
}
