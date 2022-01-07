; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c___mt9v032_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c___mt9v032_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v032 = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regmap* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.regmap = type { i32 }

@MT9V032_PIXEL_CLOCK_INV_PXL_CLK = common dso_local global i32 0, align 4
@MT9V032_ROW_NOISE_CORR_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v032*, i32)* @__mt9v032_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9v032_set_power(%struct.mt9v032* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt9v032*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.mt9v032* %0, %struct.mt9v032** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %9 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %8, i32 0, i32 3
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %15 = call i32 @mt9v032_power_off(%struct.mt9v032* %14)
  store i32 0, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %18 = call i32 @mt9v032_power_on(%struct.mt9v032* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %16
  %24 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %25 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %30 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.regmap*, %struct.regmap** %6, align 8
  %37 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %38 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MT9V032_PIXEL_CLOCK_INV_PXL_CLK, align 4
  %45 = call i32 @regmap_write(%struct.regmap* %36, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %28, %23
  %52 = load %struct.regmap*, %struct.regmap** %6, align 8
  %53 = load i32, i32* @MT9V032_ROW_NOISE_CORR_CONTROL, align 4
  %54 = call i32 @regmap_write(%struct.regmap* %52, i32 %53, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.mt9v032*, %struct.mt9v032** %4, align 8
  %61 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %60, i32 0, i32 0
  %62 = call i32 @v4l2_ctrl_handler_setup(i32* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %57, %48, %21, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mt9v032_power_off(%struct.mt9v032*) #1

declare dso_local i32 @mt9v032_power_on(%struct.mt9v032*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
