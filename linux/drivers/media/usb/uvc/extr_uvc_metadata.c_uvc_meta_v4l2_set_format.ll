; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_meta_format }
%struct.v4l2_meta_format = type { i32 }
%struct.uvc_streaming = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @uvc_meta_v4l2_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_meta_v4l2_set_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca %struct.v4l2_meta_format*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %13, align 8
  store %struct.v4l2_fh* %14, %struct.v4l2_fh** %8, align 8
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.uvc_streaming* @video_get_drvdata(i32 %17)
  store %struct.uvc_streaming* %18, %struct.uvc_streaming** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.v4l2_meta_format* %21, %struct.v4l2_meta_format** %10, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = call i32 @uvc_meta_v4l2_try_format(%struct.file* %22, i8* %23, %struct.v4l2_format* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %32 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %34, i32 0, i32 2
  %36 = call i64 @uvc_queue_allocated(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %50 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.uvc_streaming* @video_get_drvdata(i32) #1

declare dso_local i32 @uvc_meta_v4l2_try_format(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uvc_queue_allocated(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
