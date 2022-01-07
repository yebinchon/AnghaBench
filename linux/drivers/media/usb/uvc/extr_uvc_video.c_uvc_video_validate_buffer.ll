; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_validate_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_validate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.uvc_buffer = type { i64, i32 }

@UVC_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*, %struct.uvc_buffer*)* @uvc_video_validate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_validate_buffer(%struct.uvc_streaming* %0, %struct.uvc_buffer* %1) #0 {
  %3 = alloca %struct.uvc_streaming*, align 8
  %4 = alloca %struct.uvc_buffer*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %3, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %4, align 8
  %5 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %6 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %15 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UVC_FMT_FLAG_COMPRESSED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
