
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_pub {TYPE_2__* bus_if; int hdrlen; TYPE_1__* proto; } ;
struct brcmf_proto_bcdc_dcmd {int dummy; } ;
struct brcmf_bcdc {scalar_t__ buf; int msg; } ;
struct TYPE_4__ {scalar_t__ maxctl; } ;
struct TYPE_3__ {struct brcmf_bcdc* pd; int debugfs_create; int init_done; int reset_if; int del_if; int add_if; int rxreorder; int add_tdls_peer; int delete_peer; int configure_addr_mode; int txdata; int tx_queue_data; int set_dcmd; int query_dcmd; int hdrpull; } ;


 scalar_t__ BCDC_HEADER_LEN ;
 scalar_t__ BRCMF_DCMD_MAXLEN ;
 scalar_t__ BRCMF_PROT_FW_SIGNAL_MAX_TXBYTES ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_proto_bcdc_add_if ;
 int brcmf_proto_bcdc_add_tdls_peer ;
 int brcmf_proto_bcdc_configure_addr_mode ;
 int brcmf_proto_bcdc_debugfs_create ;
 int brcmf_proto_bcdc_del_if ;
 int brcmf_proto_bcdc_delete_peer ;
 int brcmf_proto_bcdc_hdrpull ;
 int brcmf_proto_bcdc_init_done ;
 int brcmf_proto_bcdc_query_dcmd ;
 int brcmf_proto_bcdc_reset_if ;
 int brcmf_proto_bcdc_rxreorder ;
 int brcmf_proto_bcdc_set_dcmd ;
 int brcmf_proto_bcdc_tx_queue_data ;
 int brcmf_proto_bcdc_txdata ;
 int kfree (struct brcmf_bcdc*) ;
 struct brcmf_bcdc* kzalloc (int,int ) ;

int brcmf_proto_bcdc_attach(struct brcmf_pub *drvr)
{
 struct brcmf_bcdc *bcdc;

 bcdc = kzalloc(sizeof(*bcdc), GFP_ATOMIC);
 if (!bcdc)
  goto fail;


 if ((unsigned long)(&bcdc->msg + 1) != (unsigned long)bcdc->buf) {
  bphy_err(drvr, "struct brcmf_proto_bcdc is not correctly defined\n");
  goto fail;
 }

 drvr->proto->hdrpull = brcmf_proto_bcdc_hdrpull;
 drvr->proto->query_dcmd = brcmf_proto_bcdc_query_dcmd;
 drvr->proto->set_dcmd = brcmf_proto_bcdc_set_dcmd;
 drvr->proto->tx_queue_data = brcmf_proto_bcdc_tx_queue_data;
 drvr->proto->txdata = brcmf_proto_bcdc_txdata;
 drvr->proto->configure_addr_mode = brcmf_proto_bcdc_configure_addr_mode;
 drvr->proto->delete_peer = brcmf_proto_bcdc_delete_peer;
 drvr->proto->add_tdls_peer = brcmf_proto_bcdc_add_tdls_peer;
 drvr->proto->rxreorder = brcmf_proto_bcdc_rxreorder;
 drvr->proto->add_if = brcmf_proto_bcdc_add_if;
 drvr->proto->del_if = brcmf_proto_bcdc_del_if;
 drvr->proto->reset_if = brcmf_proto_bcdc_reset_if;
 drvr->proto->init_done = brcmf_proto_bcdc_init_done;
 drvr->proto->debugfs_create = brcmf_proto_bcdc_debugfs_create;
 drvr->proto->pd = bcdc;

 drvr->hdrlen += BCDC_HEADER_LEN + BRCMF_PROT_FW_SIGNAL_MAX_TXBYTES;
 drvr->bus_if->maxctl = BRCMF_DCMD_MAXLEN +
   sizeof(struct brcmf_proto_bcdc_dcmd);
 return 0;

fail:
 kfree(bcdc);
 return -ENOMEM;
}
