
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int dummy; } ;


 int EIO ;
 int VMW_BALLOON_CMD_GUEST_ID ;
 int VMW_BALLOON_GUEST_ID ;
 unsigned long VMW_BALLOON_SUCCESS ;
 unsigned long vmballoon_cmd (struct vmballoon*,int ,int ,int ) ;

__attribute__((used)) static int vmballoon_send_guest_id(struct vmballoon *b)
{
 unsigned long status;

 status = vmballoon_cmd(b, VMW_BALLOON_CMD_GUEST_ID,
          VMW_BALLOON_GUEST_ID, 0);

 return status == VMW_BALLOON_SUCCESS ? 0 : -EIO;
}
