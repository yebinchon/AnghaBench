
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int DUMP_PREFIX_NONE ;
 int seq_hex_dump (struct seq_file*,char const*,int ,int,int,void*,int,int) ;

__attribute__((used)) static void wil_seq_hexdump(struct seq_file *s, void *p, int len,
       const char *prefix)
{
 seq_hex_dump(s, prefix, DUMP_PREFIX_NONE, 16, 1, p, len, 0);
}
