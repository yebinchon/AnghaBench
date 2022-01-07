
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct major_info {char const* device_name; int next; int minor_lock; int minor_idr; int major; } ;
typedef int dev_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAJOR (int ) ;
 int idr_init (int *) ;
 struct major_info* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int major_list ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int tap_list_add(dev_t major, const char *device_name)
{
 struct major_info *tap_major;

 tap_major = kzalloc(sizeof(*tap_major), GFP_ATOMIC);
 if (!tap_major)
  return -ENOMEM;

 tap_major->major = MAJOR(major);

 idr_init(&tap_major->minor_idr);
 spin_lock_init(&tap_major->minor_lock);

 tap_major->device_name = device_name;

 list_add_tail_rcu(&tap_major->next, &major_list);
 return 0;
}
