
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_io_buf {void* hdr; void* buffer; } ;
struct ubi_device {int vid_hdr_shift; int vid_hdr_alsize; } ;


 int memset (void*,int ,int ) ;

__attribute__((used)) static inline void ubi_init_vid_buf(const struct ubi_device *ubi,
        struct ubi_vid_io_buf *vidb,
        void *buf)
{
 if (buf)
  memset(buf, 0, ubi->vid_hdr_alsize);

 vidb->buffer = buf;
 vidb->hdr = buf + ubi->vid_hdr_shift;
}
