; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_cpu_idle_and_pc_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_cpu_idle_and_pc_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32 }

@WRAPPER_CPU_STATUS = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG0 = common dso_local global i32 0, align 4
@WRAPPER_CPU_STATUS_WFI = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG0_PC_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*)* @venus_cpu_idle_and_pc_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_cpu_idle_and_pc_ready(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_hfi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %3, align 8
  %6 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %7 = load i32, i32* @WRAPPER_CPU_STATUS, align 4
  %8 = call i32 @venus_readl(%struct.venus_hfi_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %10 = load i32, i32* @CPU_CS_SCIACMDARG0, align 4
  %11 = call i32 @venus_readl(%struct.venus_hfi_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @WRAPPER_CPU_STATUS_WFI, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CPU_CS_SCIACMDARG0_PC_READY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @venus_readl(%struct.venus_hfi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
