
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xvip_device {int dev; } ;


 int XVIP_CTRL_VERSION ;
 int XVIP_CTRL_VERSION_MAJOR_MASK ;
 int XVIP_CTRL_VERSION_MAJOR_SHIFT ;
 int XVIP_CTRL_VERSION_MINOR_MASK ;
 int XVIP_CTRL_VERSION_MINOR_SHIFT ;
 int XVIP_CTRL_VERSION_REVISION_MASK ;
 int XVIP_CTRL_VERSION_REVISION_SHIFT ;
 int dev_info (int ,char*,int,int,int) ;
 int xvip_read (struct xvip_device*,int ) ;

__attribute__((used)) static inline void xvip_print_version(struct xvip_device *xvip)
{
 u32 version;

 version = xvip_read(xvip, XVIP_CTRL_VERSION);

 dev_info(xvip->dev, "device found, version %u.%02x%x\n",
   ((version & XVIP_CTRL_VERSION_MAJOR_MASK) >>
    XVIP_CTRL_VERSION_MAJOR_SHIFT),
   ((version & XVIP_CTRL_VERSION_MINOR_MASK) >>
    XVIP_CTRL_VERSION_MINOR_SHIFT),
   ((version & XVIP_CTRL_VERSION_REVISION_MASK) >>
    XVIP_CTRL_VERSION_REVISION_SHIFT));
}
