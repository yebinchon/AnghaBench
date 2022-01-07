; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_detect_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_detect_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EM28XX_NOSENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"No sensor detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_detect_sensor(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %6 = call i32 @em28xx_probe_sensor_micron(%struct.em28xx* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %17 = call i32 @em28xx_probe_sensor_omnivision(%struct.em28xx* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %12, %1
  %19 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %24, %18
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @em28xx_probe_sensor_micron(%struct.em28xx*) #1

declare dso_local i32 @em28xx_probe_sensor_omnivision(%struct.em28xx*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
