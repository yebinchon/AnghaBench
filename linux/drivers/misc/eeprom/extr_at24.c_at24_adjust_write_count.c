
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at24_data {size_t write_max; int page_size; } ;


 unsigned int roundup (unsigned int,int ) ;

__attribute__((used)) static size_t at24_adjust_write_count(struct at24_data *at24,
          unsigned int offset, size_t count)
{
 unsigned int next_page;


 if (count > at24->write_max)
  count = at24->write_max;


 next_page = roundup(offset + 1, at24->page_size);
 if (offset + count > next_page)
  count = next_page - offset;

 return count;
}
