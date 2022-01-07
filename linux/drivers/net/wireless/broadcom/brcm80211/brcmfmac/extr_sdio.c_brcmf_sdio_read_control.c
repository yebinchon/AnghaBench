
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long uint ;
typedef int u8 ;
struct TYPE_5__ {int rxc_errors; int f2rxdata; int rx_toolong; } ;
struct brcmf_sdio {unsigned long head_align; long roundup; long blocksize; long rxlen; int rxctl_lock; int * rxctl_orig; int * rxctl; TYPE_2__ sdcnt; TYPE_3__* sdiodev; int * rxbuf; scalar_t__ rxblen; } ;
struct TYPE_6__ {TYPE_1__* bus_if; } ;
struct TYPE_4__ {long maxctl; } ;


 scalar_t__ BRCMF_BYTES_ON () ;
 scalar_t__ BRCMF_CTL_ON () ;
 long BRCMF_FIRSTREAD ;
 int SDIO ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_dbg_hex_dump (int,int *,long,char*) ;
 int brcmf_err (char*,...) ;
 int brcmf_sdio_dcmd_resp_wake (struct brcmf_sdio*) ;
 int brcmf_sdio_rxfail (struct brcmf_sdio*,int,int) ;
 int brcmf_sdiod_recv_buf (TYPE_3__*,int *,long) ;
 int memcpy (int *,int *,long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vfree (int *) ;
 int * vzalloc (scalar_t__) ;

__attribute__((used)) static void
brcmf_sdio_read_control(struct brcmf_sdio *bus, u8 *hdr, uint len, uint doff)
{
 uint rdlen, pad;
 u8 *buf = ((void*)0), *rbuf;
 int sdret;

 brcmf_dbg(SDIO, "Enter\n");
 if (bus->rxblen)
  buf = vzalloc(bus->rxblen);
 if (!buf)
  goto done;

 rbuf = bus->rxbuf;
 pad = ((unsigned long)rbuf % bus->head_align);
 if (pad)
  rbuf += (bus->head_align - pad);


 memcpy(buf, hdr, BRCMF_FIRSTREAD);
 if (len <= BRCMF_FIRSTREAD)
  goto gotpkt;


 rdlen = len - BRCMF_FIRSTREAD;
 if (bus->roundup && bus->blocksize && (rdlen > bus->blocksize)) {
  pad = bus->blocksize - (rdlen % bus->blocksize);
  if ((pad <= bus->roundup) && (pad < bus->blocksize) &&
      ((len + pad) < bus->sdiodev->bus_if->maxctl))
   rdlen += pad;
 } else if (rdlen % bus->head_align) {
  rdlen += bus->head_align - (rdlen % bus->head_align);
 }


 if ((rdlen + BRCMF_FIRSTREAD) > bus->sdiodev->bus_if->maxctl) {
  brcmf_err("%d-byte control read exceeds %d-byte buffer\n",
     rdlen, bus->sdiodev->bus_if->maxctl);
  brcmf_sdio_rxfail(bus, 0, 0);
  goto done;
 }

 if ((len - doff) > bus->sdiodev->bus_if->maxctl) {
  brcmf_err("%d-byte ctl frame (%d-byte ctl data) exceeds %d-byte limit\n",
     len, len - doff, bus->sdiodev->bus_if->maxctl);
  bus->sdcnt.rx_toolong++;
  brcmf_sdio_rxfail(bus, 0, 0);
  goto done;
 }


 sdret = brcmf_sdiod_recv_buf(bus->sdiodev, rbuf, rdlen);
 bus->sdcnt.f2rxdata++;


 if (sdret < 0) {
  brcmf_err("read %d control bytes failed: %d\n",
     rdlen, sdret);
  bus->sdcnt.rxc_errors++;
  brcmf_sdio_rxfail(bus, 1, 1);
  goto done;
 } else
  memcpy(buf + BRCMF_FIRSTREAD, rbuf, rdlen);

gotpkt:

 brcmf_dbg_hex_dump(BRCMF_BYTES_ON() && BRCMF_CTL_ON(),
      buf, len, "RxCtrl:\n");


 spin_lock_bh(&bus->rxctl_lock);
 if (bus->rxctl) {
  brcmf_err("last control frame is being processed.\n");
  spin_unlock_bh(&bus->rxctl_lock);
  vfree(buf);
  goto done;
 }
 bus->rxctl = buf + doff;
 bus->rxctl_orig = buf;
 bus->rxlen = len - doff;
 spin_unlock_bh(&bus->rxctl_lock);

done:

 brcmf_sdio_dcmd_resp_wake(bus);
}
