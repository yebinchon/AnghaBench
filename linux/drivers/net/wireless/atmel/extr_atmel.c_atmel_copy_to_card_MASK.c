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
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, u16 dest,
			       const unsigned char *src, u16 len)
{
	int i;
	FUNC2(dev, dest);
	if (dest % 2) {
		FUNC1(dev, DR, *src);
		src++; len--;
	}
	for (i = len; i > 1 ; i -= 2) {
		u8 lb = *src++;
		u8 hb = *src++;
		FUNC0(dev, DR, lb | (hb << 8));
	}
	if (i)
		FUNC1(dev, DR, *src);
}