; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i32 }
%struct.stk_camera = type { i32, %struct.file* }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @stk_vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.stk_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.stk_camera* @video_drvdata(%struct.file* %9)
  store %struct.stk_camera* %10, %struct.stk_camera** %8, align 8
  %11 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %12 = icmp eq %struct.stk_camera* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %88

16:                                               ; preds = %3
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %16
  %26 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %27 = call i64 @is_streaming(%struct.stk_camera* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %31 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %30, i32 0, i32 1
  %32 = load %struct.file*, %struct.file** %31, align 8
  %33 = icmp ne %struct.file* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %36 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %35, i32 0, i32 1
  %37 = load %struct.file*, %struct.file** %36, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = icmp ne %struct.file* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %25
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %88

43:                                               ; preds = %34, %29
  %44 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %45 = call i32 @stk_free_buffers(%struct.stk_camera* %44)
  %46 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %52 = call i32 @stk_camera_write_reg(%struct.stk_camera* %51, i32 0, i32 73)
  %53 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %54 = call i32 @unset_initialised(%struct.stk_camera* %53)
  %55 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %56 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %55, i32 0, i32 1
  store %struct.file* null, %struct.file** %56, align 8
  store i32 0, i32* %4, align 4
  br label %88

57:                                               ; preds = %43
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %60 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %59, i32 0, i32 1
  store %struct.file* %58, %struct.file** %60, align 8
  %61 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %66, i32 0, i32 1
  store i32 3, i32* %67, align 8
  br label %77

68:                                               ; preds = %57
  %69 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 5
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %74, i32 0, i32 1
  store i32 5, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %79 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @stk_allocate_buffers(%struct.stk_camera* %78, i32 %81)
  %83 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %84 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %77, %50, %40, %22, %13
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.stk_camera* @video_drvdata(%struct.file*) #1

declare dso_local i64 @is_streaming(%struct.stk_camera*) #1

declare dso_local i32 @stk_free_buffers(%struct.stk_camera*) #1

declare dso_local i32 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @unset_initialised(%struct.stk_camera*) #1

declare dso_local i32 @stk_allocate_buffers(%struct.stk_camera*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
