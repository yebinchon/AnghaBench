
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu {int dummy; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;


 int nix_get_nixlf (struct rvu*,int ,int*) ;
 int rvu_npc_enable_default_entries (struct rvu*,int ,int) ;

int rvu_mbox_handler_nix_lf_start_rx(struct rvu *rvu, struct msg_req *req,
         struct msg_rsp *rsp)
{
 u16 pcifunc = req->hdr.pcifunc;
 int nixlf, err;

 err = nix_get_nixlf(rvu, pcifunc, &nixlf);
 if (err)
  return err;

 rvu_npc_enable_default_entries(rvu, pcifunc, nixlf);
 return 0;
}
