#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int cbuflen; int dbuflen; int mailbox; scalar_t__ QWrite; void* dbuf; void* cbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int* mailbox ; 
 scalar_t__* mboxinuse ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* qels ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *cbuf, int cbuflen,
	void *dbuf, int dbuflen)
{

	int i = FUNC1();
	int ret;

	if(i) {
		qels[i].cbuf = cbuf;
		qels[i].cbuflen = cbuflen;
		qels[i].dbuf = dbuf;
		qels[i].dbuflen = dbuflen;
		qels[i].QWrite = 0;
		qels[i].mailbox = i;  /* this should be initted rather */
		FUNC0(&qels[i]);
		FUNC2(dev);
		ret = mailbox[i];
		mboxinuse[i]=0;
		return ret;
	}
	FUNC3("ltpc: could not allocate mbox\n");
	return -1;
}