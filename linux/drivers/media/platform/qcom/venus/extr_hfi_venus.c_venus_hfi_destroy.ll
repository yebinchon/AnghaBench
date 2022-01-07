; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_hfi_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_hfi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32*, i32* }
%struct.venus_hfi_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @venus_hfi_destroy(%struct.venus_core* %0) #0 {
  %2 = alloca %struct.venus_core*, align 8
  %3 = alloca %struct.venus_hfi_device*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %2, align 8
  %4 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %5 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %4)
  store %struct.venus_hfi_device* %5, %struct.venus_hfi_device** %3, align 8
  %6 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %7 = call i32 @venus_interface_queues_release(%struct.venus_hfi_device* %6)
  %8 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %9 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_destroy(i32* %9)
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %12 = call i32 @kfree(%struct.venus_hfi_device* %11)
  %13 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %14 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %16 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  ret void
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

declare dso_local i32 @venus_interface_queues_release(%struct.venus_hfi_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
