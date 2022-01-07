; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_remove_sd_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_remove_sd_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_hmc_info*, i32)* @i40e_remove_sd_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_remove_sd_bp(%struct.i40e_hw* %0, %struct.i40e_hmc_info* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_hmc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_hmc_info* %1, %struct.i40e_hmc_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @i40e_prep_remove_sd_bp(%struct.i40e_hmc_info* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %14 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @i40e_remove_sd_bp_new(%struct.i40e_hw* %13, %struct.i40e_hmc_info* %14, i32 %15, i32 1)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %7, align 4
  ret i32 %18
}

declare dso_local i32 @i40e_prep_remove_sd_bp(%struct.i40e_hmc_info*, i32) #1

declare dso_local i32 @i40e_remove_sd_bp_new(%struct.i40e_hw*, %struct.i40e_hmc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
