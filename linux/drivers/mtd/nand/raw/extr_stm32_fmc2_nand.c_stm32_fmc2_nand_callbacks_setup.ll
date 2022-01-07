; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_nand_callbacks_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_nand_callbacks_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stm32_fmc2_nfc = type { i64, i64, i64 }

@stm32_fmc2_sequencer_correct = common dso_local global i32 0, align 4
@stm32_fmc2_sequencer_write_page = common dso_local global i32 0, align 4
@stm32_fmc2_sequencer_read_page = common dso_local global i32 0, align 4
@stm32_fmc2_sequencer_write_page_raw = common dso_local global i32 0, align 4
@stm32_fmc2_sequencer_read_page_raw = common dso_local global i32 0, align 4
@stm32_fmc2_hwctl = common dso_local global i32 0, align 4
@FMC2_ECC_HAM = common dso_local global i64 0, align 8
@stm32_fmc2_ham_calculate = common dso_local global i32 0, align 4
@stm32_fmc2_ham_correct = common dso_local global i32 0, align 4
@NAND_ECC_GENERIC_ERASED_CHECK = common dso_local global i32 0, align 4
@stm32_fmc2_bch_calculate = common dso_local global i32 0, align 4
@stm32_fmc2_bch_correct = common dso_local global i32 0, align 4
@stm32_fmc2_read_page = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@FMC2_ECC_BCH8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @stm32_fmc2_nand_callbacks_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_nand_callbacks_setup(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.stm32_fmc2_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %6)
  store %struct.stm32_fmc2_nfc* %7, %struct.stm32_fmc2_nfc** %3, align 8
  %8 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load i32, i32* @stm32_fmc2_sequencer_correct, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @stm32_fmc2_sequencer_write_page, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @stm32_fmc2_sequencer_read_page, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @stm32_fmc2_sequencer_write_page_raw, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @stm32_fmc2_sequencer_read_page_raw, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 7
  store i32 %39, i32* %42, align 8
  br label %83

43:                                               ; preds = %17, %12, %1
  %44 = load i32, i32* @stm32_fmc2_hwctl, align 4
  %45 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FMC2_ECC_HAM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %43
  %55 = load i32, i32* @stm32_fmc2_ham_calculate, align 4
  %56 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @stm32_fmc2_ham_correct, align 4
  %60 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @NAND_ECC_GENERIC_ERASED_CHECK, align 4
  %64 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 8
  br label %82

69:                                               ; preds = %43
  %70 = load i32, i32* @stm32_fmc2_bch_calculate, align 4
  %71 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @stm32_fmc2_bch_correct, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @stm32_fmc2_read_page, align 4
  %79 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %69, %54
  br label %83

83:                                               ; preds = %82, %22
  %84 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @FMC2_ECC_HAM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 3
  %99 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %100 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  br label %134

102:                                              ; preds = %83
  %103 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FMC2_ECC_BCH8, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 14, i32 13
  %118 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  br label %133

121:                                              ; preds = %102
  %122 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 8, i32 7
  %130 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  br label %133

133:                                              ; preds = %121, %109
  br label %134

134:                                              ; preds = %133, %90
  ret void
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
