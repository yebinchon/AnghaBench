; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Mantis DMA init\00", align 1
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error allocating DMA buffer\00", align 1
@MANTIS_DMA_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_dma_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %5 = load i32, i32* @MANTIS_DEBUG, align 4
  %6 = call i32 @dprintk(i32 %5, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %8 = call i32 @mantis_alloc_buffers(%struct.mantis_pci* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @MANTIS_ERROR, align 4
  %13 = call i32 @dprintk(i32 %12, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @MANTIS_DMA_CTL, align 4
  %15 = call i32 @mmwrite(i32 0, i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @mantis_alloc_buffers(%struct.mantis_pci*) #1

declare dso_local i32 @mmwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
