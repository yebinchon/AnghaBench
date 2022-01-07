
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int mtdswap_test_patt(unsigned int i)
{
 return i % 2 ? 0x55555555 : 0xAAAAAAAA;
}
