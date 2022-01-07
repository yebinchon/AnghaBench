; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Mantis Stop DMA engine\00", align 1
@MANTIS_GPIF_ADDR = common dso_local global i32 0, align 4
@MANTIS_GPIF_HIFRDWRN = common dso_local global i32 0, align 4
@MANTIS_DMA_CTL = common dso_local global i32 0, align 4
@MANTIS_FIFO_EN = common dso_local global i32 0, align 4
@MANTIS_DCAP_EN = common dso_local global i32 0, align 4
@MANTIS_RISC_EN = common dso_local global i32 0, align 4
@MANTIS_INT_STAT = common dso_local global i32 0, align 4
@MANTIS_INT_RISCI = common dso_local global i32 0, align 4
@MANTIS_INT_RISCEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_dma_stop(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %3 = load i32, i32* @MANTIS_DEBUG, align 4
  %4 = call i32 @dprintk(i32 %3, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @MANTIS_GPIF_ADDR, align 4
  %6 = call i32 @mmread(i32 %5)
  %7 = load i32, i32* @MANTIS_GPIF_HIFRDWRN, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = load i32, i32* @MANTIS_GPIF_ADDR, align 4
  %11 = call i32 @mmwrite(i32 %9, i32 %10)
  %12 = load i32, i32* @MANTIS_DMA_CTL, align 4
  %13 = call i32 @mmread(i32 %12)
  %14 = load i32, i32* @MANTIS_FIFO_EN, align 4
  %15 = load i32, i32* @MANTIS_DCAP_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MANTIS_RISC_EN, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  %21 = load i32, i32* @MANTIS_DMA_CTL, align 4
  %22 = call i32 @mmwrite(i32 %20, i32 %21)
  %23 = load i32, i32* @MANTIS_INT_STAT, align 4
  %24 = call i32 @mmread(i32 %23)
  %25 = load i32, i32* @MANTIS_INT_STAT, align 4
  %26 = call i32 @mmwrite(i32 %24, i32 %25)
  %27 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %28 = load i32, i32* @MANTIS_INT_RISCI, align 4
  %29 = load i32, i32* @MANTIS_INT_RISCEN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mantis_mask_ints(%struct.mantis_pci* %27, i32 %30)
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mantis_mask_ints(%struct.mantis_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
