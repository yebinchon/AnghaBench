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
struct s5p_cec_dev {int /*<<< orphan*/  dev; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 struct s5p_cec_dev* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct s5p_cec_dev*) ; 

__attribute__((used)) static int FUNC11(struct cec_adapter *adap, bool enable)
{
	struct s5p_cec_dev *cec = FUNC0(adap);

	if (enable) {
		FUNC2(cec->dev);

		FUNC6(cec);

		FUNC7(cec);
		FUNC8(cec);

		FUNC10(cec);
		FUNC9(cec);
		FUNC3(cec);
	} else {
		FUNC5(cec);
		FUNC4(cec);
		FUNC1(cec->dev);
	}

	return 0;
}