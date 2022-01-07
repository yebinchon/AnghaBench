
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_io_buf {int dummy; } ;
struct ubi_device {int vid_hdr_alsize; } ;
typedef int gfp_t ;


 int kfree (struct ubi_vid_io_buf*) ;
 void* kmalloc (int ,int ) ;
 struct ubi_vid_io_buf* kzalloc (int,int ) ;
 int ubi_init_vid_buf (struct ubi_device const*,struct ubi_vid_io_buf*,void*) ;

__attribute__((used)) static inline struct ubi_vid_io_buf *
ubi_alloc_vid_buf(const struct ubi_device *ubi, gfp_t gfp_flags)
{
 struct ubi_vid_io_buf *vidb;
 void *buf;

 vidb = kzalloc(sizeof(*vidb), gfp_flags);
 if (!vidb)
  return ((void*)0);

 buf = kmalloc(ubi->vid_hdr_alsize, gfp_flags);
 if (!buf) {
  kfree(vidb);
  return ((void*)0);
 }

 ubi_init_vid_buf(ubi, vidb, buf);

 return vidb;
}
