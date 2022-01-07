; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i64 }
%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_ctx = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Only V4L2_MEMORY_MMAP is supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid type requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca %struct.s5p_mfc_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.s5p_mfc_dev* @video_drvdata(%struct.file* %10)
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %12)
  store %struct.s5p_mfc_ctx* %13, %struct.s5p_mfc_ctx** %9, align 8
  %14 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %49

23:                                               ; preds = %3
  %24 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %31 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %32 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %33 = call i32 @reqbufs_output(%struct.s5p_mfc_dev* %30, %struct.s5p_mfc_ctx* %31, %struct.v4l2_requestbuffers* %32)
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %23
  %35 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %43 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %44 = call i32 @reqbufs_capture(%struct.s5p_mfc_dev* %41, %struct.s5p_mfc_ctx* %42, %struct.v4l2_requestbuffers* %43)
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %34
  %46 = call i32 @mfc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %40, %29, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.s5p_mfc_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i32 @reqbufs_output(%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @reqbufs_capture(%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @mfc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
