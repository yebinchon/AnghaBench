; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_v4l2_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_v4l2_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, %struct.TYPE_2__*, i32, i64, %struct.em28xx_v4l2* }
%struct.TYPE_2__ = type { i32 }
%struct.em28xx_v4l2 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Closing video extension\0A\00", align 1
@EM28XX_ANALOG_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"V4L2 device %s deregistered\0A\00", align 1
@em28xx_free_v4l2 = common dso_local global i32 0, align 4
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_v4l2_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_v4l2_fini(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_v4l2*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 5
  %7 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  store %struct.em28xx_v4l2* %7, %struct.em28xx_v4l2** %4, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

13:                                               ; preds = %1
  %14 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %108

19:                                               ; preds = %13
  %20 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %21 = icmp ne %struct.em28xx_v4l2* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %108

23:                                               ; preds = %19
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %33 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %32, i32 0, i32 1
  %34 = call i32 @v4l2_device_disconnect(i32* %33)
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %37 = call i32 @em28xx_uninit_usb_xfer(%struct.em28xx* %35, i32 %36)
  %38 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %39 = call i32 @em28xx_v4l2_media_release(%struct.em28xx* %38)
  %40 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %41 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %40, i32 0, i32 5
  %42 = call i64 @video_is_registered(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %23
  %45 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %50 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %49, i32 0, i32 5
  %51 = call i32 @video_device_node_name(i32* %50)
  %52 = call i32 (i32*, i8*, ...) @dev_info(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %54 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %53, i32 0, i32 5
  %55 = call i32 @video_unregister_device(i32* %54)
  br label %56

56:                                               ; preds = %44, %23
  %57 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %58 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %57, i32 0, i32 4
  %59 = call i64 @video_is_registered(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %63 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %67 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %66, i32 0, i32 4
  %68 = call i32 @video_device_node_name(i32* %67)
  %69 = call i32 (i32*, i8*, ...) @dev_info(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %71 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %70, i32 0, i32 4
  %72 = call i32 @video_unregister_device(i32* %71)
  br label %73

73:                                               ; preds = %61, %56
  %74 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %75 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %74, i32 0, i32 3
  %76 = call i64 @video_is_registered(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %84 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %83, i32 0, i32 3
  %85 = call i32 @video_device_node_name(i32* %84)
  %86 = call i32 (i32*, i8*, ...) @dev_info(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %88 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %87, i32 0, i32 3
  %89 = call i32 @video_unregister_device(i32* %88)
  br label %90

90:                                               ; preds = %78, %73
  %91 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %92 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %91, i32 0, i32 2
  %93 = call i32 @v4l2_ctrl_handler_free(i32* %92)
  %94 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %95 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %94, i32 0, i32 1
  %96 = call i32 @v4l2_device_unregister(i32* %95)
  %97 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %98 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %97, i32 0, i32 0
  %99 = load i32, i32* @em28xx_free_v4l2, align 4
  %100 = call i32 @kref_put(i32* %98, i32 %99)
  %101 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %102 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %105 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %104, i32 0, i32 0
  %106 = load i32, i32* @em28xx_free_device, align 4
  %107 = call i32 @kref_put(i32* %105, i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %90, %22, %18, %12
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @em28xx_uninit_usb_xfer(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_v4l2_media_release(%struct.em28xx*) #1

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
