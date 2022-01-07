
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct docg3 {int dummy; } ;


 int doc_delay (struct docg3*,int) ;
 int doc_read_data_area (struct docg3*,int *,int,int) ;

__attribute__((used)) static int doc_read_page_getbytes(struct docg3 *docg3, int len, u_char *buf,
      int first, int last_odd)
{
 if (last_odd && len > 0) {
  doc_read_data_area(docg3, buf, 1, first);
  doc_read_data_area(docg3, buf ? buf + 1 : buf, len - 1, 0);
 } else {
  doc_read_data_area(docg3, buf, len, first);
 }
 doc_delay(docg3, 2);
 return len;
}
