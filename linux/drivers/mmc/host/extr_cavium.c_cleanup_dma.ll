; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cleanup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cleanup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64 }

@MIO_EMM_DMA_VAL = common dso_local global i32 0, align 4
@MIO_EMM_DMA_DAT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, i32)* @cleanup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_dma(%struct.cvm_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %10 = call i64 @MIO_EMM_DMA(%struct.cvm_mmc_host* %9)
  %11 = add nsw i64 %8, %10
  %12 = call i32 @readq(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MIO_EMM_DMA_VAL, align 4
  %14 = call i32 @FIELD_PREP(i32 %13, i32 1)
  %15 = load i32, i32* @MIO_EMM_DMA_DAT_NULL, align 4
  %16 = call i32 @FIELD_PREP(i32 %15, i32 1)
  %17 = or i32 %14, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @get_bus_id(i32 %20)
  %22 = call i32 @set_bus_id(i32* %5, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %28 = call i64 @MIO_EMM_DMA(%struct.cvm_mmc_host* %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writeq(i32 %23, i64 %29)
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_DMA(%struct.cvm_mmc_host*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @set_bus_id(i32*, i32) #1

declare dso_local i32 @get_bus_id(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
