; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_check_downshift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_check_downshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_phy_info }
%struct.igc_phy_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_check_downshift(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca %struct.igc_phy_info*, align 8
  %4 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %5 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %6 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %5, i32 0, i32 0
  store %struct.igc_phy_info* %6, %struct.igc_phy_info** %3, align 8
  %7 = load %struct.igc_phy_info*, %struct.igc_phy_info** %3, align 8
  %8 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 128, label %10
  ]

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %10
  %12 = load %struct.igc_phy_info*, %struct.igc_phy_info** %3, align 8
  %13 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
