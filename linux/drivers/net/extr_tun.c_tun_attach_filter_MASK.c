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
struct tun_struct {int numqueues; int filter_attached; int /*<<< orphan*/  fprog; int /*<<< orphan*/ * tfiles; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct tun_file {TYPE_1__ socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tun_file* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tun_struct*,int) ; 

__attribute__((used)) static int FUNC5(struct tun_struct *tun)
{
	int i, ret = 0;
	struct tun_file *tfile;

	for (i = 0; i < tun->numqueues; i++) {
		tfile = FUNC2(tun->tfiles[i]);
		FUNC0(tfile->socket.sk);
		ret = FUNC3(&tun->fprog, tfile->socket.sk);
		FUNC1(tfile->socket.sk);
		if (ret) {
			FUNC4(tun, i);
			return ret;
		}
	}

	tun->filter_attached = true;
	return ret;
}