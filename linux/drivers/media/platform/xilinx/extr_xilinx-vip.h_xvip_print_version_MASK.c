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
struct xvip_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  XVIP_CTRL_VERSION ; 
 int XVIP_CTRL_VERSION_MAJOR_MASK ; 
 int XVIP_CTRL_VERSION_MAJOR_SHIFT ; 
 int XVIP_CTRL_VERSION_MINOR_MASK ; 
 int XVIP_CTRL_VERSION_MINOR_SHIFT ; 
 int XVIP_CTRL_VERSION_REVISION_MASK ; 
 int XVIP_CTRL_VERSION_REVISION_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC1 (struct xvip_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct xvip_device *xvip)
{
	u32 version;

	version = FUNC1(xvip, XVIP_CTRL_VERSION);

	FUNC0(xvip->dev, "device found, version %u.%02x%x\n",
		 ((version & XVIP_CTRL_VERSION_MAJOR_MASK) >>
		  XVIP_CTRL_VERSION_MAJOR_SHIFT),
		 ((version & XVIP_CTRL_VERSION_MINOR_MASK) >>
		  XVIP_CTRL_VERSION_MINOR_SHIFT),
		 ((version & XVIP_CTRL_VERSION_REVISION_MASK) >>
		  XVIP_CTRL_VERSION_REVISION_SHIFT));
}