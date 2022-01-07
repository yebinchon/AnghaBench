; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_check_polarity_igp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_check_polarity_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PCS_INIT_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_POLARITY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_POLARITY_REVERSED = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_check_polarity_igp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_check_polarity_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %3, align 8
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = bitcast %struct.e1000_hw* %14 to %struct.e1000_hw.0*
  %16 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %17 = call i64 %13(%struct.e1000_hw.0* %15, i32 %16, i32* %5)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %58

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @IGP01E1000_PHY_POLARITY_MASK, align 4
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @IGP01E1000_PSSR_POLARITY_REVERSED, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.0*
  %40 = load i32, i32* %6, align 4
  %41 = call i64 %37(%struct.e1000_hw.0* %39, i32 %40, i32* %5)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %33
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
