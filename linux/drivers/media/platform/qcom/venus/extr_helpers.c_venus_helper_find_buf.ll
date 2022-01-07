; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_find_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_find_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_v4l2_buffer = type { i32 }
%struct.venus_inst = type { %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_ctx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vb2_v4l2_buffer* @venus_helper_find_buf(%struct.venus_inst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_m2m_ctx*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 0
  %11 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %10, align 8
  store %struct.v4l2_m2m_ctx* %11, %struct.v4l2_m2m_ctx** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove_by_idx(%struct.v4l2_m2m_ctx* %16, i32 %17)
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %4, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove_by_idx(%struct.v4l2_m2m_ctx* %20, i32 %21)
  store %struct.vb2_v4l2_buffer* %22, %struct.vb2_v4l2_buffer** %4, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  ret %struct.vb2_v4l2_buffer* %24
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove_by_idx(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove_by_idx(%struct.v4l2_m2m_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
