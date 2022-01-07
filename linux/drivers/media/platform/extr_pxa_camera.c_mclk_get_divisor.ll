; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_mclk_get_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_mclk_get_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa_camera_dev = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Limiting master clock to %lu\0A\00", align 1
@PXA_CAMERA_MCLK_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"LCD clock %luHz, target freq %luHz, divisor %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pxa_camera_dev*)* @mclk_get_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mclk_get_divisor(%struct.platform_device* %0, %struct.pxa_camera_dev* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa_camera_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pxa_camera_dev* %1, %struct.pxa_camera_dev** %4, align 8
  %8 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @clk_get_rate(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = udiv i64 %19, 4
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = udiv i64 %23, 4
  store i64 %24, i64* %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 2, %31
  %33 = add i64 %30, %32
  %34 = sub i64 %33, 1
  %35 = load i64, i64* %5, align 8
  %36 = mul i64 2, %35
  %37 = udiv i64 %34, %36
  %38 = sub i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %29
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %47, %51
  %53 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %29
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
