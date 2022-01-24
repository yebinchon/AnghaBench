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
struct saa7134_tvnorm {int h_start; int h_stop; int vbi_v_start_0; int vbi_v_stop_0; } ;
struct saa7134_dev {int vbi_hlen; int vbi_vlen; struct saa7134_tvnorm* tvnorm; } ;
struct saa7134_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int VBI_SCALE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(struct saa7134_dev *dev, struct saa7134_buf *buf,
		      int task)
{
	struct saa7134_tvnorm *norm = dev->tvnorm;

	/* setup video scaler */
	FUNC18(FUNC5(task), norm->h_start     &  0xff);
	FUNC18(FUNC6(task), norm->h_start     >> 8);
	FUNC18(FUNC7(task),  norm->h_stop      &  0xff);
	FUNC18(FUNC8(task),  norm->h_stop      >> 8);
	FUNC18(FUNC13(task), norm->vbi_v_start_0 &  0xff);
	FUNC18(FUNC14(task), norm->vbi_v_start_0 >> 8);
	FUNC18(FUNC15(task),  norm->vbi_v_stop_0  &  0xff);
	FUNC18(FUNC16(task),  norm->vbi_v_stop_0  >> 8);

	FUNC18(FUNC3(task),        VBI_SCALE & 0xff);
	FUNC18(FUNC4(task),        VBI_SCALE >> 8);
	FUNC18(FUNC10(task),   0x00);
	FUNC18(FUNC9(task), 0x00);

	FUNC18(FUNC1(task), dev->vbi_hlen & 0xff);
	FUNC18(FUNC2(task), dev->vbi_hlen >> 8);
	FUNC18(FUNC11(task), dev->vbi_vlen & 0xff);
	FUNC18(FUNC12(task), dev->vbi_vlen >> 8);

	FUNC17(FUNC0(task), 0xc0, 0x00);
}