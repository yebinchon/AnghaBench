; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_start_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_start_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, i32, i32, i64 }

@VENUS_DEC_STATE_SEEK = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_DECODING = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_INIT = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_CAPTURE_SETUP = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_DEINIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VB2_MAX_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @vdec_start_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_start_output(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %5 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %6 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VENUS_DEC_STATE_SEEK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %12 = call i32 @venus_helper_process_initial_out_bufs(%struct.venus_inst* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* @VENUS_DEC_STATE_DECODING, align 8
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %97

16:                                               ; preds = %1
  %17 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VENUS_DEC_STATE_INIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %24 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VENUS_DEC_STATE_CAPTURE_SETUP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16
  %29 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %30 = call i32 @venus_helper_process_initial_out_bufs(%struct.venus_inst* %29)
  store i32 %30, i32* %4, align 4
  br label %97

31:                                               ; preds = %22
  %32 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %33 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VENUS_DEC_STATE_DEINIT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %101

40:                                               ; preds = %31
  %41 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %42 = call i32 @venus_helper_init_instance(%struct.venus_inst* %41)
  %43 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %44 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %46 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %45, i32 0, i32 1
  store i32 0, i32* %46, align 8
  %47 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %48 = call i32 @vdec_set_properties(%struct.venus_inst* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %101

53:                                               ; preds = %40
  %54 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %55 = call i32 @vdec_output_conf(%struct.venus_inst* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %101

60:                                               ; preds = %53
  %61 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %62 = call i32 @vdec_verify_conf(%struct.venus_inst* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %101

67:                                               ; preds = %60
  %68 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %69 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %70 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VB2_MAX_FRAME, align 4
  %73 = load i32, i32* @VB2_MAX_FRAME, align 4
  %74 = call i32 @venus_helper_set_num_bufs(%struct.venus_inst* %68, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %101

79:                                               ; preds = %67
  %80 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %81 = call i32 @venus_helper_vb2_start_streaming(%struct.venus_inst* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %101

86:                                               ; preds = %79
  %87 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %88 = call i32 @venus_helper_process_initial_out_bufs(%struct.venus_inst* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %101

93:                                               ; preds = %86
  %94 = load i64, i64* @VENUS_DEC_STATE_INIT, align 8
  %95 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %96 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %28, %10
  %98 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %99 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %91, %84, %77, %65, %58, %51, %37
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @venus_helper_process_initial_out_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_init_instance(%struct.venus_inst*) #1

declare dso_local i32 @vdec_set_properties(%struct.venus_inst*) #1

declare dso_local i32 @vdec_output_conf(%struct.venus_inst*) #1

declare dso_local i32 @vdec_verify_conf(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_set_num_bufs(%struct.venus_inst*, i32, i32, i32) #1

declare dso_local i32 @venus_helper_vb2_start_streaming(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
