; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, i32, i32, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_usbvision = type { i64, i32, i32, %struct.usbvision_frame*, %struct.TYPE_4__, i32 }
%struct.usbvision_frame = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@frame_state_ready = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@frame_state_done = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@frame_state_unused = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i8* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.usb_usbvision*, align 8
  %9 = alloca %struct.usbvision_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %10)
  store %struct.usb_usbvision* %11, %struct.usb_usbvision** %8, align 8
  %12 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %128

22:                                               ; preds = %3
  %23 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %24 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %27 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %26, i32 0, i32 3
  %28 = load %struct.usbvision_frame*, %struct.usbvision_frame** %27, align 8
  %29 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %28, i64 %31
  store %struct.usbvision_frame* %32, %struct.usbvision_frame** %9, align 8
  %33 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %34 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @frame_state_ready, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %22
  %39 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %40 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %22
  %45 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %46 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @frame_state_done, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %52 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %58 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @frame_state_unused, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %64 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i8*, i8** @V4L2_MEMORY_MMAP, align 8
  %70 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %76 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PAGE_ALIGN(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = mul i64 %74, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i8*, i8** @V4L2_MEMORY_MMAP, align 8
  %86 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %89 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %92 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %95 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %99 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %97, %101
  %103 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %106 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %105, i32 0, i32 3
  %107 = load %struct.usbvision_frame*, %struct.usbvision_frame** %106, align 8
  %108 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %107, i64 %110
  %112 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ns_to_timeval(i32 %113)
  %115 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %118 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %117, i32 0, i32 3
  %119 = load %struct.usbvision_frame*, %struct.usbvision_frame** %118, align 8
  %120 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %119, i64 %122
  %124 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %68, %19
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @ns_to_timeval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
