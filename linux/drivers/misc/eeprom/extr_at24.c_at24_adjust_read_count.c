
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at24_data {int flags; } ;


 int AT24_FLAG_ADDR16 ;
 int AT24_FLAG_NO_RDROL ;
 unsigned int BIT (unsigned int) ;
 size_t at24_io_limit ;

__attribute__((used)) static size_t at24_adjust_read_count(struct at24_data *at24,
          unsigned int offset, size_t count)
{
 unsigned int bits;
 size_t remainder;






 if (at24->flags & AT24_FLAG_NO_RDROL) {
  bits = (at24->flags & AT24_FLAG_ADDR16) ? 16 : 8;
  remainder = BIT(bits) - offset;
  if (count > remainder)
   count = remainder;
 }

 if (count > at24_io_limit)
  count = at24_io_limit;

 return count;
}
