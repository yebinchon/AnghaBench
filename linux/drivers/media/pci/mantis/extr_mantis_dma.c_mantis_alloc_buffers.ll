; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i8*, i64, i32, i8*, i64 }

@MANTIS_BUF_SIZE = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DMA buffer allocation failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DMA=0x%lx cpu=0x%p size=%d\00", align 1
@MANTIS_RISC_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"RISC program allocation failed\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"RISC=0x%lx cpu=0x%p size=%lx\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Out of memory (?) .....\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*)* @mantis_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_alloc_buffers(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %4 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %5 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %4, i32 0, i32 3
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MANTIS_BUF_SIZE, align 4
  %13 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %14 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %13, i32 0, i32 4
  %15 = call i8* @pci_alloc_consistent(i32 %11, i32 %12, i64* %14)
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %17 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %19 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* @MANTIS_ERROR, align 4
  %24 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %23, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %70

25:                                               ; preds = %8
  %26 = load i32, i32* @MANTIS_ERROR, align 4
  %27 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %28 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %31 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @MANTIS_BUF_SIZE, align 4
  %34 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %26, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %29, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %37 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %35
  %41 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %42 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MANTIS_RISC_SIZE, align 4
  %45 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %46 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %45, i32 0, i32 1
  %47 = call i8* @pci_alloc_consistent(i32 %43, i32 %44, i64* %46)
  %48 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %49 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %51 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @MANTIS_ERROR, align 4
  %56 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %55, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %58 = call i32 @mantis_dma_exit(%struct.mantis_pci* %57)
  br label %70

59:                                               ; preds = %40
  %60 = load i32, i32* @MANTIS_ERROR, align 4
  %61 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %62 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %65 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @MANTIS_RISC_SIZE, align 4
  %68 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %60, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %63, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %35
  store i32 0, i32* %2, align 4
  br label %75

70:                                               ; preds = %54, %22
  %71 = load i32, i32* @MANTIS_ERROR, align 4
  %72 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %71, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %69
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mantis_dma_exit(%struct.mantis_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
