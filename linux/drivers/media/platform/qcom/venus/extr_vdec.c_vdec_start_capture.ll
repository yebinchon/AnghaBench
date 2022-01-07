; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_start_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_start_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, i32, i64, i32, i32, i32 }

@VENUS_DEC_STATE_DECODING = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_STOPPED = common dso_local global i64 0, align 8
@HFI_FLUSH_OUTPUT = common dso_local global i32 0, align 4
@VB2_MAX_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @vdec_start_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_start_capture(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %5 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %6 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

10:                                               ; preds = %1
  %11 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %12 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VENUS_DEC_STATE_DECODING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %24 = call i32 @venus_helper_queue_dpb_bufs(%struct.venus_inst* %23)
  %25 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %26 = call i32 @venus_helper_process_initial_cap_bufs(%struct.venus_inst* %25)
  %27 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %28 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %113

29:                                               ; preds = %10
  %30 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %31 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VENUS_DEC_STATE_STOPPED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %113

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %39 = load i32, i32* @HFI_FLUSH_OUTPUT, align 4
  %40 = call i32 @hfi_session_flush(%struct.venus_inst* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %113

45:                                               ; preds = %37
  %46 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %47 = call i32 @vdec_output_conf(%struct.venus_inst* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %113

52:                                               ; preds = %45
  %53 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %54 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %55 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VB2_MAX_FRAME, align 4
  %58 = load i32, i32* @VB2_MAX_FRAME, align 4
  %59 = call i32 @venus_helper_set_num_bufs(%struct.venus_inst* %53, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %113

64:                                               ; preds = %52
  %65 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %66 = call i32 @venus_helper_intbufs_realloc(%struct.venus_inst* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %111

70:                                               ; preds = %64
  %71 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %72 = call i32 @venus_helper_alloc_dpb_bufs(%struct.venus_inst* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %111

76:                                               ; preds = %70
  %77 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %78 = call i32 @venus_helper_queue_dpb_bufs(%struct.venus_inst* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %108

82:                                               ; preds = %76
  %83 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %84 = call i32 @venus_helper_process_initial_cap_bufs(%struct.venus_inst* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %108

88:                                               ; preds = %82
  %89 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %90 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @venus_helper_load_scale_clocks(i32 %91)
  %93 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %94 = call i32 @hfi_session_continue(%struct.venus_inst* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %108

98:                                               ; preds = %88
  %99 = load i64, i64* @VENUS_DEC_STATE_DECODING, align 8
  %100 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %101 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %103 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  %104 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %105 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %107 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %106, i32 0, i32 1
  store i32 0, i32* %107, align 8
  store i32 0, i32* %2, align 4
  br label %113

108:                                              ; preds = %97, %87, %81
  %109 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %110 = call i32 @venus_helper_free_dpb_bufs(%struct.venus_inst* %109)
  br label %111

111:                                              ; preds = %108, %75, %69
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %98, %62, %50, %43, %35, %22, %9
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @venus_helper_queue_dpb_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_process_initial_cap_bufs(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_flush(%struct.venus_inst*, i32) #1

declare dso_local i32 @vdec_output_conf(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_set_num_bufs(%struct.venus_inst*, i32, i32, i32) #1

declare dso_local i32 @venus_helper_intbufs_realloc(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_alloc_dpb_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_load_scale_clocks(i32) #1

declare dso_local i32 @hfi_session_continue(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_free_dpb_bufs(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
