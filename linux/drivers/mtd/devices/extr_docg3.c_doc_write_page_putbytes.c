
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct docg3 {int dummy; } ;


 int doc_delay (struct docg3*,int) ;
 int doc_write_data_area (struct docg3*,int const*,int) ;

__attribute__((used)) static void doc_write_page_putbytes(struct docg3 *docg3, int len,
        const u_char *buf)
{
 doc_write_data_area(docg3, buf, len);
 doc_delay(docg3, 2);
}
