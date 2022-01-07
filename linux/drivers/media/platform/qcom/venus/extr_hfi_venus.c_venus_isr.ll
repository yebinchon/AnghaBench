; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_hfi_device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@WRAPPER_INTR_STATUS = common dso_local global i32 0, align 4
@WRAPPER_INTR_STATUS_A2H_MASK = common dso_local global i32 0, align 4
@WRAPPER_INTR_STATUS_A2HWD_MASK = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG0_INIT_IDLE_MSG_MASK = common dso_local global i32 0, align 4
@CPU_CS_A2HSOFTINTCLR = common dso_local global i32 0, align 4
@WRAPPER_INTR_CLEAR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*)* @venus_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_isr(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %6 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %7 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %6)
  store %struct.venus_hfi_device* %7, %struct.venus_hfi_device** %4, align 8
  %8 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %9 = icmp ne %struct.venus_hfi_device* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %14 = load i32, i32* @WRAPPER_INTR_STATUS, align 4
  %15 = call i32 @venus_readl(%struct.venus_hfi_device* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WRAPPER_INTR_STATUS_A2H_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WRAPPER_INTR_STATUS_A2HWD_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CPU_CS_SCIACMDARG0_INIT_IDLE_MSG_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %20, %12
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %33 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %36 = load i32, i32* @CPU_CS_A2HSOFTINTCLR, align 4
  %37 = call i32 @venus_writel(%struct.venus_hfi_device* %35, i32 %36, i32 1)
  %38 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %39 = load i32, i32* @WRAPPER_INTR_CLEAR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @venus_writel(%struct.venus_hfi_device* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

declare dso_local i32 @venus_readl(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @venus_writel(%struct.venus_hfi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
