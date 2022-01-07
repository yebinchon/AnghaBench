; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_buffers_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_buffers_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @venus_helper_buffers_done(%struct.venus_inst* %0, i32 %1) #0 {
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %8 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %5, align 8
  %11 = icmp ne %struct.vb2_v4l2_buffer* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %13, i32 %14)
  br label %6

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %23, %16
  %18 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %19 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %20)
  store %struct.vb2_v4l2_buffer* %21, %struct.vb2_v4l2_buffer** %5, align 8
  %22 = icmp ne %struct.vb2_v4l2_buffer* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %24, i32 %25)
  br label %17

27:                                               ; preds = %17
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
