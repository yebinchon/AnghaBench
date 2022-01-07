
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct kvec {size_t iov_len; void* iov_base; } ;
typedef size_t loff_t ;


 size_t ECCBUF_DIV (size_t) ;
 size_t ECCBUF_MOD (size_t) ;
 size_t ECCBUF_SIZE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,void*,size_t) ;
 int memset (char*,int,size_t) ;
 int mtd_write (struct mtd_info*,size_t,size_t,size_t*,char*) ;

__attribute__((used)) static int
cfi_staa_writev(struct mtd_info *mtd, const struct kvec *vecs,
  unsigned long count, loff_t to, size_t *retlen)
{
 unsigned long i;
 size_t totlen = 0, thislen;
 int ret = 0;
 size_t buflen = 0;
 char *buffer;

 if (!ECCBUF_SIZE) {



  return -EIO;
 }
 buffer = kmalloc(ECCBUF_SIZE, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 for (i=0; i<count; i++) {
  size_t elem_len = vecs[i].iov_len;
  void *elem_base = vecs[i].iov_base;
  if (!elem_len)
   continue;
  if (buflen) {
   if (buflen + elem_len < ECCBUF_SIZE) {
    memcpy(buffer+buflen, elem_base, elem_len);
    buflen += elem_len;
    continue;
   }
   memcpy(buffer+buflen, elem_base, ECCBUF_SIZE-buflen);
   ret = mtd_write(mtd, to, ECCBUF_SIZE, &thislen,
     buffer);
   totlen += thislen;
   if (ret || thislen != ECCBUF_SIZE)
    goto write_error;
   elem_len -= thislen-buflen;
   elem_base += thislen-buflen;
   to += ECCBUF_SIZE;
  }
  if (ECCBUF_DIV(elem_len)) {
   ret = mtd_write(mtd, to, ECCBUF_DIV(elem_len),
     &thislen, elem_base);
   totlen += thislen;
   if (ret || thislen != ECCBUF_DIV(elem_len))
    goto write_error;
   to += thislen;
  }
  buflen = ECCBUF_MOD(elem_len);
  if (buflen) {
   memset(buffer, 0xff, ECCBUF_SIZE);
   memcpy(buffer, elem_base + thislen, buflen);
  }
 }
 if (buflen) {

  ret = mtd_write(mtd, to, buflen, &thislen, buffer);
  totlen += thislen;
  if (ret || thislen != ECCBUF_SIZE)
   goto write_error;
 }
write_error:
 if (retlen)
  *retlen = totlen;
 kfree(buffer);
 return ret;
}
