; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_set_last_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_set_last_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_v4l2_buffer = type { i32, i64, i32 }
%struct.vicodec_ctx = type { i32 }
%struct.vicodec_q_data = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*, %struct.vicodec_ctx*)* @set_last_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_last_buffer(%struct.vb2_v4l2_buffer* %0, %struct.vb2_v4l2_buffer* %1, %struct.vicodec_ctx* %2) #0 {
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vicodec_ctx*, align 8
  %7 = alloca %struct.vicodec_q_data*, align 8
  store %struct.vb2_v4l2_buffer* %0, %struct.vb2_v4l2_buffer** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  store %struct.vicodec_ctx* %2, %struct.vicodec_ctx** %6, align 8
  %8 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %9 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %10 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %8, i32 %9)
  store %struct.vicodec_q_data* %10, %struct.vicodec_q_data** %7, align 8
  %11 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %11, i32 0, i32 2
  %13 = call i32 @vb2_set_plane_payload(i32* %12, i32 0, i32 0)
  %14 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %15 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = sext i32 %16 to i64
  %19 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %22 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %23 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer* %21, %struct.vb2_v4l2_buffer* %22, i32 %28)
  %30 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %36 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %37 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %35, i32 %36)
  ret void
}

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i32) #1

declare dso_local i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
