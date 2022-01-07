; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.venus_inst = type { i32, i32, i32, i32, i64, %struct.venus_core* }
%struct.venus_core = type { i64 }

@EIO = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @venus_helper_vb2_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.venus_inst* %7, %struct.venus_inst** %3, align 8
  %8 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %8, i32 0, i32 5
  %10 = load %struct.venus_core*, %struct.venus_core** %9, align 8
  store %struct.venus_core* %10, %struct.venus_core** %4, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %12 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %1
  %23 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %24 = call i32 @hfi_session_stop(%struct.venus_inst* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %26 = call i32 @hfi_session_unload_res(%struct.venus_inst* %25)
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %30 = call i32 @venus_helper_unregister_bufs(%struct.venus_inst* %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %34 = call i32 @venus_helper_intbufs_free(%struct.venus_inst* %33)
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %38 = call i32 @hfi_session_deinit(%struct.venus_inst* %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %42 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %22
  %46 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %47 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %22
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %58 = call i32 @hfi_session_abort(%struct.venus_inst* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %61 = call i32 @venus_helper_free_dpb_bufs(%struct.venus_inst* %60)
  %62 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %63 = call i32 @venus_helper_load_scale_clocks(%struct.venus_core* %62)
  %64 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %65 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %64, i32 0, i32 3
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  br label %67

67:                                               ; preds = %59, %1
  %68 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %69 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %70 = call i32 @venus_helper_buffers_done(%struct.venus_inst* %68, i32 %69)
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %78 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %82

79:                                               ; preds = %67
  %80 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %81 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %84 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  ret void
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfi_session_stop(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_unload_res(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_unregister_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_intbufs_free(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_deinit(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_abort(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_free_dpb_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_load_scale_clocks(%struct.venus_core*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @venus_helper_buffers_done(%struct.venus_inst*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
