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
struct file {int dummy; } ;
struct cx88_core {char* name; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdl; } ;
struct cx8802_dev {TYPE_1__ cxhdl; struct cx88_core* core; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,struct cx88_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_status ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct cx8802_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv)
{
	struct cx8802_dev *dev = FUNC3(file);
	struct cx88_core *core = dev->core;
	char name[32 + 2];

	FUNC1(name, sizeof(name), "%s/2", core->name);
	FUNC0(core, core, log_status);
	FUNC2(&dev->cxhdl.hdl, name);
	return 0;
}