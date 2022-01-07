; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_fmc2_nfc = type { i32, i64 }

@FMC2_PCR = common dso_local global i64 0, align 8
@FMC2_BCR1 = common dso_local global i64 0, align 8
@FMC2_PCR_PWAITEN = common dso_local global i32 0, align 4
@FMC2_PCR_PBKEN = common dso_local global i32 0, align 4
@FMC2_PCR_PWID_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_ECCEN = common dso_local global i32 0, align 4
@FMC2_PCR_ECCALG = common dso_local global i32 0, align 4
@FMC2_PCR_BCHECC = common dso_local global i32 0, align 4
@FMC2_PCR_WEN = common dso_local global i32 0, align 4
@FMC2_PCR_ECCSS_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_ECCSS_2048 = common dso_local global i32 0, align 4
@FMC2_PCR_TCLR_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_TCLR_DEFAULT = common dso_local global i32 0, align 4
@FMC2_PCR_TAR_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_TAR_DEFAULT = common dso_local global i32 0, align 4
@FMC2_BCR1_FMC2EN = common dso_local global i32 0, align 4
@FMC2_PMEM_DEFAULT = common dso_local global i32 0, align 4
@FMC2_PMEM = common dso_local global i64 0, align 8
@FMC2_PATT_DEFAULT = common dso_local global i32 0, align 4
@FMC2_PATT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_fmc2_nfc*)* @stm32_fmc2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_init(%struct.stm32_fmc2_nfc* %0) #0 {
  %2 = alloca %struct.stm32_fmc2_nfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_fmc2_nfc* %0, %struct.stm32_fmc2_nfc** %2, align 8
  %5 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FMC2_PCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FMC2_BCR1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %18 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load i32, i32* @FMC2_PCR_PWAITEN, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @FMC2_PCR_PBKEN, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @FMC2_PCR_PWID_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @FMC2_PCR_ECCEN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @FMC2_PCR_ECCALG, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @FMC2_PCR_BCHECC, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @FMC2_PCR_WEN, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @FMC2_PCR_ECCSS_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @FMC2_PCR_ECCSS_2048, align 4
  %50 = call i32 @FMC2_PCR_ECCSS(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @FMC2_PCR_TCLR_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @FMC2_PCR_TCLR_DEFAULT, align 4
  %58 = call i32 @FMC2_PCR_TCLR(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @FMC2_PCR_TAR_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @FMC2_PCR_TAR_DEFAULT, align 4
  %66 = call i32 @FMC2_PCR_TAR(i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @FMC2_BCR1_FMC2EN, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %74 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FMC2_BCR1, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel_relaxed(i32 %72, i64 %77)
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %81 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FMC2_PCR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i32 %79, i64 %84)
  %86 = load i32, i32* @FMC2_PMEM_DEFAULT, align 4
  %87 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %88 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FMC2_PMEM, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel_relaxed(i32 %86, i64 %91)
  %93 = load i32, i32* @FMC2_PATT_DEFAULT, align 4
  %94 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %95 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FMC2_PATT, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel_relaxed(i32 %93, i64 %98)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @FMC2_PCR_ECCSS(i32) #1

declare dso_local i32 @FMC2_PCR_TCLR(i32) #1

declare dso_local i32 @FMC2_PCR_TAR(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
