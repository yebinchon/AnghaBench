; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.v4l2_event = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@MFCINST_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Call on DQBUF after unrecoverable error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFCINST_FINISHED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.v4l2_event, align 4
  %9 = alloca %struct.s5p_mfc_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %8, i32 0, i32 0
  %12 = load i32, i32* @V4L2_EVENT_EOS, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %13)
  store %struct.s5p_mfc_ctx* %14, %struct.s5p_mfc_ctx** %9, align 8
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MFCINST_ERROR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 @mfc_err_limited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %31, i32 0, i32 3
  %33 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @vb2_dqbuf(%struct.TYPE_2__* %32, %struct.v4l2_buffer* %33, i32 %38)
  store i32 %39, i32* %10, align 4
  br label %79

40:                                               ; preds = %24
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 2
  %49 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @O_NONBLOCK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @vb2_dqbuf(%struct.TYPE_2__* %48, %struct.v4l2_buffer* %49, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %46
  %59 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MFCINST_FINISHED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i64 @list_empty(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %71, i32 0, i32 1
  %73 = call i32 @v4l2_event_queue_fh(i32* %72, %struct.v4l2_event* %8)
  br label %74

74:                                               ; preds = %70, %64, %58, %46
  br label %78

75:                                               ; preds = %40
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_err_limited(i8*) #1

declare dso_local i32 @vb2_dqbuf(%struct.TYPE_2__*, %struct.v4l2_buffer*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
