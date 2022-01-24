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
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {struct media_pad* pads; } ;

/* Variables and functions */
 int MEDIA_PAD_FL_SOURCE ; 
 struct media_pad* FUNC0 (struct media_pad*) ; 

__attribute__((used)) static struct media_entity *FUNC1(struct media_entity *me)
{
	struct media_pad *pad = &me->pads[0];

	while (!(pad->flags & MEDIA_PAD_FL_SOURCE)) {
		pad = FUNC0(pad);
		if (!pad)
			break;
		me = pad->entity;
		pad = &me->pads[0];
	}

	return me;
}