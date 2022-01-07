
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int pr_debug (char*,int,unsigned char*) ;
 int print_hex_dump_bytes (char*,int ,unsigned char*,int) ;

__attribute__((used)) static void print_pkt(unsigned char *buf, int len)
{
 pr_debug("len = %d byte, buf addr: 0x%p\n", len, buf);
 print_hex_dump_bytes("", DUMP_PREFIX_OFFSET, buf, len);
}
