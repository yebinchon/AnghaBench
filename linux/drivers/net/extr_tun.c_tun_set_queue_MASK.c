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
struct tun_struct {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  security; } ;
struct tun_file {struct tun_struct* detached; int /*<<< orphan*/  tun; } ;
struct ifreq {int ifr_flags; } ;
struct file {struct tun_file* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_ATTACH_QUEUE ; 
 int IFF_DETACH_QUEUE ; 
 int IFF_MULTI_QUEUE ; 
 int IFF_NAPI ; 
 int IFF_NAPI_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct tun_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tun_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tun_struct*,struct file*,int,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct ifreq *ifr)
{
	struct tun_file *tfile = file->private_data;
	struct tun_struct *tun;
	int ret = 0;

	FUNC3();

	if (ifr->ifr_flags & IFF_ATTACH_QUEUE) {
		tun = tfile->detached;
		if (!tun) {
			ret = -EINVAL;
			goto unlock;
		}
		ret = FUNC5(tun->security);
		if (ret < 0)
			goto unlock;
		ret = FUNC6(tun, file, false, tun->flags & IFF_NAPI,
				 tun->flags & IFF_NAPI_FRAGS, true);
	} else if (ifr->ifr_flags & IFF_DETACH_QUEUE) {
		tun = FUNC2(tfile->tun);
		if (!tun || !(tun->flags & IFF_MULTI_QUEUE) || tfile->detached)
			ret = -EINVAL;
		else
			FUNC0(tfile, false);
	} else
		ret = -EINVAL;

	if (ret >= 0)
		FUNC1(tun->dev);

unlock:
	FUNC4();
	return ret;
}