; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_write_phy_reg_gpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_write_phy_reg_gpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.1*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque

@GPY_MMD_MASK = common dso_local global i32 0, align 4
@GPY_MMD_SHIFT = common dso_local global i32 0, align 4
@GPY_REG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igc_write_phy_reg_gpy(%struct.igc_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GPY_MMD_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @GPY_MMD_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GPY_REG_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %3
  %21 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %22 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64 (%struct.igc_hw.1*)*, i64 (%struct.igc_hw.1*)** %24, align 8
  %26 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %27 = bitcast %struct.igc_hw* %26 to %struct.igc_hw.1*
  %28 = call i64 %25(%struct.igc_hw.1* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %4, align 8
  br label %59

33:                                               ; preds = %20
  %34 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @igc_write_phy_reg_mdic(%struct.igc_hw* %34, i32 %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %4, align 8
  br label %59

42:                                               ; preds = %33
  %43 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %44 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %46, align 8
  %48 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %49 = bitcast %struct.igc_hw* %48 to %struct.igc_hw.0*
  %50 = call i32 %47(%struct.igc_hw.0* %49)
  br label %57

51:                                               ; preds = %3
  %52 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @igc_write_xmdio_reg(%struct.igc_hw* %52, i32 %53, i32 %54, i32 %55)
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %51, %42
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %40, %31
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i64 @igc_write_phy_reg_mdic(%struct.igc_hw*, i32, i32) #1

declare dso_local i64 @igc_write_xmdio_reg(%struct.igc_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
