; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.em28xx = type { i32, i32, %struct.TYPE_2__*, i64, i64, %struct.em28xx_v4l2* }
%struct.TYPE_2__ = type { i32 }
%struct.em28xx_v4l2 = type { i32, i32, i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"users=%d\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@standby = common dso_local global i32 0, align 4
@EM28XX_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"setting alternate 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot change alternate number to 0 (error=%i)\0A\00", align 1
@em28xx_free_v4l2 = common dso_local global i32 0, align 4
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @em28xx_v4l2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_v4l2*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.em28xx* @video_drvdata(%struct.file* %7)
  store %struct.em28xx* %8, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 5
  %11 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %10, align 8
  store %struct.em28xx_v4l2* %11, %struct.em28xx_v4l2** %4, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.TYPE_2__* %14)
  store %struct.usb_device* %15, %struct.usb_device** %5, align 8
  %16 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %17 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @em28xx_videodbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.file*, %struct.file** %2, align 8
  %21 = call i32 @vb2_fop_release(%struct.file* %20)
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %26 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %59

29:                                               ; preds = %1
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %60

35:                                               ; preds = %29
  %36 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %37 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %36, i32 0, i32 2
  %38 = load i32, i32* @tuner, align 4
  %39 = load i32, i32* @standby, align 4
  %40 = call i32 @v4l2_device_call_all(i32* %37, i32 0, i32 %38, i32 %39)
  %41 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %42 = load i32, i32* @EM28XX_SUSPEND, align 4
  %43 = call i32 @em28xx_set_mode(%struct.em28xx* %41, i32 %42)
  %44 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %45 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = call i32 (i8*, ...) @em28xx_videodbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %48 = call i32 @usb_set_interface(%struct.usb_device* %47, i32 0, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %35
  %52 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %35
  br label %59

59:                                               ; preds = %58, %1
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %62 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %66 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %65, i32 0, i32 1
  %67 = load i32, i32* @em28xx_free_v4l2, align 4
  %68 = call i32 @kref_put(i32* %66, i32 %67)
  %69 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %73 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %72, i32 0, i32 0
  %74 = load i32, i32* @em28xx_free_device, align 4
  %75 = call i32 @kref_put(i32* %73, i32 %74)
  ret i32 0
}

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.TYPE_2__*) #1

declare dso_local i32 @em28xx_videodbg(i8*, ...) #1

declare dso_local i32 @vb2_fop_release(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
