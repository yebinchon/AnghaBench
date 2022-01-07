; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_process_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_process_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi_ops* }
%struct.hfi_ops = type { i32 (%struct.venus_inst*, %struct.hfi_frame_data*)*, i32 (%struct.venus_inst*, %struct.hfi_frame_data.0*)* }
%struct.hfi_frame_data = type opaque
%struct.hfi_frame_data.0 = type opaque
%struct.hfi_frame_data.1 = type { i64 }

@HFI_BUFFER_INPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_process_buf(%struct.venus_inst* %0, %struct.hfi_frame_data.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.hfi_frame_data.1*, align 8
  %6 = alloca %struct.hfi_ops*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store %struct.hfi_frame_data.1* %1, %struct.hfi_frame_data.1** %5, align 8
  %7 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %8 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hfi_ops*, %struct.hfi_ops** %10, align 8
  store %struct.hfi_ops* %11, %struct.hfi_ops** %6, align 8
  %12 = load %struct.hfi_frame_data.1*, %struct.hfi_frame_data.1** %5, align 8
  %13 = getelementptr inbounds %struct.hfi_frame_data.1, %struct.hfi_frame_data.1* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HFI_BUFFER_INPUT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.hfi_ops*, %struct.hfi_ops** %6, align 8
  %19 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.venus_inst*, %struct.hfi_frame_data*)*, i32 (%struct.venus_inst*, %struct.hfi_frame_data*)** %19, align 8
  %21 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %22 = load %struct.hfi_frame_data.1*, %struct.hfi_frame_data.1** %5, align 8
  %23 = bitcast %struct.hfi_frame_data.1* %22 to %struct.hfi_frame_data*
  %24 = call i32 %20(%struct.venus_inst* %21, %struct.hfi_frame_data* %23)
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.hfi_frame_data.1*, %struct.hfi_frame_data.1** %5, align 8
  %27 = getelementptr inbounds %struct.hfi_frame_data.1, %struct.hfi_frame_data.1* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.hfi_frame_data.1*, %struct.hfi_frame_data.1** %5, align 8
  %33 = getelementptr inbounds %struct.hfi_frame_data.1, %struct.hfi_frame_data.1* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %25
  %38 = load %struct.hfi_ops*, %struct.hfi_ops** %6, align 8
  %39 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %38, i32 0, i32 1
  %40 = load i32 (%struct.venus_inst*, %struct.hfi_frame_data.0*)*, i32 (%struct.venus_inst*, %struct.hfi_frame_data.0*)** %39, align 8
  %41 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %42 = load %struct.hfi_frame_data.1*, %struct.hfi_frame_data.1** %5, align 8
  %43 = bitcast %struct.hfi_frame_data.1* %42 to %struct.hfi_frame_data.0*
  %44 = call i32 %40(%struct.venus_inst* %41, %struct.hfi_frame_data.0* %43)
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %37, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
