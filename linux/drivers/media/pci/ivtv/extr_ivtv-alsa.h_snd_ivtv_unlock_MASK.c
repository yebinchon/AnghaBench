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
struct snd_ivtv_card {int /*<<< orphan*/  v4l2_dev; } ;
struct ivtv {int /*<<< orphan*/  serialize_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ivtv* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct snd_ivtv_card *itvsc)
{
	struct ivtv *itv = FUNC1(itvsc->v4l2_dev);
	FUNC0(&itv->serialize_lock);
}