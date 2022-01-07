; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_m2m_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_m2m_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.v4l2_event = type { i32 }

@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_m2m_buf_done(%struct.coda_ctx* %0, %struct.vb2_v4l2_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_event, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %7, i32 0, i32 0
  %9 = load i32, i32* @V4L2_EVENT_EOS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %17, i32 0, i32 0
  %19 = call i32 @v4l2_event_queue_fh(i32* %18, %struct.v4l2_event* %7)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %21, i32 %22)
  ret void
}

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
