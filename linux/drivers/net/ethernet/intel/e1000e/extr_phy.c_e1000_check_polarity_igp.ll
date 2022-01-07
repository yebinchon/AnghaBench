; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_check_polarity_igp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_check_polarity_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32 }

@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PCS_INIT_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_POLARITY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_POLARITY_REVERSED = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_polarity_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_phy_info* %10, %struct.e1000_phy_info** %4, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %13 = call i64 @e1e_rphy(%struct.e1000_hw* %11, i32 %12, i32* %6)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %2, align 8
  br label %51

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @IGP01E1000_PHY_POLARITY_MASK, align 4
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @IGP01E1000_PSSR_POLARITY_REVERSED, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @e1e_rphy(%struct.e1000_hw* %31, i32 %32, i32* %6)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %30
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
