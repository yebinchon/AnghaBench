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
struct inode {scalar_t__ i_private; } ;
struct ibmasmfs_heartbeat_data {int /*<<< orphan*/  heartbeat; scalar_t__ sp; scalar_t__ active; } ;
struct file {struct ibmasmfs_heartbeat_data* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct ibmasmfs_heartbeat_data* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct ibmasmfs_heartbeat_data *rhbeat;

	if (!inode->i_private)
		return -ENODEV;

	rhbeat = FUNC1(sizeof(struct ibmasmfs_heartbeat_data), GFP_KERNEL);
	if (!rhbeat)
		return -ENOMEM;

	rhbeat->sp = inode->i_private;
	rhbeat->active = 0;
	FUNC0(rhbeat->sp, &rhbeat->heartbeat);
	file->private_data = rhbeat;
	return 0;
}