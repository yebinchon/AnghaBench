; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_analog_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_analog_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"au0828_analog_unregister called\0A\00", align 1
@AU0828_VMUX_UNDEFINED = common dso_local global i64 0, align 8
@au0828_sysfs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au0828_analog_unregister(%struct.au0828_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  %5 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 @AUVI_INPUT(i32 0)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AU0828_VMUX_UNDEFINED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @au0828_sysfs_lock)
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %16 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %15, i32 0, i32 2
  %17 = call i32 @video_unregister_device(i32* %16)
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %19 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %18, i32 0, i32 1
  %20 = call i32 @video_unregister_device(i32* %19)
  %21 = call i32 @mutex_unlock(i32* @au0828_sysfs_lock)
  %22 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %23 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %22, i32 0, i32 0
  %24 = call i32 @v4l2_device_disconnect(i32* %23)
  %25 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %26 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %25, i32 0, i32 0
  %27 = call i32 @v4l2_device_put(i32* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @AUVI_INPUT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
