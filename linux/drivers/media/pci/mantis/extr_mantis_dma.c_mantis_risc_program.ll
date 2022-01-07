; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_risc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dma.c_mantis_risc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i64, i64 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Mantis create RISC program\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"risc len lines %u, bytes per line %u, bytes per DMA tr %u\00", align 1
@MANTIS_BLOCK_COUNT = common dso_local global i64 0, align 8
@MANTIS_BLOCK_BYTES = common dso_local global i32 0, align 4
@MANTIS_DMA_TR_BYTES = common dso_local global i64 0, align 8
@MANTIS_DMA_TR_UNITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"RISC PROG line=[%d], step=[%d]\00", align 1
@RISC_WRITE = common dso_local global i64 0, align 8
@RISC_IRQ = common dso_local global i64 0, align 8
@RISC_JUMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mantis_pci*)* @mantis_risc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mantis_risc_program(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i32, i32* @MANTIS_DEBUG, align 4
  %8 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %7, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @RISC_FLUSH(i64 %9)
  %11 = load i32, i32* @MANTIS_DEBUG, align 4
  %12 = load i64, i64* @MANTIS_BLOCK_COUNT, align 8
  %13 = load i32, i32* @MANTIS_BLOCK_BYTES, align 4
  %14 = load i64, i64* @MANTIS_DMA_TR_BYTES, align 8
  %15 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %11, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %12, i32 %13, i64 %14)
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @MANTIS_BLOCK_COUNT, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MANTIS_DMA_TR_UNITS, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load i32, i32* @MANTIS_DEBUG, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %26, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @RISC_WRITE, align 8
  %35 = load i64, i64* @RISC_IRQ, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @RISC_STATUS(i64 %37)
  %39 = or i64 %36, %38
  %40 = load i64, i64* @MANTIS_DMA_TR_BYTES, align 8
  %41 = or i64 %39, %40
  %42 = call i32 @RISC_INSTR(i64 %33, i64 %41)
  br label %49

43:                                               ; preds = %25
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @RISC_WRITE, align 8
  %46 = load i64, i64* @MANTIS_DMA_TR_BYTES, align 8
  %47 = or i64 %45, %46
  %48 = call i32 @RISC_INSTR(i64 %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %52 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @RISC_INSTR(i64 %50, i64 %55)
  %57 = load i64, i64* @MANTIS_DMA_TR_BYTES, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %49
  %61 = load i64, i64* %5, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %21

63:                                               ; preds = %21
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %16

67:                                               ; preds = %16
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @RISC_JUMP, align 8
  %70 = call i32 @RISC_INSTR(i64 %68, i64 %69)
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %73 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @RISC_INSTR(i64 %71, i64 %74)
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @RISC_FLUSH(i64) #1

declare dso_local i32 @RISC_INSTR(i64, i64) #1

declare dso_local i64 @RISC_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
