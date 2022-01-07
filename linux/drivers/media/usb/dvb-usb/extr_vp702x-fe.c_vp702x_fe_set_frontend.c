
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct vp702x_fe_state {scalar_t__ voltage; int status_check_interval; TYPE_1__* d; int next_status_check; } ;
struct vp702x_device_state {int* buf; int buf_mutex; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; } ;
struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;


 scalar_t__ SEC_VOLTAGE_18 ;
 int deb_fe (char*,...) ;
 int do_div (int,int) ;
 int jiffies ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vp702x_chksum (int*,int ,int) ;
 int vp702x_usb_inout_op (TYPE_1__*,int*,int,int*,int,int) ;

__attribute__((used)) static int vp702x_fe_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *fep = &fe->dtv_property_cache;
 struct vp702x_fe_state *st = fe->demodulator_priv;
 struct vp702x_device_state *dst = st->d->priv;
 u32 freq = fep->frequency/1000;


 u64 sr;
 u8 *cmd;

 mutex_lock(&dst->buf_mutex);

 cmd = dst->buf;
 memset(cmd, 0, 10);

 cmd[0] = (freq >> 8) & 0x7f;
 cmd[1] = freq & 0xff;
 cmd[2] = 1;

 sr = (u64) (fep->symbol_rate/1000) << 20;
 do_div(sr,88000);
 cmd[3] = (sr >> 12) & 0xff;
 cmd[4] = (sr >> 4) & 0xff;
 cmd[5] = (sr << 4) & 0xf0;

 deb_fe("setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\n",
   fep->frequency, freq, freq, fep->symbol_rate,
   (unsigned long) sr, (unsigned long) sr);




 if (st->voltage == SEC_VOLTAGE_18)
  cmd[6] |= 0x40;
 cmd[7] = vp702x_chksum(cmd,0,7);

 st->status_check_interval = 250;
 st->next_status_check = jiffies;

 vp702x_usb_inout_op(st->d, cmd, 8, cmd, 10, 100);

 if (cmd[2] == 0 && cmd[3] == 0)
  deb_fe("tuning failed.\n");
 else
  deb_fe("tuning succeeded.\n");

 mutex_unlock(&dst->buf_mutex);

 return 0;
}
