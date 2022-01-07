; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, i32, i32, %struct.venus_core* }
%struct.venus_core = type { %struct.hfi_ops* }
%struct.hfi_ops = type { i32 (%struct.venus_inst*, i32, i32)* }

@INST_UNINIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@INST_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_init(%struct.venus_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_core*, align 8
  %7 = alloca %struct.hfi_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 4
  %11 = load %struct.venus_core*, %struct.venus_core** %10, align 8
  store %struct.venus_core* %11, %struct.venus_core** %6, align 8
  %12 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %13 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %12, i32 0, i32 0
  %14 = load %struct.hfi_ops*, %struct.hfi_ops** %13, align 8
  store %struct.hfi_ops* %14, %struct.hfi_ops** %7, align 8
  %15 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %16 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INST_UNINIT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @to_codec_type(i32 %24)
  %26 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %27 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %29 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %28, i32 0, i32 3
  %30 = call i32 @reinit_completion(i32* %29)
  %31 = load %struct.hfi_ops*, %struct.hfi_ops** %7, align 8
  %32 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.venus_inst*, i32, i32)*, i32 (%struct.venus_inst*, i32, i32)** %32, align 8
  %34 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %35 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %36 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %39 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %33(%struct.venus_inst* %34, i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %23
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %23
  %47 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %48 = call i32 @wait_session_msg(%struct.venus_inst* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load i64, i64* @INST_INIT, align 8
  %55 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %56 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %51, %44, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @to_codec_type(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_session_msg(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
