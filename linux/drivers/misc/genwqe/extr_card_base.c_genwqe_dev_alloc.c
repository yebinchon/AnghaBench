
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {unsigned int card_idx; int * vf_jobtimeout_msec; int kill_timeout; int ddcb_software_timeout; int print_lock; int card_state; int file_list; int file_lock; int queue_waitq; int use_platform_recovery; int debugfs_genwqe; int class_genwqe; } ;


 int CONFIG_GENWQE_PLATFORM_ERROR_RECOVERY ;
 int ENODEV ;
 int ENOMEM ;
 struct genwqe_dev* ERR_PTR (int ) ;
 unsigned int GENWQE_CARD_NO_MAX ;
 int GENWQE_CARD_UNUSED ;
 int GENWQE_DDCB_SOFTWARE_TIMEOUT ;
 int GENWQE_KILL_TIMEOUT ;
 unsigned int GENWQE_MAX_VFS ;
 int GENWQE_VF_JOBTIMEOUT_MSEC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int class_genwqe ;
 int debugfs_genwqe ;
 struct genwqe_dev** genwqe_devices ;
 int init_waitqueue_head (int *) ;
 struct genwqe_dev* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct genwqe_dev *genwqe_dev_alloc(void)
{
 unsigned int i = 0, j;
 struct genwqe_dev *cd;

 for (i = 0; i < GENWQE_CARD_NO_MAX; i++) {
  if (genwqe_devices[i] == ((void*)0))
   break;
 }
 if (i >= GENWQE_CARD_NO_MAX)
  return ERR_PTR(-ENODEV);

 cd = kzalloc(sizeof(struct genwqe_dev), GFP_KERNEL);
 if (!cd)
  return ERR_PTR(-ENOMEM);

 cd->card_idx = i;
 cd->class_genwqe = class_genwqe;
 cd->debugfs_genwqe = debugfs_genwqe;





 cd->use_platform_recovery = CONFIG_GENWQE_PLATFORM_ERROR_RECOVERY;

 init_waitqueue_head(&cd->queue_waitq);

 spin_lock_init(&cd->file_lock);
 INIT_LIST_HEAD(&cd->file_list);

 cd->card_state = GENWQE_CARD_UNUSED;
 spin_lock_init(&cd->print_lock);

 cd->ddcb_software_timeout = GENWQE_DDCB_SOFTWARE_TIMEOUT;
 cd->kill_timeout = GENWQE_KILL_TIMEOUT;

 for (j = 0; j < GENWQE_MAX_VFS; j++)
  cd->vf_jobtimeout_msec[j] = GENWQE_VF_JOBTIMEOUT_MSEC;

 genwqe_devices[i] = cd;
 return cd;
}
