
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int TX_CS (int) ;
 int TX_CS_STOP_N_GO ;
 int niu_tx_cs_sng_poll (struct niu*,int) ;
 int nr64 (int ) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int niu_tx_channel_stop(struct niu *np, int channel)
{
 u64 val = nr64(TX_CS(channel));

 val |= TX_CS_STOP_N_GO;
 nw64(TX_CS(channel), val);

 return niu_tx_cs_sng_poll(np, channel);
}
