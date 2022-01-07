
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int command; int group_id; } ;
struct mkhi_msg {scalar_t__ data; TYPE_1__ hdr; } ;
struct TYPE_4__ {int rule_type; int feature_id; } ;
struct mkhi_fwcaps {int len; scalar_t__ data; TYPE_2__ id; } ;
struct mei_os_ver {int os_type; } ;
struct mei_cl_device {int cl; } ;


 unsigned int MEI_CL_IO_TX_BLOCKING ;
 unsigned int MEI_CL_IO_TX_INTERNAL ;
 int MKHI_FEATURE_PTT ;
 int MKHI_FWCAPS_GROUP_ID ;
 int MKHI_FWCAPS_SET_OS_VER_APP_RULE_CMD ;
 int MKHI_OSVER_BUF_LEN ;
 int OSTYPE_LINUX ;
 int __mei_cl_send (int ,char*,size_t const,unsigned int) ;
 int memset (char*,int ,size_t const) ;

__attribute__((used)) static int mei_osver(struct mei_cl_device *cldev)
{
 const size_t size = MKHI_OSVER_BUF_LEN;
 char buf[MKHI_OSVER_BUF_LEN];
 struct mkhi_msg *req;
 struct mkhi_fwcaps *fwcaps;
 struct mei_os_ver *os_ver;
 unsigned int mode = MEI_CL_IO_TX_BLOCKING | MEI_CL_IO_TX_INTERNAL;

 memset(buf, 0, size);

 req = (struct mkhi_msg *)buf;
 req->hdr.group_id = MKHI_FWCAPS_GROUP_ID;
 req->hdr.command = MKHI_FWCAPS_SET_OS_VER_APP_RULE_CMD;

 fwcaps = (struct mkhi_fwcaps *)req->data;

 fwcaps->id.rule_type = 0x0;
 fwcaps->id.feature_id = MKHI_FEATURE_PTT;
 fwcaps->len = sizeof(*os_ver);
 os_ver = (struct mei_os_ver *)fwcaps->data;
 os_ver->os_type = OSTYPE_LINUX;

 return __mei_cl_send(cldev->cl, buf, size, mode);
}
