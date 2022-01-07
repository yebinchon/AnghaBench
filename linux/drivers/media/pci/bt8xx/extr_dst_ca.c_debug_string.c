
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 int DST_CA_DEBUG ;
 int dprintk (int ,int ,int ,char*,...) ;
 int verbose ;

__attribute__((used)) static int debug_string(u8 *msg, u32 length, u32 offset)
{
 u32 i;

 dprintk(verbose, DST_CA_DEBUG, 0, " String=[ ");
 for (i = offset; i < length; i++)
  dprintk(verbose, DST_CA_DEBUG, 0, "%02x ", msg[i]);
 dprintk(verbose, DST_CA_DEBUG, 0, "]\n");

 return 0;
}
