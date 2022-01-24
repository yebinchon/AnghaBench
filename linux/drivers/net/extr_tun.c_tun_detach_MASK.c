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
struct tun_struct {struct net_device* dev; } ;
struct tun_file {int /*<<< orphan*/  tun; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tun_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct tun_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct tun_file *tfile, bool clean)
{
	struct tun_struct *tun;
	struct net_device *dev;

	FUNC3();
	tun = FUNC2(tfile->tun);
	dev = tun ? tun->dev : NULL;
	FUNC0(tfile, clean);
	if (dev)
		FUNC1(dev);
	FUNC4();
}