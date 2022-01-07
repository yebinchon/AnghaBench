; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { i32, %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Adapter(%d) Slot(0): Request HIF Mem Read\00", align 1
@MANTIS_GPIF_PCMCIAREG = common dso_local global i32 0, align 4
@MANTIS_GPIF_PCMCIAIOM = common dso_local global i32 0, align 4
@MANTIS_HIF_STATUS = common dso_local global i32 0, align 4
@MANTIS_GPIF_BRADDR = common dso_local global i32 0, align 4
@MANTIS_GPIF_BRBYTES = common dso_local global i32 0, align 4
@MANTIS_GPIF_HIFRDWRN = common dso_local global i32 0, align 4
@MANTIS_GPIF_ADDR = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Adapter(%d) Slot(0): GPIF Smart Buffer operation failed\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@MANTIS_GPIF_DIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Mem Read: 0x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_hif_read_mem(%struct.mantis_ca* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mantis_ca*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mantis_pci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mantis_ca* %0, %struct.mantis_ca** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mantis_ca*, %struct.mantis_ca** %4, align 8
  %11 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %10, i32 0, i32 1
  %12 = load %struct.mantis_pci*, %struct.mantis_pci** %11, align 8
  store %struct.mantis_pci* %12, %struct.mantis_pci** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 4, i32* %9, align 4
  %13 = load i32, i32* @MANTIS_DEBUG, align 4
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %6, align 8
  %15 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dprintk(i32 %13, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mantis_ca*, %struct.mantis_ca** %4, align 8
  %19 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @MANTIS_GPIF_PCMCIAREG, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @MANTIS_GPIF_PCMCIAIOM, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @MANTIS_HIF_STATUS, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MANTIS_GPIF_BRADDR, align 4
  %37 = call i32 @mmwrite(i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MANTIS_GPIF_BRBYTES, align 4
  %40 = call i32 @mmwrite(i32 %38, i32 %39)
  %41 = call i32 @udelay(i32 20)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MANTIS_GPIF_HIFRDWRN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MANTIS_GPIF_ADDR, align 4
  %46 = call i32 @mmwrite(i32 %44, i32 %45)
  %47 = load %struct.mantis_ca*, %struct.mantis_ca** %4, align 8
  %48 = call i64 @mantis_hif_sbuf_opdone_wait(%struct.mantis_ca* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %2
  %51 = load i32, i32* @MANTIS_ERROR, align 4
  %52 = load %struct.mantis_pci*, %struct.mantis_pci** %6, align 8
  %53 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dprintk(i32 %51, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.mantis_ca*, %struct.mantis_ca** %4, align 8
  %57 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @EREMOTEIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %2
  %62 = load i32, i32* @MANTIS_GPIF_DIN, align 4
  %63 = call i32 @mmread(i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.mantis_ca*, %struct.mantis_ca** %4, align 8
  %65 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @MANTIS_DEBUG, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dprintk(i32 %67, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 24
  %72 = and i32 %71, 255
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %61, %50
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @mantis_hif_sbuf_opdone_wait(%struct.mantis_ca*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mmread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
