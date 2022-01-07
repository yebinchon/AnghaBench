; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_notify_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_notify_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.atmel_isi = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @isi_graph_notify_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isi_graph_notify_unbind(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.atmel_isi*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %8 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %9 = call %struct.atmel_isi* @notifier_to_isi(%struct.v4l2_async_notifier* %8)
  store %struct.atmel_isi* %9, %struct.atmel_isi** %7, align 8
  %10 = load %struct.atmel_isi*, %struct.atmel_isi** %7, align 8
  %11 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.atmel_isi*, %struct.atmel_isi** %7, align 8
  %14 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @video_device_node_name(i32 %15)
  %17 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.atmel_isi*, %struct.atmel_isi** %7, align 8
  %19 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @video_unregister_device(i32 %20)
  ret void
}

declare dso_local %struct.atmel_isi* @notifier_to_isi(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32) #1

declare dso_local i32 @video_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
