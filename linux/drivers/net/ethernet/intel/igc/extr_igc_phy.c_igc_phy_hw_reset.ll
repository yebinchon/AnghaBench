; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_phy_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_phy_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_phy_info }
%struct.igc_phy_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.1*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque

@IGC_CTRL = common dso_local global i32 0, align 4
@IGC_CTRL_PHY_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igc_phy_hw_reset(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca %struct.igc_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %6 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %7 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %6, i32 0, i32 0
  store %struct.igc_phy_info* %7, %struct.igc_phy_info** %3, align 8
  %8 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %9 = call i64 @igc_check_reset_block(%struct.igc_hw* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.igc_phy_info*, %struct.igc_phy_info** %3, align 8
  %15 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64 (%struct.igc_hw.1*)*, i64 (%struct.igc_hw.1*)** %16, align 8
  %18 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %19 = bitcast %struct.igc_hw* %18 to %struct.igc_hw.1*
  %20 = call i64 %17(%struct.igc_hw.1* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %49

24:                                               ; preds = %13
  %25 = load i32, i32* @IGC_CTRL, align 4
  %26 = call i32 @rd32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @IGC_CTRL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IGC_CTRL_PHY_RST, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @wr32(i32 %27, i32 %30)
  %32 = call i32 (...) @wrfl()
  %33 = load %struct.igc_phy_info*, %struct.igc_phy_info** %3, align 8
  %34 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @udelay(i32 %35)
  %37 = load i32, i32* @IGC_CTRL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @wr32(i32 %37, i32 %38)
  %40 = call i32 (...) @wrfl()
  %41 = call i32 @usleep_range(i32 1500, i32 2000)
  %42 = load %struct.igc_phy_info*, %struct.igc_phy_info** %3, align 8
  %43 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %44, align 8
  %46 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %47 = bitcast %struct.igc_hw* %46 to %struct.igc_hw.0*
  %48 = call i32 %45(%struct.igc_hw.0* %47)
  br label %49

49:                                               ; preds = %24, %23, %12
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @igc_check_reset_block(%struct.igc_hw*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
