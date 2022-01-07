
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {int * proto; TYPE_1__* bus_if; } ;
struct TYPE_2__ {scalar_t__ proto_type; } ;


 scalar_t__ BRCMF_PROTO_BCDC ;
 scalar_t__ BRCMF_PROTO_MSGBUF ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_proto_bcdc_detach (struct brcmf_pub*) ;
 int brcmf_proto_msgbuf_detach (struct brcmf_pub*) ;
 int kfree (int *) ;

void brcmf_proto_detach(struct brcmf_pub *drvr)
{
 brcmf_dbg(TRACE, "Enter\n");

 if (drvr->proto) {
  if (drvr->bus_if->proto_type == BRCMF_PROTO_BCDC)
   brcmf_proto_bcdc_detach(drvr);
  else if (drvr->bus_if->proto_type == BRCMF_PROTO_MSGBUF)
   brcmf_proto_msgbuf_detach(drvr);
  kfree(drvr->proto);
  drvr->proto = ((void*)0);
 }
}
