
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct bnx2x {int timecounter; } ;
struct TYPE_2__ {int hwtstamp; } ;


 int BNX2X_MSG_PTP ;
 int BP_PORT (struct bnx2x*) ;
 int DP (int ,char*,int,int) ;
 int NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID ;
 int NIG_REG_P0_LLH_PTP_HOST_BUF_TS_LSB ;
 int NIG_REG_P0_LLH_PTP_HOST_BUF_TS_MSB ;
 int NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID ;
 int NIG_REG_P1_LLH_PTP_HOST_BUF_TS_LSB ;
 int NIG_REG_P1_LLH_PTP_HOST_BUF_TS_MSB ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int ns_to_ktime (int) ;
 TYPE_1__* skb_hwtstamps (struct sk_buff*) ;
 int timecounter_cyc2time (int *,int) ;

void bnx2x_set_rx_ts(struct bnx2x *bp, struct sk_buff *skb)
{
 int port = BP_PORT(bp);
 u64 timestamp, ns;

 timestamp = REG_RD(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_TS_MSB :
       NIG_REG_P0_LLH_PTP_HOST_BUF_TS_MSB);
 timestamp <<= 32;
 timestamp |= REG_RD(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_TS_LSB :
       NIG_REG_P0_LLH_PTP_HOST_BUF_TS_LSB);


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID :
        NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID, 0x10000);

 ns = timecounter_cyc2time(&bp->timecounter, timestamp);

 skb_hwtstamps(skb)->hwtstamp = ns_to_ktime(ns);

 DP(BNX2X_MSG_PTP, "Rx timestamp, timestamp cycles = %llu, ns = %llu\n",
    timestamp, ns);
}
