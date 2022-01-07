; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.venus_inst = type { i32, i32, i32, i32, i32, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @venc_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_inst*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = call %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.venus_inst* %9, %struct.venus_inst** %6, align 8
  %10 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %11 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %20 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %23 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %26 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %29 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %35 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %3, align 4
  br label %106

37:                                               ; preds = %24
  %38 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %39 = call i32 @venus_helper_init_instance(%struct.venus_inst* %38)
  %40 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %41 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %43 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %45 = call i32 @venc_init_session(%struct.venus_inst* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %86

49:                                               ; preds = %37
  %50 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %51 = call i32 @venc_set_properties(%struct.venus_inst* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %83

55:                                               ; preds = %49
  %56 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %57 = call i32 @venc_verify_conf(%struct.venus_inst* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %83

61:                                               ; preds = %55
  %62 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %63 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %64 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %67 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @venus_helper_set_num_bufs(%struct.venus_inst* %62, i32 %65, i32 %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %75 = call i32 @venus_helper_vb2_start_streaming(%struct.venus_inst* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %83

79:                                               ; preds = %73
  %80 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %81 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  store i32 0, i32* %3, align 4
  br label %106

83:                                               ; preds = %78, %72, %60, %54
  %84 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %85 = call i32 @hfi_session_deinit(%struct.venus_inst* %84)
  br label %86

86:                                               ; preds = %83, %48
  %87 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %88 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %89 = call i32 @venus_helper_buffers_done(%struct.venus_inst* %87, i32 %88)
  %90 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %91 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %97 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %101

98:                                               ; preds = %86
  %99 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %100 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.venus_inst*, %struct.venus_inst** %6, align 8
  %103 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %79, %33
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @venus_helper_init_instance(%struct.venus_inst*) #1

declare dso_local i32 @venc_init_session(%struct.venus_inst*) #1

declare dso_local i32 @venc_set_properties(%struct.venus_inst*) #1

declare dso_local i32 @venc_verify_conf(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_set_num_bufs(%struct.venus_inst*, i32, i32, i32) #1

declare dso_local i32 @venus_helper_vb2_start_streaming(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_deinit(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_buffers_done(%struct.venus_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
