
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void dump_buf(void *buf, int size, int data_only, int offset)
{
 __be32 *p = buf;
 int i;

 for (i = 0; i < size; i += 16) {
  pr_debug("%03x: %08x %08x %08x %08x\n", offset, be32_to_cpu(p[0]),
    be32_to_cpu(p[1]), be32_to_cpu(p[2]),
    be32_to_cpu(p[3]));
  p += 4;
  offset += 16;
 }
 if (!data_only)
  pr_debug("\n");
}
