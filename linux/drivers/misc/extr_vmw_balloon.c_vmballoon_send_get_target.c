
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct vmballoon {int capabilities; } ;


 int EINVAL ;
 int EIO ;
 int VMW_BALLOON_64_BIT_TARGET ;
 int VMW_BALLOON_CMD_GET_TARGET ;
 unsigned long VMW_BALLOON_SUCCESS ;
 unsigned long totalram_pages () ;
 unsigned long vmballoon_cmd (struct vmballoon*,int ,unsigned long,int ) ;

__attribute__((used)) static int vmballoon_send_get_target(struct vmballoon *b)
{
 unsigned long status;
 unsigned long limit;

 limit = totalram_pages();


 if (!(b->capabilities & VMW_BALLOON_64_BIT_TARGET) &&
     limit != (u32)limit)
  return -EINVAL;

 status = vmballoon_cmd(b, VMW_BALLOON_CMD_GET_TARGET, limit, 0);

 return status == VMW_BALLOON_SUCCESS ? 0 : -EIO;
}
