; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.stm32_fmc2_nfc = type { i32 }
%struct.mtd_info = type { i32, i64 }

@NAND_ECC_HW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"nand_ecc_mode is not well defined in the DT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stm32_fmc2_ecc_caps = common dso_local global i32 0, align 4
@FMC2_BBM_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no valid ECC settings set\0A\00", align 1
@FMC2_MAX_SG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"nand page size is not supported\0A\00", align 1
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@stm32_fmc2_nand_ooblayout_ops = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @stm32_fmc2_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.stm32_fmc2_nfc*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %9)
  store %struct.stm32_fmc2_nfc* %10, %struct.stm32_fmc2_nfc** %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NAND_ECC_HW, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %88

26:                                               ; preds = %1
  %27 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %28 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FMC2_BBM_LEN, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @nand_ecc_choose_conf(%struct.nand_chip* %27, i32* @stm32_fmc2_ecc_caps, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %38 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %88

42:                                               ; preds = %26
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %45, %49
  %51 = load i32, i32* @FMC2_MAX_SG, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %55 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %88

60:                                               ; preds = %42
  %61 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %69 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %75 = call i32 @stm32_fmc2_nand_callbacks_setup(%struct.nand_chip* %74)
  %76 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %77 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %76, i32* @stm32_fmc2_nand_ooblayout_ops)
  %78 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %4, align 8
  %86 = call i32 @stm32_fmc2_set_buswidth_16(%struct.stm32_fmc2_nfc* %85, i32 1)
  br label %87

87:                                               ; preds = %84, %73
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %53, %36, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nand_ecc_choose_conf(%struct.nand_chip*, i32*, i64) #1

declare dso_local i32 @stm32_fmc2_nand_callbacks_setup(%struct.nand_chip*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @stm32_fmc2_set_buswidth_16(%struct.stm32_fmc2_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
