; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_dma_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_dma_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32*, i64, i32, i32*, i64 }

@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA=0x%lx cpu=0x%p size=%d\00", align 1
@MANTIS_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RISC=0x%lx cpu=0x%p size=%lx\00", align 1
@MANTIS_RISC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_dma_exit(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %3 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %4 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @MANTIS_ERROR, align 4
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %13 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @MANTIS_BUF_SIZE, align 4
  %16 = call i32 @dprintk(i32 %8, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %11, i32* %14, i32 %15)
  %17 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %18 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MANTIS_BUF_SIZE, align 4
  %21 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %22 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %25 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @pci_free_consistent(i32 %19, i32 %20, i32* %23, i64 %26)
  %28 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %29 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %7, %1
  %31 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %32 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i32, i32* @MANTIS_ERROR, align 4
  %37 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %38 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %41 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @MANTIS_RISC_SIZE, align 4
  %44 = call i32 @dprintk(i32 %36, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %39, i32* %42, i32 %43)
  %45 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %46 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MANTIS_RISC_SIZE, align 4
  %49 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %50 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %53 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pci_free_consistent(i32 %47, i32 %48, i32* %51, i64 %54)
  %56 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %57 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %35, %30
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i8*, i64, i32*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
