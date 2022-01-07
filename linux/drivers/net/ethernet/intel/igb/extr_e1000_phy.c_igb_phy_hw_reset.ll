; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_phy_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_phy_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_phy_hw_reset(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = call i64 @igb_check_reset_block(%struct.e1000_hw* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.2*
  %20 = call i64 %17(%struct.e1000_hw.2* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %56

24:                                               ; preds = %13
  %25 = load i32, i32* @E1000_CTRL, align 4
  %26 = call i32 @rd32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @E1000_CTRL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @wr32(i32 %27, i32 %30)
  %32 = call i32 (...) @wrfl()
  %33 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @udelay(i32 %35)
  %37 = load i32, i32* @E1000_CTRL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @wr32(i32 %37, i32 %38)
  %40 = call i32 (...) @wrfl()
  %41 = call i32 @udelay(i32 150)
  %42 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.1*
  %48 = call i32 %45(%struct.e1000_hw.1* %47)
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %51, align 8
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = bitcast %struct.e1000_hw* %53 to %struct.e1000_hw.0*
  %55 = call i64 %52(%struct.e1000_hw.0* %54)
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %24, %23, %12
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @igb_check_reset_block(%struct.e1000_hw*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
