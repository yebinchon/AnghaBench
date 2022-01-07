; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_halt_engines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_halt_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Halting compute engines and disabling interrupts\0A\00", align 1
@GOYA_PLDM_RESET_WAIT_MSEC = common dso_local global i32 0, align 4
@GOYA_RESET_WAIT_MSEC = common dso_local global i32 0, align 4
@GOYA_CPU_RESET_WAIT_MSEC = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_UBOOT_MAGIC = common dso_local global i32 0, align 4
@KMD_MSG_GOTO_WFE = common dso_local global i32 0, align 4
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_HALT_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32)* @goya_halt_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_halt_engines(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @GOYA_PLDM_RESET_WAIT_MSEC, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @GOYA_PLDM_RESET_WAIT_MSEC, align 4
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @GOYA_RESET_WAIT_MSEC, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @GOYA_CPU_RESET_WAIT_MSEC, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* @mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, align 4
  %26 = load i32, i32* @KMD_MSG_GOTO_WFE, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  %28 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %29 = load i32, i32* @GOYA_ASYNC_EVENT_ID_HALT_MACHINE, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @msleep(i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = call i32 @goya_stop_external_queues(%struct.hl_device* %34)
  %36 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %37 = call i32 @goya_stop_internal_queues(%struct.hl_device* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @msleep(i32 %38)
  %40 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %41 = call i32 @goya_dma_stall(%struct.hl_device* %40)
  %42 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %43 = call i32 @goya_tpc_stall(%struct.hl_device* %42)
  %44 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %45 = call i32 @goya_mme_stall(%struct.hl_device* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @msleep(i32 %46)
  %48 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %49 = call i32 @goya_disable_external_queues(%struct.hl_device* %48)
  %50 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %51 = call i32 @goya_disable_internal_queues(%struct.hl_device* %50)
  %52 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %53 = call i32 @goya_disable_timestamp(%struct.hl_device* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %33
  %57 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %58 = call i32 @goya_disable_msix(%struct.hl_device* %57)
  %59 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %60 = call i32 @goya_mmu_remove_device_cpu_mappings(%struct.hl_device* %59)
  br label %64

61:                                               ; preds = %33
  %62 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %63 = call i32 @goya_sync_irqs(%struct.hl_device* %62)
  br label %64

64:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @goya_stop_external_queues(%struct.hl_device*) #1

declare dso_local i32 @goya_stop_internal_queues(%struct.hl_device*) #1

declare dso_local i32 @goya_dma_stall(%struct.hl_device*) #1

declare dso_local i32 @goya_tpc_stall(%struct.hl_device*) #1

declare dso_local i32 @goya_mme_stall(%struct.hl_device*) #1

declare dso_local i32 @goya_disable_external_queues(%struct.hl_device*) #1

declare dso_local i32 @goya_disable_internal_queues(%struct.hl_device*) #1

declare dso_local i32 @goya_disable_timestamp(%struct.hl_device*) #1

declare dso_local i32 @goya_disable_msix(%struct.hl_device*) #1

declare dso_local i32 @goya_mmu_remove_device_cpu_mappings(%struct.hl_device*) #1

declare dso_local i32 @goya_sync_irqs(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
