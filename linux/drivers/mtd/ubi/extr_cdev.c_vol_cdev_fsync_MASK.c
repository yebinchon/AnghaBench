#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubi_volume_desc {TYPE_1__* vol; } ;
struct ubi_device {int /*<<< orphan*/  ubi_num; } ;
struct inode {int dummy; } ;
struct file {struct ubi_volume_desc* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct ubi_device* ubi; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, loff_t start, loff_t end,
			  int datasync)
{
	struct ubi_volume_desc *desc = file->private_data;
	struct ubi_device *ubi = desc->vol->ubi;
	struct inode *inode = FUNC0(file);
	int err;
	FUNC1(inode);
	err = FUNC3(ubi->ubi_num);
	FUNC2(inode);
	return err;
}