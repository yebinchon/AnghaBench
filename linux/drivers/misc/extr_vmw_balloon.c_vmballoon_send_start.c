
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {unsigned long capabilities; int max_page_size; } ;


 int EIO ;
 int VMW_BALLOON_2M_PAGE ;
 int VMW_BALLOON_4K_PAGE ;
 unsigned long VMW_BALLOON_BASIC_CMDS ;
 int VMW_BALLOON_BATCHED_2M_CMDS ;
 int VMW_BALLOON_BATCHED_CMDS ;
 int VMW_BALLOON_CMD_START ;


 unsigned long __vmballoon_cmd (struct vmballoon*,int ,unsigned long,int ,unsigned long*) ;

__attribute__((used)) static int vmballoon_send_start(struct vmballoon *b, unsigned long req_caps)
{
 unsigned long status, capabilities;

 status = __vmballoon_cmd(b, VMW_BALLOON_CMD_START, req_caps, 0,
     &capabilities);

 switch (status) {
 case 128:
  b->capabilities = capabilities;
  break;
 case 129:
  b->capabilities = VMW_BALLOON_BASIC_CMDS;
  break;
 default:
  return -EIO;
 }






 b->max_page_size = VMW_BALLOON_4K_PAGE;
 if ((b->capabilities & VMW_BALLOON_BATCHED_2M_CMDS) &&
     (b->capabilities & VMW_BALLOON_BATCHED_CMDS))
  b->max_page_size = VMW_BALLOON_2M_PAGE;


 return 0;
}
