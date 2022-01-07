
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vp702x_fe_state {int snr; } ;
struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; } ;


 int vp702x_fe_refresh_state (struct vp702x_fe_state*) ;

__attribute__((used)) static int vp702x_fe_read_snr(struct dvb_frontend* fe, u16 *snr)
{
 u8 _snr;
 struct vp702x_fe_state *st = fe->demodulator_priv;
 vp702x_fe_refresh_state(st);

 _snr = (st->snr & 0x1f) * 0xff / 0x1f;
 *snr = (_snr << 8) | _snr;
 return 0;
}
