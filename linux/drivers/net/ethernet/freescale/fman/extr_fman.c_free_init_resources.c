
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman {int fifo_size; scalar_t__ fifo_offset; int muram; int cam_size; scalar_t__ cam_offset; } ;


 int fman_muram_free_mem (int ,scalar_t__,int ) ;

__attribute__((used)) static void free_init_resources(struct fman *fman)
{
 if (fman->cam_offset)
  fman_muram_free_mem(fman->muram, fman->cam_offset,
        fman->cam_size);
 if (fman->fifo_offset)
  fman_muram_free_mem(fman->muram, fman->fifo_offset,
        fman->fifo_size);
}
