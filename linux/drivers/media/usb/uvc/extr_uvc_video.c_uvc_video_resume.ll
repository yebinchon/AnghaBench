; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_video_resume(%struct.uvc_streaming* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %11 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_set_interface(i32 %14, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %9, %2
  %20 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %23 = call i32 @uvc_video_clock_reset(%struct.uvc_streaming* %22)
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %24, i32 0, i32 1
  %26 = call i32 @uvc_queue_streaming(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %31 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %32 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %31, i32 0, i32 0
  %33 = call i32 @uvc_commit_video(%struct.uvc_streaming* %30, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %40 = load i32, i32* @GFP_NOIO, align 4
  %41 = call i32 @uvc_video_start_transfer(%struct.uvc_streaming* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %36, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @uvc_video_clock_reset(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_queue_streaming(i32*) #1

declare dso_local i32 @uvc_commit_video(%struct.uvc_streaming*, i32*) #1

declare dso_local i32 @uvc_video_start_transfer(%struct.uvc_streaming*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
