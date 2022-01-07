
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct msb_data {int pages_in_block; scalar_t__ page_size; } ;


 int msb_cache_read (struct msb_data*,int,int,struct scatterlist*,int) ;

__attribute__((used)) static int msb_do_read_request(struct msb_data *msb, int lba,
  int page, struct scatterlist *sg, int len, int *sucessfuly_read)
{
 int error = 0;
 int offset = 0;
 *sucessfuly_read = 0;

 while (offset < len) {

  error = msb_cache_read(msb, lba, page, sg, offset);
  if (error)
   return error;

  offset += msb->page_size;
  *sucessfuly_read += msb->page_size;

  page++;
  if (page == msb->pages_in_block) {
   page = 0;
   lba++;
  }
 }
 return 0;
}
