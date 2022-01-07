
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_hbm_cl_cmd {int me_addr; int host_addr; int hbm_cmd; } ;
struct mei_cl {int dummy; } ;


 int mei_cl_host_addr (struct mei_cl*) ;
 int mei_cl_me_id (struct mei_cl*) ;
 int memset (struct mei_hbm_cl_cmd*,int ,size_t) ;

__attribute__((used)) static inline
void mei_hbm_cl_hdr(struct mei_cl *cl, u8 hbm_cmd, void *buf, size_t len)
{
 struct mei_hbm_cl_cmd *cmd = buf;

 memset(cmd, 0, len);

 cmd->hbm_cmd = hbm_cmd;
 cmd->host_addr = mei_cl_host_addr(cl);
 cmd->me_addr = mei_cl_me_id(cl);
}
