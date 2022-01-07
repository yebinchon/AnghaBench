
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {struct brcmf_proto* proto; TYPE_1__* bus_if; } ;
struct brcmf_proto {int * debugfs_create; int * add_tdls_peer; int * delete_peer; int * configure_addr_mode; int * set_dcmd; int * query_dcmd; int * hdrpull; int tx_queue_data; } ;
struct TYPE_2__ {scalar_t__ proto_type; } ;


 scalar_t__ BRCMF_PROTO_BCDC ;
 scalar_t__ BRCMF_PROTO_MSGBUF ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_dbg (int ,char*) ;
 scalar_t__ brcmf_proto_bcdc_attach (struct brcmf_pub*) ;
 scalar_t__ brcmf_proto_msgbuf_attach (struct brcmf_pub*) ;
 int kfree (struct brcmf_proto*) ;
 struct brcmf_proto* kzalloc (int,int ) ;

int brcmf_proto_attach(struct brcmf_pub *drvr)
{
 struct brcmf_proto *proto;

 brcmf_dbg(TRACE, "Enter\n");

 proto = kzalloc(sizeof(*proto), GFP_ATOMIC);
 if (!proto)
  goto fail;

 drvr->proto = proto;

 if (drvr->bus_if->proto_type == BRCMF_PROTO_BCDC) {
  if (brcmf_proto_bcdc_attach(drvr))
   goto fail;
 } else if (drvr->bus_if->proto_type == BRCMF_PROTO_MSGBUF) {
  if (brcmf_proto_msgbuf_attach(drvr))
   goto fail;
 } else {
  bphy_err(drvr, "Unsupported proto type %d\n",
    drvr->bus_if->proto_type);
  goto fail;
 }
 if (!proto->tx_queue_data || (proto->hdrpull == ((void*)0)) ||
     (proto->query_dcmd == ((void*)0)) || (proto->set_dcmd == ((void*)0)) ||
     (proto->configure_addr_mode == ((void*)0)) ||
     (proto->delete_peer == ((void*)0)) || (proto->add_tdls_peer == ((void*)0)) ||
     (proto->debugfs_create == ((void*)0))) {
  bphy_err(drvr, "Not all proto handlers have been installed\n");
  goto fail;
 }
 return 0;

fail:
 kfree(proto);
 drvr->proto = ((void*)0);
 return -ENOMEM;
}
