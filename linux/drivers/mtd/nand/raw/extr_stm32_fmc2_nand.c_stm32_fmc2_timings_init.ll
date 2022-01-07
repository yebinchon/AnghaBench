; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_timings_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_timings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.stm32_fmc2_nfc = type { i64 }
%struct.stm32_fmc2_nand = type { %struct.stm32_fmc2_timings }
%struct.stm32_fmc2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FMC2_PCR = common dso_local global i64 0, align 8
@FMC2_PCR_TCLR_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_TAR_MASK = common dso_local global i32 0, align 4
@FMC2_PMEM = common dso_local global i64 0, align 8
@FMC2_PATT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @stm32_fmc2_timings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_timings_init(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.stm32_fmc2_nfc*, align 8
  %4 = alloca %struct.stm32_fmc2_nand*, align 8
  %5 = alloca %struct.stm32_fmc2_timings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %11)
  store %struct.stm32_fmc2_nfc* %12, %struct.stm32_fmc2_nfc** %3, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %14 = call %struct.stm32_fmc2_nand* @to_fmc2_nand(%struct.nand_chip* %13)
  store %struct.stm32_fmc2_nand* %14, %struct.stm32_fmc2_nand** %4, align 8
  %15 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %15, i32 0, i32 0
  store %struct.stm32_fmc2_timings* %16, %struct.stm32_fmc2_timings** %5, align 8
  %17 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FMC2_PCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @FMC2_PCR_TCLR_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %28 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FMC2_PCR_TCLR(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @FMC2_PCR_TAR_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FMC2_PCR_TAR(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %44 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FMC2_PMEM_MEMSET(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FMC2_PMEM_MEMWAIT(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %54 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @FMC2_PMEM_MEMHOLD(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %60 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FMC2_PMEM_MEMHIZ(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %66 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @FMC2_PATT_ATTSET(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %70 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FMC2_PATT_ATTWAIT(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %76 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FMC2_PATT_ATTHOLD(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.stm32_fmc2_timings*, %struct.stm32_fmc2_timings** %5, align 8
  %82 = getelementptr inbounds %struct.stm32_fmc2_timings, %struct.stm32_fmc2_timings* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @FMC2_PATT_ATTHIZ(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %89 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FMC2_PCR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel_relaxed(i32 %87, i64 %92)
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %96 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FMC2_PMEM, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel_relaxed(i32 %94, i64 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %103 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FMC2_PATT, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel_relaxed(i32 %101, i64 %106)
  ret void
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local %struct.stm32_fmc2_nand* @to_fmc2_nand(%struct.nand_chip*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @FMC2_PCR_TCLR(i32) #1

declare dso_local i32 @FMC2_PCR_TAR(i32) #1

declare dso_local i32 @FMC2_PMEM_MEMSET(i32) #1

declare dso_local i32 @FMC2_PMEM_MEMWAIT(i32) #1

declare dso_local i32 @FMC2_PMEM_MEMHOLD(i32) #1

declare dso_local i32 @FMC2_PMEM_MEMHIZ(i32) #1

declare dso_local i32 @FMC2_PATT_ATTSET(i32) #1

declare dso_local i32 @FMC2_PATT_ATTWAIT(i32) #1

declare dso_local i32 @FMC2_PATT_ATTHOLD(i32) #1

declare dso_local i32 @FMC2_PATT_ATTHIZ(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
