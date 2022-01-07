; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_check_downshift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_check_downshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32 }

@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_DOWNSHIFT = common dso_local global i32 0, align 4
@IGP01E1000_PHY_LINK_HEALTH = common dso_local global i32 0, align 4
@IGP01E1000_PLHR_SS_DOWNGRADE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_check_downshift(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_phy_info* %10, %struct.e1000_phy_info** %4, align 8
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 131, label %14
    i32 132, label %14
    i32 133, label %14
    i32 130, label %17
    i32 129, label %17
  ]

14:                                               ; preds = %1, %1, %1, %1
  %15 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @M88E1000_PSSR_DOWNSHIFT, align 4
  store i32 %16, i32* %8, align 4
  br label %23

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @IGP01E1000_PHY_LINK_HEALTH, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @IGP01E1000_PLHR_SS_DOWNGRADE, align 4
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %41

23:                                               ; preds = %17, %14
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @e1e_rphy(%struct.e1000_hw* %24, i32 %25, i32* %6)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %29, %23
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
