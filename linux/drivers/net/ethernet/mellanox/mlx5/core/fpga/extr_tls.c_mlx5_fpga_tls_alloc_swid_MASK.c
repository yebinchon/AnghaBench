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
struct idr {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SWID_END ; 
 int /*<<< orphan*/  SWID_START ; 
 int FUNC1 (struct idr*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct idr *idr, spinlock_t *idr_spinlock,
				    void *ptr)
{
	unsigned long flags;
	int ret;

	/* TLS metadata format is 1 byte for syndrome followed
	 * by 3 bytes of swid (software ID)
	 * swid must not exceed 3 bytes.
	 * See tls_rxtx.c:insert_pet() for details
	 */
	FUNC0((SWID_END - 1) & 0xFF000000);

	FUNC2(GFP_KERNEL);
	FUNC4(idr_spinlock, flags);
	ret = FUNC1(idr, ptr, SWID_START, SWID_END, GFP_ATOMIC);
	FUNC5(idr_spinlock, flags);
	FUNC3();

	return ret;
}