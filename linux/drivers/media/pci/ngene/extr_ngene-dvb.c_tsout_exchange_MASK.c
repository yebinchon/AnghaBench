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
typedef  int u32 ;
struct ngene_channel {struct ngene* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
struct ngene {TYPE_1__ tsout_rbuf; } ;

/* Variables and functions */
 int DF_SWAP32 ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void *FUNC5(void *priv, void *buf, u32 len, u32 clock, u32 flags)
{
	struct ngene_channel *chan = priv;
	struct ngene *dev = chan->dev;
	u32 alen;

	alen = FUNC1(&dev->tsout_rbuf);
	alen -= alen % 188;

	if (alen < len)
		FUNC0(buf + alen, len - alen, flags);
	else
		alen = len;
	FUNC2(&dev->tsout_rbuf, buf, alen);
	if (flags & DF_SWAP32)
		FUNC3((u32 *)buf, alen);
	FUNC4(&dev->tsout_rbuf.queue);
	return buf;
}