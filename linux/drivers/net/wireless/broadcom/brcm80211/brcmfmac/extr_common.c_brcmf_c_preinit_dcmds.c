
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct brcmf_rev_info_le {int chiprev; int chipnum; int nvramrev; int chippkg; int anarev; int phyrev; int phytype; int bus; int ucoderev; int driverrev; int boardrev; int boardvendor; int boardid; int corerev; int radiorev; int deviceid; int vendorid; } ;
struct brcmf_rev_info {int chipname; scalar_t__ result; void* nvramrev; void* chippkg; void* anarev; void* phyrev; void* phytype; void* bus; void* ucoderev; void* driverrev; void* boardrev; void* boardvendor; void* boardid; void* corerev; void* radiorev; void* deviceid; void* vendorid; } ;
struct brcmf_pub {char* mac; char* clmver; int fwver; struct brcmf_rev_info revinfo; struct brcmf_bus* bus_if; TYPE_1__* wiphy; } ;
struct brcmf_if {char* mac_addr; struct brcmf_pub* drvr; } ;
struct brcmf_bus {void* chiprev; void* chip; } ;
typedef char s8 ;
typedef scalar_t__ s32 ;
typedef int revinfo ;
typedef int buf ;
struct TYPE_2__ {char* perm_addr; } ;


 int BRCMF_C_GET_REVINFO ;
 int BRCMF_C_SET_SCAN_CHANNEL_TIME ;
 int BRCMF_C_SET_SCAN_UNASSOC_TIME ;
 int BRCMF_DCMD_SMLEN ;
 int BRCMF_DEFAULT_SCAN_CHANNEL_TIME ;
 int BRCMF_DEFAULT_SCAN_UNASSOC_TIME ;
 int BRCMF_EVENTING_MASK_LEN ;
 int BRCMF_E_IF ;
 int ETH_ALEN ;
 int INFO ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 scalar_t__ brcmf_c_process_clm_blob (struct brcmf_if*) ;
 int brcmf_c_set_joinpref_default (struct brcmf_if*) ;
 int brcmf_chip_name (void*,void*,int ,int) ;
 int brcmf_dbg (int ,char*,char*) ;
 scalar_t__ brcmf_fil_cmd_data_get (struct brcmf_if*,int ,struct brcmf_rev_info_le*,int) ;
 scalar_t__ brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int ) ;
 scalar_t__ brcmf_fil_iovar_data_get (struct brcmf_if*,char*,char*,int) ;
 scalar_t__ brcmf_fil_iovar_data_set (struct brcmf_if*,char*,char*,int) ;
 scalar_t__ brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 int brcmf_info (char*,int ,char*) ;
 void* le32_to_cpu (int ) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int setbit (char*,int ) ;
 int strlcpy (int ,char*,int) ;
 char* strrchr (char*,char) ;
 int strreplace (char*,char,char) ;
 int strsep (char**,char*) ;

