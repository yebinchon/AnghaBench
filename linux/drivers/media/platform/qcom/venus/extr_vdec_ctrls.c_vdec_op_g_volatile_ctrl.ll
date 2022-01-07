; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec_ctrls.c_vdec_op_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec_ctrls.c_vdec_op_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.venus_inst = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.vdec_controls }
%struct.vdec_controls = type { i32, i32, i32 }
%struct.hfi_buffer_requirements = type { i32 }
%union.hfi_get_property = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@HFI_PROPERTY_PARAM_PROFILE_LEVEL_CURRENT = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @vdec_op_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_op_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.vdec_controls*, align 8
  %6 = alloca %struct.hfi_buffer_requirements, align 4
  %7 = alloca %union.hfi_get_property, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = call %struct.venus_inst* @ctrl_to_inst(%struct.v4l2_ctrl* %11)
  store %struct.venus_inst* %12, %struct.venus_inst** %4, align 8
  %13 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.vdec_controls* %15, %struct.vdec_controls** %5, align 8
  %16 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %17 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @HFI_PROPERTY_PARAM_PROFILE_LEVEL_CURRENT, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %81 [
    i32 131, label %27
    i32 129, label %27
    i32 128, label %27
    i32 132, label %45
    i32 130, label %45
    i32 133, label %63
    i32 134, label %69
  ]

27:                                               ; preds = %1, %1, %1
  %28 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @hfi_session_get_property(%struct.venus_inst* %28, i32 %29, %union.hfi_get_property* %7)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = bitcast %union.hfi_get_property* %7 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vdec_controls*, %struct.vdec_controls** %5, align 8
  %38 = getelementptr inbounds %struct.vdec_controls, %struct.vdec_controls* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.vdec_controls*, %struct.vdec_controls** %5, align 8
  %41 = getelementptr inbounds %struct.vdec_controls, %struct.vdec_controls* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %84

45:                                               ; preds = %1, %1
  %46 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hfi_session_get_property(%struct.venus_inst* %46, i32 %47, %union.hfi_get_property* %7)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = bitcast %union.hfi_get_property* %7 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vdec_controls*, %struct.vdec_controls** %5, align 8
  %56 = getelementptr inbounds %struct.vdec_controls, %struct.vdec_controls* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.vdec_controls*, %struct.vdec_controls** %5, align 8
  %59 = getelementptr inbounds %struct.vdec_controls, %struct.vdec_controls* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %84

63:                                               ; preds = %1
  %64 = load %struct.vdec_controls*, %struct.vdec_controls** %5, align 8
  %65 = getelementptr inbounds %struct.vdec_controls, %struct.vdec_controls* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %84

69:                                               ; preds = %1
  %70 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %71 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %72 = call i32 @venus_helper_get_bufreq(%struct.venus_inst* %70, i32 %71, %struct.hfi_buffer_requirements* %6)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements* %6, i32 %76)
  %78 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  br label %84

81:                                               ; preds = %1
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %80, %63, %57, %39
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.venus_inst* @ctrl_to_inst(%struct.v4l2_ctrl*) #1

declare dso_local i32 @hfi_session_get_property(%struct.venus_inst*, i32, %union.hfi_get_property*) #1

declare dso_local i32 @venus_helper_get_bufreq(%struct.venus_inst*, i32, %struct.hfi_buffer_requirements*) #1

declare dso_local i32 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
