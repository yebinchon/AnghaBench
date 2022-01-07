
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jmb38x_ms_host {int io_pos; int* io_word; } ;



__attribute__((used)) static unsigned int jmb38x_ms_read_reg_data(struct jmb38x_ms_host *host,
         unsigned char *buf,
         unsigned int length)
{
 unsigned int off = 0;

 while (host->io_pos > 4 && length) {
  buf[off++] = host->io_word[0] & 0xff;
  host->io_word[0] >>= 8;
  length--;
  host->io_pos--;
 }

 if (!length)
  return off;

 while (host->io_pos && length) {
  buf[off++] = host->io_word[1] & 0xff;
  host->io_word[1] >>= 8;
  length--;
  host->io_pos--;
 }

 return off;
}
