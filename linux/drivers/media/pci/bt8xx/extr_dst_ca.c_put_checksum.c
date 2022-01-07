
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DST_CA_DEBUG ;
 int dprintk (int ,int ,int,char*,...) ;
 int dst_check_sum (int*,int) ;
 int verbose ;

__attribute__((used)) static void put_checksum(u8 *check_string, int length)
{
 dprintk(verbose, DST_CA_DEBUG, 1, " Computing string checksum.");
 dprintk(verbose, DST_CA_DEBUG, 1, "  -> string length : 0x%02x", length);
 check_string[length] = dst_check_sum (check_string, length);
 dprintk(verbose, DST_CA_DEBUG, 1, "  -> checksum      : 0x%02x", check_string[length]);
}
