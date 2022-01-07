; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_get_invariants_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_get_invariants_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { i32, %struct.igc_mac_info, %struct.TYPE_2__ }
%struct.igc_mac_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IGC_ERR_MAC_INIT = common dso_local global i64 0, align 8
@igc_media_type_copper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*)* @igc_get_invariants_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_get_invariants_base(%struct.igc_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca %struct.igc_mac_info*, align 8
  %5 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %3, align 8
  %6 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %7 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %6, i32 0, i32 1
  store %struct.igc_mac_info* %7, %struct.igc_mac_info** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %9 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %14 [
    i32 130, label %11
    i32 129, label %11
    i32 132, label %11
    i32 133, label %11
    i32 131, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1, %1
  %12 = load %struct.igc_mac_info*, %struct.igc_mac_info** %4, align 8
  %13 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %12, i32 0, i32 0
  store i32 128, i32* %13, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @IGC_ERR_MAC_INIT, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %2, align 8
  br label %47

17:                                               ; preds = %11
  %18 = load i32, i32* @igc_media_type_copper, align 4
  %19 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %20 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %23 = call i64 @igc_init_mac_params_base(%struct.igc_hw* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %45

27:                                               ; preds = %17
  %28 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %29 = call i64 @igc_init_nvm_params_base(%struct.igc_hw* %28)
  store i64 %29, i64* %5, align 8
  %30 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %31 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %37 [
    i32 128, label %34
  ]

34:                                               ; preds = %27
  %35 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %36 = call i64 @igc_init_nvm_params_i225(%struct.igc_hw* %35)
  store i64 %36, i64* %5, align 8
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %40 = call i64 @igc_init_phy_params_base(%struct.igc_hw* %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %43, %26
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %14
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @igc_init_mac_params_base(%struct.igc_hw*) #1

declare dso_local i64 @igc_init_nvm_params_base(%struct.igc_hw*) #1

declare dso_local i64 @igc_init_nvm_params_i225(%struct.igc_hw*) #1

declare dso_local i64 @igc_init_phy_params_base(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
