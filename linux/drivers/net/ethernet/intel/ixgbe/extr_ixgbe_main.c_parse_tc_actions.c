
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tcf_exts {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int parse_tc_actions(struct ixgbe_adapter *adapter,
       struct tcf_exts *exts, u64 *action, u8 *queue)
{
 return -EINVAL;
}
