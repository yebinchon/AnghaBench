; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_interface_queues_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_interface_queues_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_hfi_device*)* @venus_interface_queues_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venus_interface_queues_release(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca %struct.venus_hfi_device*, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %2, align 8
  %3 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %4 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %7 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %8 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %7, i32 0, i32 2
  %9 = call i32 @venus_free(%struct.venus_hfi_device* %6, i32* %8)
  %10 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %12 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %11, i32 0, i32 1
  %13 = call i32 @venus_free(%struct.venus_hfi_device* %10, i32* %12)
  %14 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %15 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @memset(i32* %16, i32 0, i32 8)
  %18 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %19 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %18, i32 0, i32 2
  %20 = call i32 @memset(i32* %19, i32 0, i32 4)
  %21 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %22 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %21, i32 0, i32 1
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %25 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @venus_free(%struct.venus_hfi_device*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
