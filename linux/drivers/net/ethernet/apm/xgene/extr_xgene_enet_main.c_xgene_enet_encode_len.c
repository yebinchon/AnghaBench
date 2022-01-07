
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ BUFLEN_16K ;

__attribute__((used)) static u16 xgene_enet_encode_len(u16 len)
{
 return (len == BUFLEN_16K) ? 0 : len;
}
