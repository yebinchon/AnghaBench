
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u32 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;
typedef int buf ;


 unsigned int DELAYEDACKRESOLUTION_G (unsigned long long) ;
 unsigned long long INITSRTT_G (unsigned long long) ;
 unsigned int TIMERRESOLUTION_G (unsigned long long) ;
 unsigned int TIMESTAMPRESOLUTION_G (unsigned long long) ;
 int TP_DACK_TIMER_A ;
 int TP_FINWAIT2_TIMER_A ;
 int TP_INIT_SRTT_A ;
 int TP_KEEP_IDLE_A ;
 int TP_KEEP_INTVL_A ;
 int TP_PERS_MAX_A ;
 int TP_PERS_MIN_A ;
 int TP_RXT_MAX_A ;
 int TP_RXT_MIN_A ;
 int TP_TIMER_RESOLUTION_A ;
 int seq_printf (struct seq_file*,char*,unsigned long long) ;
 unsigned long long t4_read_reg (struct adapter*,int ) ;
 unsigned long long unit_conv (char*,int,unsigned int,int) ;

__attribute__((used)) static int clk_show(struct seq_file *seq, void *v)
{
 char buf[32];
 struct adapter *adap = seq->private;
 unsigned int cclk_ps = 1000000000 / adap->params.vpd.cclk;
 u32 res = t4_read_reg(adap, TP_TIMER_RESOLUTION_A);
 unsigned int tre = TIMERRESOLUTION_G(res);
 unsigned int dack_re = DELAYEDACKRESOLUTION_G(res);
 unsigned long long tp_tick_us = (cclk_ps << tre) / 1000000;

 seq_printf(seq, "Core clock period: %s ns\n",
     unit_conv(buf, sizeof(buf), cclk_ps, 1000));
 seq_printf(seq, "TP timer tick: %s us\n",
     unit_conv(buf, sizeof(buf), (cclk_ps << tre), 1000000));
 seq_printf(seq, "TCP timestamp tick: %s us\n",
     unit_conv(buf, sizeof(buf),
        (cclk_ps << TIMESTAMPRESOLUTION_G(res)), 1000000));
 seq_printf(seq, "DACK tick: %s us\n",
     unit_conv(buf, sizeof(buf), (cclk_ps << dack_re), 1000000));
 seq_printf(seq, "DACK timer: %u us\n",
     ((cclk_ps << dack_re) / 1000000) *
     t4_read_reg(adap, TP_DACK_TIMER_A));
 seq_printf(seq, "Retransmit min: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_RXT_MIN_A));
 seq_printf(seq, "Retransmit max: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_RXT_MAX_A));
 seq_printf(seq, "Persist timer min: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_PERS_MIN_A));
 seq_printf(seq, "Persist timer max: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_PERS_MAX_A));
 seq_printf(seq, "Keepalive idle timer: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_KEEP_IDLE_A));
 seq_printf(seq, "Keepalive interval: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_KEEP_INTVL_A));
 seq_printf(seq, "Initial SRTT: %llu us\n",
     tp_tick_us * INITSRTT_G(t4_read_reg(adap, TP_INIT_SRTT_A)));
 seq_printf(seq, "FINWAIT2 timer: %llu us\n",
     tp_tick_us * t4_read_reg(adap, TP_FINWAIT2_TIMER_A));

 return 0;
}
