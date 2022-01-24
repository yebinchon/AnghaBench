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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AVE_VR ; 
 int FUNC0 (int,int) ; 
 struct ave_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev, char *buf, int len)
{
	struct ave_private *priv = FUNC1(ndev);
	u32 major, minor, vr;

	vr = FUNC2(priv->base + AVE_VR);
	major = (vr & FUNC0(15, 8)) >> 8;
	minor = (vr & FUNC0(7, 0));
	FUNC3(buf, len, "v%u.%u", major, minor);
}