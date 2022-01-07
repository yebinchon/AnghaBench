
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool possibly_iphdr(const char *data)
{
 return (data[0] & 0xd0) == 0x40;
}
