; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_setup_siobuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_setup_siobuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32, %struct.stk_sio_buffer* }
%struct.stk_sio_buffer = type { %struct.TYPE_4__, %struct.stk_camera*, i64, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*, i32)* @stk_setup_siobuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_setup_siobuf(%struct.stk_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stk_sio_buffer*, align 8
  store %struct.stk_camera* %0, %struct.stk_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %8 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %7, i32 0, i32 1
  %9 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %9, i64 %11
  store %struct.stk_sio_buffer* %12, %struct.stk_sio_buffer** %6, align 8
  %13 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %13, i32 0, i32 4
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %17 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PAGE_ALIGN(i32 %18)
  %20 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @vmalloc_user(i32 %26)
  %28 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %2
  %38 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %41 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %41, i32 0, i32 1
  store %struct.stk_camera* %40, %struct.stk_camera** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %48 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %52 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %56 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %60 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 2, %63
  %65 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %64, %68
  %70 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %37, %34
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32* @vmalloc_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
