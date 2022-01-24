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
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_private {struct mwifiex_histogram_data* hist_data; } ;
struct mwifiex_histogram_data {int /*<<< orphan*/  num_samples; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 scalar_t__ MWIFIEX_HIST_MAX_SAMPLES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mwifiex_private *priv,
			   u8 rx_rate, s8 snr, s8 nflr)
{
	struct mwifiex_histogram_data *phist_data = priv->hist_data;

	if (FUNC0(&phist_data->num_samples) > MWIFIEX_HIST_MAX_SAMPLES)
		FUNC1(priv);
	FUNC2(priv, rx_rate, snr, nflr);
}