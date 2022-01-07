; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_camera_dev = type { i32*, i64, i64, i64 }

@CICR0_ENB = common dso_local global i32 0, align 4
@CICR0 = common dso_local global i64 0, align 8
@CICR1 = common dso_local global i64 0, align 8
@CICR2 = common dso_local global i64 0, align 8
@CICR3 = common dso_local global i64 0, align 8
@CICR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pxa_camera_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pxa_camera_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.pxa_camera_dev* @dev_get_drvdata(%struct.device* %6)
  store %struct.pxa_camera_dev* %7, %struct.pxa_camera_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CICR0_ENB, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CICR0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @__raw_writel(i32 %18, i64 %23)
  %25 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CICR1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @__raw_writel(i32 %32, i64 %37)
  %39 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %40 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CICR2, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @__raw_writel(i32 %46, i64 %51)
  %53 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %62 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CICR3, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @__raw_writel(i32 %60, i64 %65)
  %67 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %68 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %76 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CICR4, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @__raw_writel(i32 %74, i64 %79)
  %81 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %1
  %86 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %87 = call i32 @pxac_sensor_set_power(%struct.pxa_camera_dev* %86, i32 1)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %1
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %93 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %98 = call i32 @pxa_camera_start_capture(%struct.pxa_camera_dev* %97)
  br label %99

99:                                               ; preds = %96, %91, %88
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.pxa_camera_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @pxac_sensor_set_power(%struct.pxa_camera_dev*, i32) #1

declare dso_local i32 @pxa_camera_start_capture(%struct.pxa_camera_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