int brcmf_c_preinit_dcmds(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 s8 eventmask[BRCMF_EVENTING_MASK_LEN];
 u8 buf[BRCMF_DCMD_SMLEN];
 struct brcmf_bus *bus;
 struct brcmf_rev_info_le revinfo;
 struct brcmf_rev_info *ri;
 char *clmver;
 char *ptr;
 s32 err;


 err = brcmf_fil_iovar_data_get(ifp, "cur_etheraddr", ifp->mac_addr,
           sizeof(ifp->mac_addr));
 if (err < 0) {
  bphy_err(drvr, "Retrieving cur_etheraddr failed, %d\n", err);
  goto done;
 }
 memcpy(ifp->drvr->wiphy->perm_addr, ifp->drvr->mac, ETH_ALEN);
 memcpy(ifp->drvr->mac, ifp->mac_addr, sizeof(ifp->drvr->mac));

 bus = ifp->drvr->bus_if;
 ri = &ifp->drvr->revinfo;

 err = brcmf_fil_cmd_data_get(ifp, BRCMF_C_GET_REVINFO,
         &revinfo, sizeof(revinfo));
 if (err < 0) {
  bphy_err(drvr, "retrieving revision info failed, %d\n", err);
  strlcpy(ri->chipname, "UNKNOWN", sizeof(ri->chipname));
 } else {
  ri->vendorid = le32_to_cpu(revinfo.vendorid);
  ri->deviceid = le32_to_cpu(revinfo.deviceid);
  ri->radiorev = le32_to_cpu(revinfo.radiorev);
  ri->corerev = le32_to_cpu(revinfo.corerev);
  ri->boardid = le32_to_cpu(revinfo.boardid);
  ri->boardvendor = le32_to_cpu(revinfo.boardvendor);
  ri->boardrev = le32_to_cpu(revinfo.boardrev);
  ri->driverrev = le32_to_cpu(revinfo.driverrev);
  ri->ucoderev = le32_to_cpu(revinfo.ucoderev);
  ri->bus = le32_to_cpu(revinfo.bus);
  ri->phytype = le32_to_cpu(revinfo.phytype);
  ri->phyrev = le32_to_cpu(revinfo.phyrev);
  ri->anarev = le32_to_cpu(revinfo.anarev);
  ri->chippkg = le32_to_cpu(revinfo.chippkg);
  ri->nvramrev = le32_to_cpu(revinfo.nvramrev);


  if (!bus->chip) {
   bus->chip = le32_to_cpu(revinfo.chipnum);
   bus->chiprev = le32_to_cpu(revinfo.chiprev);
  }
 }
 ri->result = err;

 if (bus->chip)
  brcmf_chip_name(bus->chip, bus->chiprev,
    ri->chipname, sizeof(ri->chipname));


 err = brcmf_c_process_clm_blob(ifp);
 if (err < 0) {
  bphy_err(drvr, "download CLM blob file failed, %d\n", err);
  goto done;
 }


 memset(buf, 0, sizeof(buf));
 err = brcmf_fil_iovar_data_get(ifp, "ver", buf, sizeof(buf));
 if (err < 0) {
  bphy_err(drvr, "Retrieving version information failed, %d\n",
    err);
  goto done;
 }
 ptr = (char *)buf;
 strsep(&ptr, "\n");


 brcmf_info("Firmware: %s %s\n", ri->chipname, buf);


 ptr = strrchr(buf, ' ') + 1;
 strlcpy(ifp->drvr->fwver, ptr, sizeof(ifp->drvr->fwver));


 memset(buf, 0, sizeof(buf));
 err = brcmf_fil_iovar_data_get(ifp, "clmver", buf, sizeof(buf));
 if (err) {
  brcmf_dbg(TRACE, "retrieving clmver failed, %d\n", err);
 } else {
  clmver = (char *)buf;

  memcpy(ifp->drvr->clmver, clmver, sizeof(ifp->drvr->clmver));




  strreplace(clmver, '\n', ' ');

  brcmf_dbg(INFO, "CLM version = %s\n", clmver);
 }


 err = brcmf_fil_iovar_int_set(ifp, "mpc", 1);
 if (err) {
  bphy_err(drvr, "failed setting mpc\n");
  goto done;
 }

 brcmf_c_set_joinpref_default(ifp);


 err = brcmf_fil_iovar_data_get(ifp, "event_msgs", eventmask,
           BRCMF_EVENTING_MASK_LEN);
 if (err) {
  bphy_err(drvr, "Get event_msgs error (%d)\n", err);
  goto done;
 }
 setbit(eventmask, BRCMF_E_IF);
 err = brcmf_fil_iovar_data_set(ifp, "event_msgs", eventmask,
           BRCMF_EVENTING_MASK_LEN);
 if (err) {
  bphy_err(drvr, "Set event_msgs error (%d)\n", err);
  goto done;
 }


 err = brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_SCAN_CHANNEL_TIME,
        BRCMF_DEFAULT_SCAN_CHANNEL_TIME);
 if (err) {
  bphy_err(drvr, "BRCMF_C_SET_SCAN_CHANNEL_TIME error (%d)\n",
    err);
  goto done;
 }


 err = brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_SCAN_UNASSOC_TIME,
        BRCMF_DEFAULT_SCAN_UNASSOC_TIME);
 if (err) {
  bphy_err(drvr, "BRCMF_C_SET_SCAN_UNASSOC_TIME error (%d)\n",
    err);
  goto done;
 }


 (void)brcmf_fil_iovar_int_set(ifp, "txbf", 1);
done:
 return err;
}
