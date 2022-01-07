; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32, i64 }
%struct.v4l2_event = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@MFCINST_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Call on DQBUF after unrecoverable error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@MFCINST_FINISHED = common dso_local global i64 0, align 8
@MFC_BUF_FLAG_EOS = common dso_local global i32 0, align 4
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
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %76 [
    i32 128, label %28
    i32 129, label %38
  ]

28:                                               ; preds = %24
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %29, i32 0, i32 4
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @vb2_dqbuf(i32* %30, %struct.v4l2_buffer* %31, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %24
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 3
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @O_NONBLOCK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @vb2_dqbuf(i32* %40, %struct.v4l2_buffer* %41, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %38
  %53 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MFCINST_FINISHED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MFC_BUF_FLAG_EOS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %72, i32 0, i32 1
  %74 = call i32 @v4l2_event_queue_fh(i32* %73, %struct.v4l2_event* %8)
  br label %75

75:                                               ; preds = %71, %58, %52
  store i32 0, i32* %4, align 4
  br label %79

76:                                               ; preds = %24
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %75, %50, %28, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_err_limited(i8*) #1

declare dso_local i32 @vb2_dqbuf(i32*, %struct.v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
