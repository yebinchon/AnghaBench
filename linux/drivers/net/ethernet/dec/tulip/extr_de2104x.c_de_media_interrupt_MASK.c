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
struct de_private {scalar_t__ media_type; int /*<<< orphan*/  media_timer; int /*<<< orphan*/  dev; scalar_t__ media_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DE_MEDIA_AUI ; 
 scalar_t__ DE_MEDIA_BNC ; 
 scalar_t__ DE_MEDIA_TP_AUTO ; 
 scalar_t__ DE_TIMER_LINK ; 
 scalar_t__ DE_TIMER_NO_LINK ; 
 int LinkFail ; 
 int LinkPass ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct de_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct de_private*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 (struct de_private *de, u32 status)
{
	if (status & LinkPass) {
		/* Ignore if current media is AUI or BNC and we can't use TP */
		if ((de->media_type == DE_MEDIA_AUI ||
		     de->media_type == DE_MEDIA_BNC) &&
		    (de->media_lock ||
		     !FUNC3(de, DE_MEDIA_TP_AUTO)))
			return;
		/* If current media is not TP, change it to TP */
		if ((de->media_type == DE_MEDIA_AUI ||
		     de->media_type == DE_MEDIA_BNC)) {
			de->media_type = DE_MEDIA_TP_AUTO;
			FUNC6(de);
			FUNC4(de);
			FUNC5(de);
		}
		FUNC2(de);
		FUNC7(&de->media_timer, jiffies + DE_TIMER_LINK);
		return;
	}

	FUNC0(!(status & LinkFail));
	/* Mark the link as down only if current media is TP */
	if (FUNC8(de->dev) && de->media_type != DE_MEDIA_AUI &&
	    de->media_type != DE_MEDIA_BNC) {
		FUNC1(de);
		FUNC7(&de->media_timer, jiffies + DE_TIMER_NO_LINK);
	}
}