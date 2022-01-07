; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Only mmapped buffers can be used\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"State: %d, buf->type: %d\0A\00", align 1
@MFCINST_GOT_INST = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@MFCINST_RUNNING = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@DST_QUEUE_OFF_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"vidioc_querybuf called in an inappropriate state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.s5p_mfc_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %11)
  store %struct.s5p_mfc_ctx* %12, %struct.s5p_mfc_ctx** %8, align 8
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @mfc_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %96

22:                                               ; preds = %3
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %28)
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MFCINST_GOT_INST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %42, i32 0, i32 2
  %44 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %45 = call i32 @vb2_querybuf(i32* %43, %struct.v4l2_buffer* %44)
  store i32 %45, i32* %9, align 4
  br label %93

46:                                               ; preds = %35, %22
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MFCINST_RUNNING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %46
  %53 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %52
  %59 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %59, i32 0, i32 1
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %62 = call i32 @vb2_querybuf(i32* %60, %struct.v4l2_buffer* %61)
  store i32 %62, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %84, %58
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %71 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %70
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %63

87:                                               ; preds = %63
  br label %92

88:                                               ; preds = %52, %46
  %89 = call i32 @mfc_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %87
  br label %93

93:                                               ; preds = %92, %41
  %94 = call i32 (...) @mfc_debug_leave()
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*, i64, i32) #1

declare dso_local i32 @vb2_querybuf(i32*, %struct.v4l2_buffer*) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
