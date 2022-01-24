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
typedef  size_t u8 ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 char const** mlx5_fpga_error_strings ; 

__attribute__((used)) static const char *FUNC1(u8 syndrome)
{
	if (syndrome < FUNC0(mlx5_fpga_error_strings))
		return mlx5_fpga_error_strings[syndrome];
	return "Unknown";
}