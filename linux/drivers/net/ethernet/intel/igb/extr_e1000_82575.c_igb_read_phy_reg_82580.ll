; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_read_phy_reg_82580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_read_phy_reg_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_read_phy_reg_82580(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.1*
  %15 = call i64 %12(%struct.e1000_hw.1* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @igb_read_phy_reg_mdic(%struct.e1000_hw* %20, i32 %21, i32* %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %27, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = bitcast %struct.e1000_hw* %29 to %struct.e1000_hw.0*
  %31 = call i32 %28(%struct.e1000_hw.0* %30)
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

declare dso_local i64 @igb_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
