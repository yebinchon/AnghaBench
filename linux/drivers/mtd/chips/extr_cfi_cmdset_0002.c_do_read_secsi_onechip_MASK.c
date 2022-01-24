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
typedef  int /*<<< orphan*/  u_char ;
struct map_info {int dummy; } ;
struct flchip {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wq; scalar_t__ start; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FL_READY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct map_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct map_info*,struct flchip*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct map_info*,struct flchip*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC11(struct map_info *map,
					struct flchip *chip, loff_t adr,
					size_t len, u_char *buf,
					size_t grouplen)
{
	FUNC0(wait, current);

 retry:
	FUNC3(&chip->mutex);

	if (chip->state != FL_READY){
		FUNC9(TASK_UNINTERRUPTIBLE);
		FUNC1(&chip->wq, &wait);

		FUNC4(&chip->mutex);

		FUNC8();
		FUNC7(&chip->wq, &wait);

		goto retry;
	}

	adr += chip->start;

	chip->state = FL_READY;

	FUNC5(map, chip, adr, len);
	FUNC2(map, buf, adr, len);
	FUNC6(map, chip, adr, len);

	FUNC10(&chip->wq);
	FUNC4(&chip->mutex);

	return 0;
}