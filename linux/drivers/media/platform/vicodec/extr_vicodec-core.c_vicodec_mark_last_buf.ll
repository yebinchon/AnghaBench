; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_mark_last_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_mark_last_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@vicodec_eos_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_ctx*)* @vicodec_mark_last_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicodec_mark_last_buf(%struct.vicodec_ctx* %0) #0 {
  %2 = alloca %struct.vicodec_ctx*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @spin_lock(i32 %7)
  %9 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %65

22:                                               ; preds = %16
  %23 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @v4l2_m2m_last_src_buf(i32 %26)
  %28 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %65

37:                                               ; preds = %22
  %38 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %41)
  store %struct.vb2_v4l2_buffer* %42, %struct.vb2_v4l2_buffer** %3, align 8
  %43 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %44 = icmp ne %struct.vb2_v4l2_buffer* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  br label %65

48:                                               ; preds = %37
  %49 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %57 = call i32 @vb2_buffer_done(i32* %55, i32 %56)
  %58 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %62, i32 0, i32 4
  %64 = call i32 @v4l2_event_queue_fh(%struct.TYPE_2__* %63, i32* @vicodec_eos_event)
  br label %65

65:                                               ; preds = %48, %45, %36, %21, %13
  %66 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @spin_unlock(i32 %68)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i64 @v4l2_m2m_last_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i32 @v4l2_event_queue_fh(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
