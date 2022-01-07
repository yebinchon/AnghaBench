; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_hmc.c_i40e_remove_sd_bp_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_hmc.c_i40e_remove_sd_bp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@I40E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@I40E_SD_TYPE_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_remove_sd_bp_new(%struct.i40e_hw* %0, %struct.i40e_hmc_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_hmc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_hmc_sd_entry*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_hmc_info* %1, %struct.i40e_hmc_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @I40E_NOT_SUPPORTED, align 4
  store i32 %14, i32* %5, align 4
  br label %32

15:                                               ; preds = %4
  %16 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %7, align 8
  %17 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %19, i64 %20
  store %struct.i40e_hmc_sd_entry* %21, %struct.i40e_hmc_sd_entry** %10, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @I40E_SD_TYPE_DIRECT, align 4
  %25 = call i32 @I40E_CLEAR_PF_SD_ENTRY(%struct.i40e_hw* %22, i64 %23, i32 %24)
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %27 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %10, align 8
  %28 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @i40e_free_dma_mem(%struct.i40e_hw* %26, i32* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %15, %13
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @I40E_CLEAR_PF_SD_ENTRY(%struct.i40e_hw*, i64, i32) #1

declare dso_local i32 @i40e_free_dma_mem(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
