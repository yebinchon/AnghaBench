; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_init_mac_params_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_init_mac_params_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_mac_info, %struct.TYPE_4__ }
%struct.igc_mac_info = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i32 }

@IGC_RAR_ENTRIES = common dso_local global i32 0, align 4
@igc_reset_hw_base = common dso_local global i32 0, align 4
@igc_acquire_swfw_sync_i225 = common dso_local global i32 0, align 4
@igc_release_swfw_sync_i225 = common dso_local global i32 0, align 4
@igc_i225 = common dso_local global i64 0, align 8
@igc_setup_copper_link_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_hw*)* @igc_init_mac_params_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_init_mac_params_base(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca %struct.igc_dev_spec_base*, align 8
  %4 = alloca %struct.igc_mac_info*, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %5 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %6 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.igc_dev_spec_base* %7, %struct.igc_dev_spec_base** %3, align 8
  %8 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %9 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %8, i32 0, i32 0
  store %struct.igc_mac_info* %9, %struct.igc_mac_info** %4, align 8
  %10 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %11 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %10, i32 0, i32 0
  store i32 128, i32* %11, align 8
  %12 = load i32, i32* @IGC_RAR_ENTRIES, align 4
  %13 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %14 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @igc_reset_hw_base, align 4
  %16 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %17 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @igc_acquire_swfw_sync_i225, align 4
  %20 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %21 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @igc_release_swfw_sync_i225, align 4
  %24 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %25 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %28 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @igc_i225, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.igc_dev_spec_base*, %struct.igc_dev_spec_base** %3, align 8
  %34 = getelementptr inbounds %struct.igc_dev_spec_base, %struct.igc_dev_spec_base* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* @igc_setup_copper_link_base, align 4
  %37 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %38 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
