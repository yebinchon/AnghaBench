; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_camera_dev = type { i64, i64, i8** }

@CICR0 = common dso_local global i64 0, align 8
@CICR1 = common dso_local global i64 0, align 8
@CICR2 = common dso_local global i64 0, align 8
@CICR3 = common dso_local global i64 0, align 8
@CICR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pxa_camera_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_suspend(%struct.device* %0) #0 {
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
  %9 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CICR0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i8* @__raw_readl(i64 %12)
  %14 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %14, i32 0, i32 2
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  store i8* %13, i8** %20, align 8
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CICR1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @__raw_readl(i64 %25)
  %27 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %26, i8** %33, align 8
  %34 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CICR2, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i8* @__raw_readl(i64 %38)
  %40 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %39, i8** %46, align 8
  %47 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CICR3, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i8* @__raw_readl(i64 %51)
  %53 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  store i8* %52, i8** %59, align 8
  %60 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CICR4, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i8* @__raw_readl(i64 %64)
  %66 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %67 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %65, i8** %72, align 8
  %73 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %74 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %1
  %78 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %79 = call i32 @pxac_sensor_set_power(%struct.pxa_camera_dev* %78, i32 0)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %1
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.pxa_camera_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @__raw_readl(i64) #1

declare dso_local i32 @pxac_sensor_set_power(%struct.pxa_camera_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
