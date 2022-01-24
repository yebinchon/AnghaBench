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
struct hl_ioctl_desc {int dummy; } ;
struct hl_fpriv {struct hl_device* hdev; } ;
struct hl_device {int /*<<< orphan*/  dev_ctrl; } ;
struct file {struct hl_fpriv* private_data; } ;

/* Variables and functions */
 long ENOTTY ; 
 unsigned int HL_IOCTL_INFO ; 
 unsigned int FUNC0 (unsigned int) ; 
 long FUNC1 (struct file*,unsigned int,unsigned long,struct hl_ioctl_desc const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct hl_ioctl_desc* hl_ioctls_control ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

long FUNC4(struct file *filep, unsigned int cmd, unsigned long arg)
{
	struct hl_fpriv *hpriv = filep->private_data;
	struct hl_device *hdev = hpriv->hdev;
	const struct hl_ioctl_desc *ioctl = NULL;
	unsigned int nr = FUNC0(cmd);

	if (nr == FUNC0(HL_IOCTL_INFO)) {
		ioctl = &hl_ioctls_control[nr];
	} else {
		FUNC2(hdev->dev_ctrl, "invalid ioctl: pid=%d, nr=0x%02x\n",
			FUNC3(current), nr);
		return -ENOTTY;
	}

	return FUNC1(filep, cmd, arg, ioctl, hdev->dev_ctrl);
}