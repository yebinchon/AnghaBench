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
struct seq_file {int dummy; } ;
struct ab8500_gpadc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_AUX2 ; 
 int FUNC0 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int) ; 
 struct ab8500_gpadc* FUNC1 (char*) ; 
 int FUNC2 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  avg_sample ; 
 int /*<<< orphan*/  conv_type ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int) ; 
 int /*<<< orphan*/  trig_edge ; 
 int /*<<< orphan*/  trig_timer ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *p)
{
	int aux2_raw;
	int aux2_convert;
	struct ab8500_gpadc *gpadc;

	gpadc = FUNC1("ab8500-gpadc.0");
	aux2_raw = FUNC2(gpadc, ADC_AUX2,
		avg_sample, trig_edge, trig_timer, conv_type);
	aux2_convert = FUNC0(gpadc, ADC_AUX2,
		aux2_raw);

	FUNC3(s, "%d,0x%X\n", aux2_convert, aux2_raw);

	return 0;
}