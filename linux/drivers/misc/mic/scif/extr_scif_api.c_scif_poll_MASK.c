#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scif_pollepd {int events; int revents; TYPE_3__* epd; } ;
struct TYPE_4__ {int _key; int /*<<< orphan*/ * _qproc; } ;
struct poll_wqueues {int error; TYPE_1__ pt; } ;
typedef  TYPE_1__ poll_table ;
typedef  int __poll_t ;
struct TYPE_5__ {int /*<<< orphan*/  anon; } ;

/* Variables and functions */
 int EINTR ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (struct poll_wqueues*) ; 
 int /*<<< orphan*/  FUNC3 (struct poll_wqueues*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct scif_pollepd *ufds, unsigned int nfds, long timeout_msecs)
{
	struct poll_wqueues table;
	poll_table *pt;
	int i, count = 0, timed_out = timeout_msecs == 0;
	__poll_t mask;
	u64 timeout = timeout_msecs < 0 ? MAX_SCHEDULE_TIMEOUT
		: FUNC1(timeout_msecs);

	FUNC3(&table);
	pt = &table.pt;
	while (1) {
		for (i = 0; i < nfds; i++) {
			pt->_key = ufds[i].events | EPOLLERR | EPOLLHUP;
			mask = FUNC0(ufds[i].epd->anon,
					     pt, ufds[i].epd);
			mask &= ufds[i].events | EPOLLERR | EPOLLHUP;
			if (mask) {
				count++;
				pt->_qproc = NULL;
			}
			ufds[i].revents = mask;
		}
		pt->_qproc = NULL;
		if (!count) {
			count = table.error;
			if (FUNC5(current))
				count = -EINTR;
		}
		if (count || timed_out)
			break;

		if (!FUNC4(timeout))
			timed_out = 1;
	}
	FUNC2(&table);
	return count;
}