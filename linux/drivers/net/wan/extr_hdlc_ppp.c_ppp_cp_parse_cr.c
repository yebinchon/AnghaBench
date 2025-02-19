
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int valid_accm ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int rx_errors; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;


 int CP_CONF_ACK ;
 int CP_CONF_NAK ;
 int CP_CONF_REJ ;
 int GFP_ATOMIC ;



 scalar_t__ PID_LCP ;
 int RCR_BAD ;
 int RCR_GOOD ;
 int kfree (int*) ;
 int* kmalloc (unsigned int,int ) ;
 int memcmp (int const*,int const*,int) ;
 int memcpy (int*,int const*,int const) ;
 int ppp_cp_event (struct net_device*,scalar_t__,int ,int ,int,unsigned int,int const*) ;

__attribute__((used)) static void ppp_cp_parse_cr(struct net_device *dev, u16 pid, u8 id,
       unsigned int req_len, const u8 *data)
{
 static u8 const valid_accm[6] = { 130, 6, 0, 0, 0, 0 };
 const u8 *opt;
 u8 *out;
 unsigned int len = req_len, nak_len = 0, rej_len = 0;

 if (!(out = kmalloc(len, GFP_ATOMIC))) {
  dev->stats.rx_dropped++;
  return;
 }

 for (opt = data; len; len -= opt[1], opt += opt[1]) {
  if (len < 2 || len < opt[1]) {
   dev->stats.rx_errors++;
   kfree(out);
   return;
  }

  if (pid == PID_LCP)
   switch (opt[0]) {
   case 128:
    continue;

   case 130:
    if (!memcmp(opt, valid_accm,
         sizeof(valid_accm)))
     continue;
    if (!rej_len) {
     memcpy(out + nak_len, valid_accm,
            sizeof(valid_accm));
     nak_len += sizeof(valid_accm);
     continue;
    }
    break;
   case 129:
    if (opt[1] != 6 || (!opt[2] && !opt[3] &&
          !opt[4] && !opt[5]))
     break;
    continue;
   }

  memcpy(out + rej_len, opt, opt[1]);
  rej_len += opt[1];
 }

 if (rej_len)
  ppp_cp_event(dev, pid, RCR_BAD, CP_CONF_REJ, id, rej_len, out);
 else if (nak_len)
  ppp_cp_event(dev, pid, RCR_BAD, CP_CONF_NAK, id, nak_len, out);
 else
  ppp_cp_event(dev, pid, RCR_GOOD, CP_CONF_ACK, id, req_len, data);

 kfree(out);
}
