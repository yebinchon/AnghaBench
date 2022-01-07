; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32 }
%struct.hva_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.vb2_queue = type { i64 }
%struct.hva_stream = type { i32 }
%struct.vb2_buffer = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s buffer index %d out of range (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @hva_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.hva_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.hva_stream*, align 8
  %12 = alloca %struct.vb2_buffer*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hva_ctx* @fh_to_ctx(i32 %15)
  store %struct.hva_ctx* %16, %struct.hva_ctx** %8, align 8
  %17 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %18 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %17)
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %3
  %25 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %28, i32 %31)
  store %struct.vb2_queue* %32, %struct.vb2_queue** %10, align 8
  %33 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %37 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %24
  %41 = load %struct.device*, %struct.device** %9, align 8
  %42 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %49 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47, i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %24
  %55 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %56 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue* %55, i64 %58)
  store %struct.vb2_buffer* %59, %struct.vb2_buffer** %12, align 8
  %60 = load %struct.vb2_buffer*, %struct.vb2_buffer** %12, align 8
  %61 = call i32 @to_vb2_v4l2_buffer(%struct.vb2_buffer* %60)
  %62 = call %struct.hva_stream* @to_hva_stream(i32 %61)
  store %struct.hva_stream* %62, %struct.hva_stream** %11, align 8
  %63 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.hva_stream*, %struct.hva_stream** %11, align 8
  %67 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %54, %3
  %69 = load %struct.file*, %struct.file** %5, align 8
  %70 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %75 = call i32 @v4l2_m2m_qbuf(%struct.file* %69, i32 %73, %struct.v4l2_buffer* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %68, %40
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.hva_ctx* @fh_to_ctx(i32) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i64) #1

declare dso_local %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue*, i64) #1

declare dso_local %struct.hva_stream* @to_hva_stream(i32) #1

declare dso_local i32 @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @v4l2_m2m_qbuf(%struct.file*, i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
