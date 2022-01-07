; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.channel_obj**, %struct.channel_obj*, i32, i32 }
%struct.channel_obj = type { i32 }
%struct.platform_device = type { i32 }

@vpif_obj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VPIF_CAPTURE_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpif_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = call i32 @v4l2_async_notifier_unregister(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 3))
  %6 = call i32 @v4l2_async_notifier_cleanup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 3))
  %7 = call i32 @v4l2_device_unregister(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 2))
  %8 = load %struct.channel_obj*, %struct.channel_obj** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 1), align 8
  %9 = call i32 @kfree(%struct.channel_obj* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VPIF_CAPTURE_MAX_DEVICES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 0), align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %15, i64 %17
  %19 = load %struct.channel_obj*, %struct.channel_obj** %18, align 8
  store %struct.channel_obj* %19, %struct.channel_obj** %3, align 8
  %20 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 0
  %22 = call i32 @video_unregister_device(i32* %21)
  %23 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 0), align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %23, i64 %25
  %27 = load %struct.channel_obj*, %struct.channel_obj** %26, align 8
  %28 = call i32 @kfree(%struct.channel_obj* %27)
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %10

32:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.channel_obj*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
