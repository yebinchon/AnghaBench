
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvu {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct rsrc_detach {TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;


 int rvu_detach_rsrcs (struct rvu*,struct rsrc_detach*,int ) ;

__attribute__((used)) static int rvu_mbox_handler_detach_resources(struct rvu *rvu,
          struct rsrc_detach *detach,
          struct msg_rsp *rsp)
{
 return rvu_detach_rsrcs(rvu, detach, detach->hdr.pcifunc);
}
