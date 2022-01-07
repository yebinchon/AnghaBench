
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int valid_service_line(int field, int line, int is_pal)
{
 return (is_pal && line >= 6 && (line != 23 || field == 0)) ||
        (!is_pal && line >= 10 && line < 22);
}
