; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi_ops* }
%struct.hfi_ops = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_flush(%struct.venus_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %9 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hfi_ops*, %struct.hfi_ops** %11, align 8
  store %struct.hfi_ops* %12, %struct.hfi_ops** %6, align 8
  %13 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 0
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load %struct.hfi_ops*, %struct.hfi_ops** %6, align 8
  %17 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.venus_inst*, i32)**
  %19 = load i32 (%struct.venus_inst*, i32)*, i32 (%struct.venus_inst*, i32)** %18, align 8
  %20 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(%struct.venus_inst* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %29 = call i32 @wait_session_msg(%struct.venus_inst* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32, %25
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_session_msg(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
