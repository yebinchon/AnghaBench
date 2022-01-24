#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct firedtv {int /*<<< orphan*/  adapter; TYPE_3__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  frontend; int /*<<< orphan*/  dvbnet; int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC8(struct firedtv *fdtv)
{
	FUNC5(fdtv);
	FUNC4(&fdtv->fe);
	FUNC2(&fdtv->dvbnet);
	fdtv->demux.dmx.close(&fdtv->demux.dmx);
	fdtv->demux.dmx.remove_frontend(&fdtv->demux.dmx, &fdtv->frontend);
	FUNC1(&fdtv->dmxdev);
	FUNC0(&fdtv->demux);
	FUNC3(&fdtv->adapter);
}