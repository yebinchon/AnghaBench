
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef char sci_t ;
typedef int port ;
typedef int __be16 ;


 int ETH_ALEN ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static sci_t make_sci(u8 *addr, __be16 port)
{
 sci_t sci;

 memcpy(&sci, addr, ETH_ALEN);
 memcpy(((char *)&sci) + ETH_ALEN, &port, sizeof(port));

 return sci;
}
