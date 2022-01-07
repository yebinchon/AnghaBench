; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.venus_inst = type { i64, i32, i64, i64, %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_ctx = type { i32 }

@VIDC_SESSION_TYPE_ENC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @venus_helper_vb2_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %7)
  store %struct.vb2_v4l2_buffer* %8, %struct.vb2_v4l2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.venus_inst* @vb2_get_drv_priv(i32 %11)
  store %struct.venus_inst* %12, %struct.venus_inst** %4, align 8
  %13 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 4
  %15 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %14, align 8
  store %struct.v4l2_m2m_ctx* %15, %struct.v4l2_m2m_ctx** %5, align 8
  %16 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %17 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %20 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %21 = call i32 @v4l2_m2m_buf_queue(%struct.v4l2_m2m_ctx* %19, %struct.vb2_v4l2_buffer* %20)
  %22 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %23 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VIDC_SESSION_TYPE_ENC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %29 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %27
  br label %63

38:                                               ; preds = %32, %1
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @vb2_start_streaming_called(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %47 = call i32 @is_buf_refed(%struct.venus_inst* %45, %struct.vb2_v4l2_buffer* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %63

51:                                               ; preds = %44
  %52 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %53 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %54 = call i32 @session_process_buf(%struct.venus_inst* %52, %struct.vb2_v4l2_buffer* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %59 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %60 = call i32 @return_buf_error(%struct.venus_inst* %58, %struct.vb2_v4l2_buffer* %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %50, %37
  %64 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %65 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_buf_queue(%struct.v4l2_m2m_ctx*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_start_streaming_called(i32) #1

declare dso_local i32 @is_buf_refed(%struct.venus_inst*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @session_process_buf(%struct.venus_inst*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @return_buf_error(%struct.venus_inst*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
