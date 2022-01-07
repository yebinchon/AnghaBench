; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, i32, %struct.uvc_frame*, %struct.uvc_format*, %struct.uvc_streaming_control, i32 }
%struct.uvc_frame = type { i32 }
%struct.uvc_format = type { i32 }
%struct.uvc_streaming_control = type { i32 }
%struct.v4l2_format = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.v4l2_format*)* @uvc_v4l2_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_set_format(%struct.uvc_streaming* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.uvc_streaming_control, align 4
  %7 = alloca %struct.uvc_format*, align 8
  %8 = alloca %struct.uvc_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %23 = call i32 @uvc_v4l2_try_format(%struct.uvc_streaming* %21, %struct.v4l2_format* %22, %struct.uvc_streaming_control* %6, %struct.uvc_format** %7, %struct.uvc_frame** %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %30 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %33 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %32, i32 0, i32 5
  %34 = call i64 @uvc_queue_allocated(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %50

39:                                               ; preds = %28
  %40 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %40, i32 0, i32 4
  %42 = bitcast %struct.uvc_streaming_control* %41 to i8*
  %43 = bitcast %struct.uvc_streaming_control* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.uvc_format*, %struct.uvc_format** %7, align 8
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %45, i32 0, i32 3
  store %struct.uvc_format* %44, %struct.uvc_format** %46, align 8
  %47 = load %struct.uvc_frame*, %struct.uvc_frame** %8, align 8
  %48 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %49 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %48, i32 0, i32 2
  store %struct.uvc_frame* %47, %struct.uvc_frame** %49, align 8
  br label %50

50:                                               ; preds = %39, %36
  %51 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %52 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %26, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @uvc_v4l2_try_format(%struct.uvc_streaming*, %struct.v4l2_format*, %struct.uvc_streaming_control*, %struct.uvc_format**, %struct.uvc_frame**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uvc_queue_allocated(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
