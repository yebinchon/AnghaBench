
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;

__attribute__((used)) static void greth_print_rx_packet(void *addr, int len)
{
 print_hex_dump(KERN_DEBUG, "RX: ", DUMP_PREFIX_OFFSET, 16, 1,
   addr, len, 1);
}
