
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct net_device {int name; } ;
struct airo_info {int proc_name; struct proc_dir_entry* proc_entry; } ;


 int ENOMEM ;
 int airo_entry ;
 int airo_perm ;
 int proc_APList_ops ;
 int proc_BSSList_ops ;
 int proc_SSID_ops ;
 int proc_config_ops ;
 struct proc_dir_entry* proc_create_data (char*,int,struct proc_dir_entry*,int *,struct net_device*) ;
 int proc_kgid ;
 int proc_kuid ;
 struct proc_dir_entry* proc_mkdir_mode (int ,int ,int ) ;
 int proc_perm ;
 int proc_set_user (struct proc_dir_entry*,int ,int ) ;
 int proc_stats_ops ;
 int proc_statsdelta_ops ;
 int proc_status_ops ;
 int proc_wepkey_ops ;
 int remove_proc_subtree (int ,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int setup_proc_entry( struct net_device *dev,
        struct airo_info *apriv ) {
 struct proc_dir_entry *entry;


 strcpy(apriv->proc_name,dev->name);
 apriv->proc_entry = proc_mkdir_mode(apriv->proc_name, airo_perm,
         airo_entry);
 if (!apriv->proc_entry)
  return -ENOMEM;
 proc_set_user(apriv->proc_entry, proc_kuid, proc_kgid);


 entry = proc_create_data("StatsDelta", 0444 & proc_perm,
     apriv->proc_entry, &proc_statsdelta_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("Stats", 0444 & proc_perm,
     apriv->proc_entry, &proc_stats_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("Status", 0444 & proc_perm,
     apriv->proc_entry, &proc_status_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("Config", proc_perm,
     apriv->proc_entry, &proc_config_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("SSID", proc_perm,
     apriv->proc_entry, &proc_SSID_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("APList", proc_perm,
     apriv->proc_entry, &proc_APList_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("BSSList", proc_perm,
     apriv->proc_entry, &proc_BSSList_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);


 entry = proc_create_data("WepKey", proc_perm,
     apriv->proc_entry, &proc_wepkey_ops, dev);
 if (!entry)
  goto fail;
 proc_set_user(entry, proc_kuid, proc_kgid);
 return 0;

fail:
 remove_proc_subtree(apriv->proc_name, airo_entry);
 return -ENOMEM;
}
