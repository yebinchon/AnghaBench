
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_io_buf {struct ubi_vid_io_buf* buffer; } ;


 int kfree (struct ubi_vid_io_buf*) ;

__attribute__((used)) static inline void ubi_free_vid_buf(struct ubi_vid_io_buf *vidb)
{
 if (!vidb)
  return;

 kfree(vidb->buffer);
 kfree(vidb);
}
