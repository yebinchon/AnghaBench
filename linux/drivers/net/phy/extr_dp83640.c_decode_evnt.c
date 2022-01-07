
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ptp_clock_event {int timestamp; int index; int type; } ;
struct phy_txts {int ns_lo; int ns_hi; int sec_lo; int sec_hi; } ;
struct TYPE_4__ {int ns_lo; int ns_hi; int sec_lo; int sec_hi; } ;
struct dp83640_private {TYPE_1__* clock; TYPE_2__ edata; } ;
typedef int ext_status ;
struct TYPE_3__ {int ptp_clock; } ;


 int EVNT_NUM_MASK ;
 int EVNT_NUM_SHIFT ;
 int EVNT_TS_LEN_MASK ;
 int EVNT_TS_LEN_SHIFT ;
 int EXT_EVENT ;
 int MULT_EVNT ;
 int N_EXT_TS ;
 int PTP_CLOCK_EXTTS ;
 int exts_chan_to_edata (int) ;
 int phy2txts (TYPE_2__*) ;
 int ptp_clock_event (int ,struct ptp_clock_event*) ;

__attribute__((used)) static int decode_evnt(struct dp83640_private *dp83640,
         void *data, int len, u16 ests)
{
 struct phy_txts *phy_txts;
 struct ptp_clock_event event;
 int i, parsed;
 int words = (ests >> EVNT_TS_LEN_SHIFT) & EVNT_TS_LEN_MASK;
 u16 ext_status = 0;


 if (ests & MULT_EVNT)
  parsed = (words + 2) * sizeof(u16);
 else
  parsed = (words + 1) * sizeof(u16);


 if (len < parsed)
  return len;

 if (ests & MULT_EVNT) {
  ext_status = *(u16 *) data;
  data += sizeof(ext_status);
 }

 phy_txts = data;

 switch (words) {
 case 3:
  dp83640->edata.sec_hi = phy_txts->sec_hi;

 case 2:
  dp83640->edata.sec_lo = phy_txts->sec_lo;

 case 1:
  dp83640->edata.ns_hi = phy_txts->ns_hi;

 case 0:
  dp83640->edata.ns_lo = phy_txts->ns_lo;
 }

 if (!ext_status) {
  i = ((ests >> EVNT_NUM_SHIFT) & EVNT_NUM_MASK) - EXT_EVENT;
  ext_status = exts_chan_to_edata(i);
 }

 event.type = PTP_CLOCK_EXTTS;
 event.timestamp = phy2txts(&dp83640->edata);


 event.timestamp -= 35;

 for (i = 0; i < N_EXT_TS; i++) {
  if (ext_status & exts_chan_to_edata(i)) {
   event.index = i;
   ptp_clock_event(dp83640->clock->ptp_clock, &event);
  }
 }

 return parsed;
}
