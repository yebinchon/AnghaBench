; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_write_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { i32, %struct.mantis_pci*, %struct.mantis_slot* }
%struct.mantis_pci = type { i32 }
%struct.mantis_slot = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Adapter(%d) Slot(0): Request HIF Mem Write\00", align 1
@MANTIS_GPIF_HIFRDWRN = common dso_local global i32 0, align 4
@MANTIS_GPIF_PCMCIAREG = common dso_local global i32 0, align 4
@MANTIS_GPIF_PCMCIAIOM = common dso_local global i32 0, align 4
@MANTIS_HIF_STATUS = common dso_local global i32 0, align 4
@MANTIS_GPIF_CFGSLA = common dso_local global i32 0, align 4
@MANTIS_GPIF_ADDR = common dso_local global i32 0, align 4
@MANTIS_GPIF_DOUT = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Adapter(%d) Slot(0): HIF Smart Buffer operation failed\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Mem Write: (0x%02x to 0x%02x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_hif_write_mem(%struct.mantis_ca* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mantis_ca*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mantis_slot*, align 8
  %9 = alloca %struct.mantis_pci*, align 8
  %10 = alloca i32, align 4
  store %struct.mantis_ca* %0, %struct.mantis_ca** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %12 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %11, i32 0, i32 2
  %13 = load %struct.mantis_slot*, %struct.mantis_slot** %12, align 8
  store %struct.mantis_slot* %13, %struct.mantis_slot** %8, align 8
  %14 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %15 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %14, i32 0, i32 1
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %15, align 8
  store %struct.mantis_pci* %16, %struct.mantis_pci** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @MANTIS_DEBUG, align 4
  %18 = load %struct.mantis_pci*, %struct.mantis_pci** %9, align 8
  %19 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i32, i8*, i32, ...) @dprintk(i32 %17, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %23 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* @MANTIS_GPIF_HIFRDWRN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @MANTIS_GPIF_PCMCIAREG, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @MANTIS_GPIF_PCMCIAIOM, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @MANTIS_HIF_STATUS, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.mantis_slot*, %struct.mantis_slot** %8, align 8
  %44 = getelementptr inbounds %struct.mantis_slot, %struct.mantis_slot* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MANTIS_GPIF_CFGSLA, align 4
  %47 = call i32 @mmwrite(i32 %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @MANTIS_GPIF_ADDR, align 4
  %50 = call i32 @mmwrite(i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MANTIS_GPIF_DOUT, align 4
  %53 = call i32 @mmwrite(i32 %51, i32 %52)
  %54 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %55 = call i64 @mantis_hif_write_wait(%struct.mantis_ca* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %3
  %58 = load i32, i32* @MANTIS_ERROR, align 4
  %59 = load %struct.mantis_pci*, %struct.mantis_pci** %9, align 8
  %60 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i32, i8*, i32, ...) @dprintk(i32 %58, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %64 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* @EREMOTEIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %76

68:                                               ; preds = %3
  %69 = load i32, i32* @MANTIS_DEBUG, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i32, i8*, i32, ...) @dprintk(i32 %69, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %74 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %68, %57
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i64 @mantis_hif_write_wait(%struct.mantis_ca*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
