; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_phy_has_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_phy_has_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.igc_hw.0*, i32, i64*)* }
%struct.igc_hw.0 = type opaque

@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igc_phy_has_link(%struct.igc_hw* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %72, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %18 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (%struct.igc_hw.0*, i32, i64*)*, i64 (%struct.igc_hw.0*, i32, i64*)** %20, align 8
  %22 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %23 = bitcast %struct.igc_hw* %22 to %struct.igc_hw.0*
  %24 = load i32, i32* @PHY_STATUS, align 4
  %25 = call i64 %21(%struct.igc_hw.0* %23, i32 %24, i64* %10)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp sge i64 %32, 1000
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = sdiv i64 %35, 1000
  %37 = call i32 @mdelay(i64 %36)
  br label %41

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @udelay(i64 %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %28, %16
  %43 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %44 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64 (%struct.igc_hw.0*, i32, i64*)*, i64 (%struct.igc_hw.0*, i32, i64*)** %46, align 8
  %48 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %49 = bitcast %struct.igc_hw* %48 to %struct.igc_hw.0*
  %50 = load i32, i32* @PHY_STATUS, align 4
  %51 = call i64 %47(%struct.igc_hw.0* %49, i32 %50, i64* %10)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %75

55:                                               ; preds = %42
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %75

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = icmp sge i64 %62, 1000
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = sdiv i64 %65, 1000
  %67 = call i32 @mdelay(i64 %66)
  br label %71

68:                                               ; preds = %61
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @udelay(i64 %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %12

75:                                               ; preds = %60, %54, %12
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i64, i64* %11, align 8
  ret i64 %82
}

declare dso_local i32 @mdelay(i64) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
