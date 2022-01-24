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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 struct saa7134_dev* FUNC1 (struct file*) ; 

int FUNC2(struct file *file, void *priv, v4l2_std_id *std)
{
	struct saa7134_dev *dev = FUNC1(file);
	*std &= FUNC0(dev);
	return 0;
}