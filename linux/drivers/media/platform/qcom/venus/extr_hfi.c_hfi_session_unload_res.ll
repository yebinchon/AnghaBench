; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_unload_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_unload_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi_ops* }
%struct.hfi_ops = type { {}* }

@INST_STOP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@INST_RELEASE_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_unload_res(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.hfi_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.hfi_ops*, %struct.hfi_ops** %9, align 8
  store %struct.hfi_ops* %10, %struct.hfi_ops** %4, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %12 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @INST_STOP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 1
  %22 = call i32 @reinit_completion(i32* %21)
  %23 = load %struct.hfi_ops*, %struct.hfi_ops** %4, align 8
  %24 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.venus_inst*)**
  %26 = load i32 (%struct.venus_inst*)*, i32 (%struct.venus_inst*)** %25, align 8
  %27 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %28 = call i32 %26(%struct.venus_inst* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %19
  %34 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %35 = call i32 @wait_session_msg(%struct.venus_inst* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load i64, i64* @INST_RELEASE_RESOURCES, align 8
  %42 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %43 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %38, %31, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_session_msg(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
