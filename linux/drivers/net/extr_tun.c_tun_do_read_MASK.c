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
struct xdp_frame {int dummy; } ;
struct tun_struct {int dummy; } ;
struct tun_file {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tun_struct*,char*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 struct xdp_frame* FUNC6 (void*) ; 
 int FUNC7 (struct tun_struct*,struct tun_file*,struct sk_buff*,struct iov_iter*) ; 
 int FUNC8 (struct tun_struct*,struct tun_file*,struct xdp_frame*,struct iov_iter*) ; 
 void* FUNC9 (struct tun_file*,int,int*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct xdp_frame*) ; 

__attribute__((used)) static ssize_t FUNC12(struct tun_struct *tun, struct tun_file *tfile,
			   struct iov_iter *to,
			   int noblock, void *ptr)
{
	ssize_t ret;
	int err;

	FUNC3(KERN_INFO, tun, "tun_do_read\n");

	if (!FUNC1(to)) {
		FUNC5(ptr);
		return 0;
	}

	if (!ptr) {
		/* Read frames from ring */
		ptr = FUNC9(tfile, noblock, &err);
		if (!ptr)
			return err;
	}

	if (FUNC4(ptr)) {
		struct xdp_frame *xdpf = FUNC6(ptr);

		ret = FUNC8(tun, tfile, xdpf, to);
		FUNC11(xdpf);
	} else {
		struct sk_buff *skb = ptr;

		ret = FUNC7(tun, tfile, skb, to);
		if (FUNC10(ret < 0))
			FUNC2(skb);
		else
			FUNC0(skb);
	}

	return ret;
}