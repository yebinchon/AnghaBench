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
typedef  int u16 ;
struct airo_info {int /*<<< orphan*/  aux_lock; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ DATA0 ; 
 int FUNC0 (struct airo_info*,scalar_t__) ; 
 int SUCCESS ; 
 scalar_t__ SWS0 ; 
 scalar_t__ SWS2 ; 
 int FUNC1 (struct airo_info*,int,int,int*) ; 
 int /*<<< orphan*/  do8bitIO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct airo_info *ai, __le16 *pu16Dst,
			int bytelen, int whichbap)
{
	u16 len;
	u16 page;
	u16 offset;
	u16 next;
	int words;
	int i;
	unsigned long flags;

	FUNC4(&ai->aux_lock, flags);
	page = FUNC0(ai, SWS0+whichbap);
	offset = FUNC0(ai, SWS2+whichbap);
	next = FUNC1(ai, page, offset, &len);
	words = (bytelen+1)>>1;

	for (i=0; i<words;) {
		int count;
		count = (len>>1) < (words-i) ? (len>>1) : (words-i);
		if ( !do8bitIO )
			FUNC3( ai->dev->base_addr+DATA0+whichbap,
			      pu16Dst+i,count );
		else
			FUNC2( ai->dev->base_addr+DATA0+whichbap,
			      pu16Dst+i, count << 1 );
		i += count;
		if (i<words) {
			next = FUNC1(ai, next, 4, &len);
		}
	}
	FUNC5(&ai->aux_lock, flags);
	return SUCCESS;
}