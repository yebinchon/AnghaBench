
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct res_fs_rule {TYPE_1__ com; } ;


 int EBUSY ;
 int EPERM ;
 scalar_t__ RES_FS_RULE_ALLOCATED ;
 scalar_t__ RES_FS_RULE_BUSY ;

__attribute__((used)) static int remove_fs_rule_ok(struct res_fs_rule *res)
{
 if (res->com.state == RES_FS_RULE_BUSY)
  return -EBUSY;
 else if (res->com.state != RES_FS_RULE_ALLOCATED)
  return -EPERM;

 return 0;
}
