
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_pub {int ops; scalar_t__ hdrlen; int proto_block; int * if2bss; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 int ARRAY_SIZE (int *) ;
 int BRCMF_BSSIDX_INVALID ;
 int BRCMF_E_PSM_WATCHDOG ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_bus_started (struct brcmf_pub*,int ) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_detach (struct device*) ;
 int brcmf_fweh_attach (struct brcmf_pub*) ;
 int brcmf_fweh_register (struct brcmf_pub*,int ,int ) ;
 int brcmf_proto_attach (struct brcmf_pub*) ;
 int brcmf_psm_watchdog_notify ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int mutex_init (int *) ;

int brcmf_attach(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;
 int ret = 0;
 int i;

 brcmf_dbg(TRACE, "Enter\n");

 for (i = 0; i < ARRAY_SIZE(drvr->if2bss); i++)
  drvr->if2bss[i] = BRCMF_BSSIDX_INVALID;

 mutex_init(&drvr->proto_block);


 drvr->hdrlen = 0;


 ret = brcmf_proto_attach(drvr);
 if (ret != 0) {
  bphy_err(drvr, "brcmf_prot_attach failed\n");
  goto fail;
 }


 brcmf_fweh_register(drvr, BRCMF_E_PSM_WATCHDOG,
       brcmf_psm_watchdog_notify);


 brcmf_fweh_attach(drvr);

 ret = brcmf_bus_started(drvr, drvr->ops);
 if (ret != 0) {
  bphy_err(drvr, "dongle is not responding: err=%d\n", ret);
  goto fail;
 }

 return 0;

fail:
 brcmf_detach(dev);

 return ret;
}
