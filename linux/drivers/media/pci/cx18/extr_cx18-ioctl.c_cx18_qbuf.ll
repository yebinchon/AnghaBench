; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx18_open_id* }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { i64 }
%struct.v4l2_buffer = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @cx18_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca %struct.cx18_stream*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %12, align 8
  store %struct.cx18_open_id* %13, %struct.cx18_open_id** %8, align 8
  %14 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %15 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %14, i32 0, i32 1
  %16 = load %struct.cx18*, %struct.cx18** %15, align 8
  store %struct.cx18* %16, %struct.cx18** %9, align 8
  %17 = load %struct.cx18*, %struct.cx18** %9, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 0
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %18, align 8
  %20 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %21 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i64 %22
  store %struct.cx18_stream* %23, %struct.cx18_stream** %10, align 8
  %24 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %25 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %31 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %29, %3
  %39 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %40 = call i32 @cx18_vb_queue(%struct.cx18_open_id* %39)
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %42 = call i32 @videobuf_qbuf(i32 %40, %struct.v4l2_buffer* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @videobuf_qbuf(i32, %struct.v4l2_buffer*) #1

declare dso_local i32 @cx18_vb_queue(%struct.cx18_open_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
