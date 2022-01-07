
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int cudbg_mbytes_to_bytes(unsigned int size)
{
 return size * 1024 * 1024;
}
