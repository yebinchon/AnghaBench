; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32 }
%struct.fsmc_nand_data = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"No oob scheme defined for oobsize %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fsmc_ecc4_ooblayout_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Using 1-bit HW ECC scheme\0A\00", align 1
@fsmc_read_hwecc_ecc1 = common dso_local global i32 0, align 4
@nand_correct_data = common dso_local global i32 0, align 4
@NAND_ECC_SOFT_HAMMING_SM_ORDER = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Using 4-bit SW BCH ECC scheme\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unsupported ECC mode!\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@fsmc_ecc1_ooblayout_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @fsmc_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.fsmc_nand_data*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %4, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip* %8)
  store %struct.fsmc_nand_data* %9, %struct.fsmc_nand_data** %5, align 8
  %10 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %11 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AMBA_REV_BITS(i32 %12)
  %14 = icmp sge i32 %13, 8
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %20 [
    i32 16, label %19
    i32 64, label %19
    i32 128, label %19
    i32 224, label %19
    i32 256, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15, %15
  br label %30

20:                                               ; preds = %15
  %21 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %22 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %109

30:                                               ; preds = %19
  %31 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %32 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %31, i32* @fsmc_ecc4_ooblayout_ops)
  store i32 0, i32* %2, align 4
  br label %109

33:                                               ; preds = %1
  %34 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %77 [
    i32 130, label %38
    i32 128, label %63
    i32 129, label %76
  ]

38:                                               ; preds = %33
  %39 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %40 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @fsmc_read_hwecc_ecc1, align 4
  %44 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @nand_correct_data, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 3, i32* %53, align 4
  %54 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* @NAND_ECC_SOFT_HAMMING_SM_ORDER, align 4
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %84

63:                                               ; preds = %33
  %64 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NAND_ECC_BCH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %72 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %84

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %33, %75
  br label %84

77:                                               ; preds = %33
  %78 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %79 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %109

84:                                               ; preds = %76, %70, %38
  %85 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 130
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %92 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %97 [
    i32 16, label %94
    i32 64, label %94
    i32 128, label %94
  ]

94:                                               ; preds = %90, %90, %90
  %95 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %96 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %95, i32* @fsmc_ecc1_ooblayout_ops)
  br label %107

97:                                               ; preds = %90
  %98 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %99 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_warn(i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %109

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %84
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %97, %77, %30, %20
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip*) #1

declare dso_local i32 @AMBA_REV_BITS(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
