; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_fmc2_nfc = type { i64 }

@FMC2_PCR = common dso_local global i64 0, align 8
@FMC2_PCR_ECCALG = common dso_local global i32 0, align 4
@FMC2_PCR_BCHECC = common dso_local global i32 0, align 4
@FMC2_ECC_BCH8 = common dso_local global i64 0, align 8
@FMC2_ECC_BCH4 = common dso_local global i64 0, align 8
@FMC2_PCR_PWID_MASK = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@FMC2_PCR_PWID_BUSWIDTH_16 = common dso_local global i32 0, align 4
@FMC2_PCR_ECCSS_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_ECCSS_512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @stm32_fmc2_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_setup(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.stm32_fmc2_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %7)
  store %struct.stm32_fmc2_nfc* %8, %struct.stm32_fmc2_nfc** %3, align 8
  %9 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FMC2_PCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @FMC2_PCR_ECCALG, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @FMC2_PCR_BCHECC, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FMC2_ECC_BCH8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32, i32* @FMC2_PCR_ECCALG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @FMC2_PCR_BCHECC, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FMC2_ECC_BCH4, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @FMC2_PCR_ECCALG, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* @FMC2_PCR_PWID_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i32, i32* @FMC2_PCR_PWID_BUSWIDTH_16, align 4
  %61 = call i32 @FMC2_PCR_PWID(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %48
  %65 = load i32, i32* @FMC2_PCR_ECCSS_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @FMC2_PCR_ECCSS_512, align 4
  %70 = call i32 @FMC2_PCR_ECCSS(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %75 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FMC2_PCR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %73, i64 %78)
  ret void
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @FMC2_PCR_PWID(i32) #1

declare dso_local i32 @FMC2_PCR_ECCSS(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
