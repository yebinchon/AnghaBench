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
typedef  unsigned int u16 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384X_AUXDATA_OFF ; 
 int /*<<< orphan*/  HFA384X_AUXOFFSET_OFF ; 
 int /*<<< orphan*/  HFA384X_AUXPAGE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, unsigned int addr, int len,
			  void *buf)
{
	u16 page, offset;
	if (addr & 1 || len & 1)
		return -1;

	page = addr >> 7;
	offset = addr & 0x7f;

	FUNC1(page, HFA384X_AUXPAGE_OFF);
	FUNC1(offset, HFA384X_AUXOFFSET_OFF);

	FUNC3(5);

#ifdef PRISM2_PCI
	{
		__le16 *pos = (__le16 *) buf;
		while (len > 0) {
			HFA384X_OUTW_DATA(*pos++, HFA384X_AUXDATA_OFF);
			len -= 2;
		}
	}
#else /* PRISM2_PCI */
	FUNC0(HFA384X_AUXDATA_OFF, buf, len / 2);
#endif /* PRISM2_PCI */

	return 0;
}