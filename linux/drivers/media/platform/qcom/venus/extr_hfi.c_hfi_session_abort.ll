; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi_ops* }
%struct.hfi_ops = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_abort(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.hfi_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.hfi_ops*, %struct.hfi_ops** %9, align 8
  store %struct.hfi_ops* %10, %struct.hfi_ops** %4, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %12 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %11, i32 0, i32 0
  %13 = call i32 @reinit_completion(i32* %12)
  %14 = load %struct.hfi_ops*, %struct.hfi_ops** %4, align 8
  %15 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.venus_inst*)**
  %17 = load i32 (%struct.venus_inst*)*, i32 (%struct.venus_inst*)** %16, align 8
  %18 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %19 = call i32 %17(%struct.venus_inst* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %26 = call i32 @wait_session_msg(%struct.venus_inst* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %29, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_session_msg(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
