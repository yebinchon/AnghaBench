
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void qed_read_str_from_buf(void *buf, u32 *offset, u32 size, char *dest)
{
 const char *source_str = &((const char *)buf)[*offset];

 strncpy(dest, source_str, size);
 dest[size - 1] = '\0';
 *offset += size;
}
