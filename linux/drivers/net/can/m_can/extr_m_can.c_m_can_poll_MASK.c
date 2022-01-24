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
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_can_classdev*) ; 
 int FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*,int) ; 
 struct m_can_classdev* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct napi_struct *napi, int quota)
{
	struct net_device *dev = napi->dev;
	struct m_can_classdev *cdev = FUNC3(dev);
	int work_done;

	work_done = FUNC1(dev, quota);
	if (work_done < quota) {
		FUNC2(napi, work_done);
		FUNC0(cdev);
	}

	return work_done;
}