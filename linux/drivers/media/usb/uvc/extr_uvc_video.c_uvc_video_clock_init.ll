; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_clock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.uvc_clock }
%struct.uvc_clock = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*)* @uvc_video_clock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_video_clock_init(%struct.uvc_streaming* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_streaming*, align 8
  %4 = alloca %struct.uvc_clock*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %3, align 8
  %5 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %6 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %5, i32 0, i32 0
  store %struct.uvc_clock* %6, %struct.uvc_clock** %4, align 8
  %7 = load %struct.uvc_clock*, %struct.uvc_clock** %4, align 8
  %8 = getelementptr inbounds %struct.uvc_clock, %struct.uvc_clock* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.uvc_clock*, %struct.uvc_clock** %4, align 8
  %11 = getelementptr inbounds %struct.uvc_clock, %struct.uvc_clock* %10, i32 0, i32 0
  store i32 32, i32* %11, align 8
  %12 = load %struct.uvc_clock*, %struct.uvc_clock** %4, align 8
  %13 = getelementptr inbounds %struct.uvc_clock, %struct.uvc_clock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc_array(i32 %14, i32 4, i32 %15)
  %17 = load %struct.uvc_clock*, %struct.uvc_clock** %4, align 8
  %18 = getelementptr inbounds %struct.uvc_clock, %struct.uvc_clock* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.uvc_clock*, %struct.uvc_clock** %4, align 8
  %20 = getelementptr inbounds %struct.uvc_clock, %struct.uvc_clock* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %28 = call i32 @uvc_video_clock_reset(%struct.uvc_streaming* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @uvc_video_clock_reset(%struct.uvc_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
