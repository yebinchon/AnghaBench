
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_cpp {int * serial; } ;



int nfp_cpp_serial(struct nfp_cpp *cpp, const u8 **serial)
{
 *serial = &cpp->serial[0];
 return sizeof(cpp->serial);
}
