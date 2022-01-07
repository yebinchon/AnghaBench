; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_video_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_video_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtv = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbtv_video_free(%struct.usbtv* %0) #0 {
  %2 = alloca %struct.usbtv*, align 8
  store %struct.usbtv* %0, %struct.usbtv** %2, align 8
  %3 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %4 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %7 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %10 = call i32 @usbtv_stop(%struct.usbtv* %9)
  %11 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %12 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %11, i32 0, i32 3
  %13 = call i32 @video_unregister_device(i32* %12)
  %14 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %15 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %14, i32 0, i32 0
  %16 = call i32 @v4l2_device_disconnect(i32* %15)
  %17 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %18 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %17, i32 0, i32 2
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %21 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %24 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %23, i32 0, i32 0
  %25 = call i32 @v4l2_device_put(i32* %24)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbtv_stop(%struct.usbtv*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
