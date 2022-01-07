
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int doc_page_finish (struct docg3*) ;
 int doc_set_device_id (struct docg3*,int ) ;

__attribute__((used)) static void doc_read_page_finish(struct docg3 *docg3)
{
 doc_page_finish(docg3);
 doc_set_device_id(docg3, 0);
}
