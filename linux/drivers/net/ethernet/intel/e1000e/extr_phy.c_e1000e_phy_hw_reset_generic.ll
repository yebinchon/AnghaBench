; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_phy_hw_reset_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_phy_hw_reset_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %11, align 8
  %13 = icmp ne i64 (%struct.e1000_hw.3*)* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.3*
  %21 = call i64 %18(%struct.e1000_hw.3* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i64 0, i64* %2, align 8
  br label %70

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.2*
  %33 = call i64 %30(%struct.e1000_hw.2* %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %70

38:                                               ; preds = %26
  %39 = load i32, i32* @CTRL, align 4
  %40 = call i32 @er32(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @CTRL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ew32(i32 %41, i32 %44)
  %46 = call i32 (...) @e1e_flush()
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @udelay(i32 %49)
  %51 = load i32, i32* @CTRL, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ew32(i32 %51, i32 %52)
  %54 = call i32 (...) @e1e_flush()
  %55 = call i32 @usleep_range(i32 150, i32 300)
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.1*
  %62 = call i32 %59(%struct.e1000_hw.1* %61)
  %63 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.0*
  %69 = call i64 %66(%struct.e1000_hw.0* %68)
  store i64 %69, i64* %2, align 8
  br label %70

70:                                               ; preds = %38, %36, %24
  %71 = load i64, i64* %2, align 8
  ret i64 %71
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
