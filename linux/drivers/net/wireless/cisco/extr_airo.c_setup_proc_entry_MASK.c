#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc_dir_entry {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct airo_info {int /*<<< orphan*/  proc_name; struct proc_dir_entry* proc_entry; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  airo_entry ; 
 int /*<<< orphan*/  airo_perm ; 
 int /*<<< orphan*/  proc_APList_ops ; 
 int /*<<< orphan*/  proc_BSSList_ops ; 
 int /*<<< orphan*/  proc_SSID_ops ; 
 int /*<<< orphan*/  proc_config_ops ; 
 struct proc_dir_entry* FUNC0 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  proc_kgid ; 
 int /*<<< orphan*/  proc_kuid ; 
 struct proc_dir_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int proc_perm ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_stats_ops ; 
 int /*<<< orphan*/  proc_statsdelta_ops ; 
 int /*<<< orphan*/  proc_status_ops ; 
 int /*<<< orphan*/  proc_wepkey_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( struct net_device *dev,
			     struct airo_info *apriv ) {
	struct proc_dir_entry *entry;

	/* First setup the device directory */
	FUNC4(apriv->proc_name,dev->name);
	apriv->proc_entry = FUNC1(apriv->proc_name, airo_perm,
					    airo_entry);
	if (!apriv->proc_entry)
		return -ENOMEM;
	FUNC2(apriv->proc_entry, proc_kuid, proc_kgid);

	/* Setup the StatsDelta */
	entry = FUNC0("StatsDelta", 0444 & proc_perm,
				 apriv->proc_entry, &proc_statsdelta_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the Stats */
	entry = FUNC0("Stats", 0444 & proc_perm,
				 apriv->proc_entry, &proc_stats_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the Status */
	entry = FUNC0("Status", 0444 & proc_perm,
				 apriv->proc_entry, &proc_status_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the Config */
	entry = FUNC0("Config", proc_perm,
				 apriv->proc_entry, &proc_config_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the SSID */
	entry = FUNC0("SSID", proc_perm,
				 apriv->proc_entry, &proc_SSID_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the APList */
	entry = FUNC0("APList", proc_perm,
				 apriv->proc_entry, &proc_APList_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the BSSList */
	entry = FUNC0("BSSList", proc_perm,
				 apriv->proc_entry, &proc_BSSList_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);

	/* Setup the WepKey */
	entry = FUNC0("WepKey", proc_perm,
				 apriv->proc_entry, &proc_wepkey_ops, dev);
	if (!entry)
		goto fail;
	FUNC2(entry, proc_kuid, proc_kgid);
	return 0;

fail:
	FUNC3(apriv->proc_name, airo_entry);
	return -ENOMEM;
}