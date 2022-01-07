
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_copy_work {int remote_dev; } ;


 int scif_iounmap (void*,size_t,int ) ;

__attribute__((used)) static inline void
iounmap_remote(void *virt, size_t size, struct scif_copy_work *work)
{
 scif_iounmap(virt, size, work->remote_dev);
}
