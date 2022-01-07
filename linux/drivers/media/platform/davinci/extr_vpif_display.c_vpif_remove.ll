; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.channel_obj**, i32, i32, i32, %struct.TYPE_3__* }
%struct.channel_obj = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.platform_device = type { i32 }

@vpif_obj = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VPIF_DISPLAY_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpif_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 4), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @v4l2_async_notifier_unregister(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 3))
  %11 = call i32 @v4l2_async_notifier_cleanup(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 3))
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @v4l2_device_unregister(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 2))
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 1), align 8
  %15 = call i32 @kfree(i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VPIF_DISPLAY_MAX_DEVICES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 0), align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %21, i64 %23
  %25 = load %struct.channel_obj*, %struct.channel_obj** %24, align 8
  store %struct.channel_obj* %25, %struct.channel_obj** %3, align 8
  %26 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %27 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %26, i32 0, i32 0
  %28 = call i32 @video_unregister_device(i32* %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %16

32:                                               ; preds = %16
  %33 = call i32 (...) @free_vpif_objs()
  ret i32 0
}

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @free_vpif_objs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
