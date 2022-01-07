; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_notify_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_notify_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.atmel_isi = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"No supported mediabus format found\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not set default format\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Device registered as %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*)* @isi_graph_notify_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_graph_notify_complete(%struct.v4l2_async_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  %4 = alloca %struct.atmel_isi*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %3, align 8
  %6 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %7 = call %struct.atmel_isi* @notifier_to_isi(%struct.v4l2_async_notifier* %6)
  store %struct.atmel_isi* %7, %struct.atmel_isi** %4, align 8
  %8 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %19 = call i32 @isi_formats_init(%struct.atmel_isi* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %30 = call i32 @isi_camera_set_bus_param(%struct.atmel_isi* %29)
  %31 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %32 = call i32 @isi_set_default_fmt(%struct.atmel_isi* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %37 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %28
  %42 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %43 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %46 = call i32 @video_register_device(%struct.TYPE_7__* %44, i32 %45, i32 -1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %41
  %56 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %60 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i32 @video_device_node_name(%struct.TYPE_7__* %61)
  %63 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %49, %35, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.atmel_isi* @notifier_to_isi(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @isi_formats_init(%struct.atmel_isi*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @isi_camera_set_bus_param(%struct.atmel_isi*) #1

declare dso_local i32 @isi_set_default_fmt(%struct.atmel_isi*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
