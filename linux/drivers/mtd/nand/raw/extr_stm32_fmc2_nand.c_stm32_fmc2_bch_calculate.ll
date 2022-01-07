; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_bch_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_bch_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_fmc2_nfc = type { i64, i32, i32 }

@FMC2_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bch timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FMC2_BCHPBR1 = common dso_local global i64 0, align 8
@FMC2_BCHPBR2 = common dso_local global i64 0, align 8
@FMC2_ECC_BCH8 = common dso_local global i64 0, align 8
@FMC2_BCHPBR3 = common dso_local global i64 0, align 8
@FMC2_BCHPBR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @stm32_fmc2_bch_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_bch_calculate(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stm32_fmc2_nfc*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %12)
  store %struct.stm32_fmc2_nfc* %13, %struct.stm32_fmc2_nfc** %8, align 8
  %14 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %14, i32 0, i32 2
  %16 = load i32, i32* @FMC2_TIMEOUT_MS, align 4
  %17 = call i32 @msecs_to_jiffies(i32 %16)
  %18 = call i32 @wait_for_completion_timeout(i32* %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %22 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %26 = call i32 @stm32_fmc2_disable_bch_irq(%struct.stm32_fmc2_nfc* %25)
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %112

29:                                               ; preds = %3
  %30 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %31 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FMC2_BCHPBR1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl_relaxed(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 16
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 24
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %52 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FMC2_BCHPBR2, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl_relaxed(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 16
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FMC2_ECC_BCH8, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %29
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 24
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %80 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FMC2_BCHPBR3, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl_relaxed(i64 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 8
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 9
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 16
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = ashr i32 %96, 24
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 11
  store i32 %97, i32* %99, align 4
  %100 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %101 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @FMC2_BCHPBR4, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readl_relaxed(i64 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 12
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %74, %29
  %110 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %111 = call i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc* %110, i32 0)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %109, %20
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_fmc2_disable_bch_irq(%struct.stm32_fmc2_nfc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
