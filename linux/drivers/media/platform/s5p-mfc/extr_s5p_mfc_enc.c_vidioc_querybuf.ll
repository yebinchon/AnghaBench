; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFCINST_GOT_INST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid context state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error in vb2_querybuf() for E(D)\0A\00", align 1
@DST_QUEUE_OFF_BASE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"error in vb2_querybuf() for E(S)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid buf type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.s5p_mfc_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %10)
  store %struct.s5p_mfc_ctx* %11, %struct.s5p_mfc_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %92

26:                                               ; preds = %17, %3
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MFCINST_GOT_INST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %92

45:                                               ; preds = %32
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 2
  %48 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %49 = call i32 @vb2_querybuf(i32* %47, %struct.v4l2_buffer* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %45
  %56 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %57 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %56
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %90

68:                                               ; preds = %26
  %69 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %75, i32 0, i32 1
  %77 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %78 = call i32 @vb2_querybuf(i32* %76, %struct.v4l2_buffer* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %74
  br label %89

85:                                               ; preds = %68
  %86 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %92

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %85, %81, %52, %38, %23
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @vb2_querybuf(i32*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
