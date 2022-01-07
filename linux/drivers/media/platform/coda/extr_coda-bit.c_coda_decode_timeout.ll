; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_decode_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_decode_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i64 }

@CODA_BIT_STREAM_END_FLAG = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_decode_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_decode_timeout(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %4 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CODA_BIT_STREAM_END_FLAG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %15)
  store %struct.vb2_v4l2_buffer* %16, %struct.vb2_v4l2_buffer** %3, align 8
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %25 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %26 = call i32 @coda_m2m_buf_done(%struct.coda_ctx* %23, %struct.vb2_v4l2_buffer* %24, i32 %25)
  br label %27

27:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @coda_m2m_buf_done(%struct.coda_ctx*, %struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
