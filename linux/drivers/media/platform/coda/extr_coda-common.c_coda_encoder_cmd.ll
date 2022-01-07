; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_encoder_cmd = type { i32 }
%struct.coda_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@CODA_BIT_STREAM_END_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @coda_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_encoder_cmd*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.coda_ctx* @fh_to_ctx(i8* %11)
  store %struct.coda_ctx* %12, %struct.coda_ctx** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %16 = call i32 @coda_try_encoder_cmd(%struct.file* %13, i8* %14, %struct.v4l2_encoder_cmd* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_last_src_buf(i32 %28)
  store %struct.vb2_v4l2_buffer* %29, %struct.vb2_v4l2_buffer** %9, align 8
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %31 = icmp ne %struct.vb2_v4l2_buffer* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %46

38:                                               ; preds = %21
  %39 = load i32, i32* @CODA_BIT_STREAM_END_FLAG, align 4
  %40 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %45 = call i32 @coda_wake_up_capture_queue(%struct.coda_ctx* %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @coda_try_encoder_cmd(%struct.file*, i8*, %struct.v4l2_encoder_cmd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_last_src_buf(i32) #1

declare dso_local i32 @coda_wake_up_capture_queue(%struct.coda_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
