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
struct serio {int /*<<< orphan*/  dev; } ;
struct rain {int /*<<< orphan*/  adap; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rain*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 struct rain* FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct serio *serio)
{
	struct rain *rain = FUNC5(serio);

	FUNC0(&rain->work);
	FUNC1(rain->adap);
	FUNC2(&serio->dev, "disconnected\n");
	FUNC4(serio);
	FUNC6(serio, NULL);
	FUNC3(rain);
}