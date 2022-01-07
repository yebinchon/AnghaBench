; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, %struct.bdisp_ctx* }
%struct.bdisp_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to set runtime PM\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @bdisp_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bdisp_ctx*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %9, i32 0, i32 1
  %11 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %10, align 8
  store %struct.bdisp_ctx* %11, %struct.bdisp_ctx** %6, align 8
  %12 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %40, %32
  %34 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %37)
  store %struct.vb2_v4l2_buffer* %38, %struct.vb2_v4l2_buffer** %7, align 8
  %39 = icmp ne %struct.vb2_v4l2_buffer* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %42 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %43 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %41, i32 %42)
  br label %33

44:                                               ; preds = %33
  br label %58

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %53, %45
  %47 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %50)
  store %struct.vb2_v4l2_buffer* %51, %struct.vb2_v4l2_buffer** %7, align 8
  %52 = icmp ne %struct.vb2_v4l2_buffer* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %55 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %56 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %54, i32 %55)
  br label %46

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
