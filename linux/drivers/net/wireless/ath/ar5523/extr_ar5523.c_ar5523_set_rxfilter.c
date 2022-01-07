
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523_cmd_rx_filter {void* op; void* bits; } ;
struct ar5523 {int dummy; } ;
typedef int rxfilter ;


 int WDCMSG_RX_FILTER ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_cmd_rx_filter*,int,int ) ;
 int ar5523_dbg (struct ar5523*,char*,int ,int ) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static int ar5523_set_rxfilter(struct ar5523 *ar, u32 bits, u32 op)
{
 struct ar5523_cmd_rx_filter rxfilter;

 rxfilter.bits = cpu_to_be32(bits);
 rxfilter.op = cpu_to_be32(op);

 ar5523_dbg(ar, "setting Rx filter=0x%x flags=0x%x\n", bits, op);
 return ar5523_cmd_write(ar, WDCMSG_RX_FILTER, &rxfilter,
     sizeof(rxfilter), 0);
}
