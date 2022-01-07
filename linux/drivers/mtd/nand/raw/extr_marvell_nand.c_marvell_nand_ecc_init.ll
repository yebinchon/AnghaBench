; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.nand_chip = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.marvell_nfc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"No minimum ECC strength, using 1b/512B\0A\00", align 1
@SZ_512 = common dso_local global i32 0, align 4
@SZ_2K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"NFCv1 cannot write %d bytes pages\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_ecc_ctrl*)* @marvell_nand_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nand_ecc_init(%struct.mtd_info* %0, %struct.nand_ecc_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_ecc_ctrl*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.marvell_nfc*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_ecc_ctrl* %1, %struct.nand_ecc_ctrl** %5, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %6, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %13)
  store %struct.marvell_nfc* %14, %struct.marvell_nfc** %7, align 8
  %15 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 130
  br i1 %18, label %19, label %68

19:                                               ; preds = %2
  %20 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %50 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %57 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %67

58:                                               ; preds = %36, %29
  %59 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %60 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %64 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %63, i32 0, i32 1
  store i32 512, i32* %64, align 4
  %65 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %66 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %43
  br label %68

68:                                               ; preds = %67, %24, %2
  %69 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %111 [
    i32 131, label %72
    i32 130, label %81
    i32 128, label %81
    i32 129, label %81
  ]

72:                                               ; preds = %68
  %73 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %74 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %75 = call i32 @marvell_nand_hw_ecc_ctrl_init(%struct.mtd_info* %73, %struct.nand_ecc_ctrl* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %115

80:                                               ; preds = %72
  br label %114

81:                                               ; preds = %68, %68, %68
  %82 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %83 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %110, label %88

88:                                               ; preds = %81
  %89 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %90 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SZ_512, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SZ_2K, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %102 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %105 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %115

110:                                              ; preds = %94, %88, %81
  br label %114

111:                                              ; preds = %68
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %110, %80
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %111, %100, %78
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @marvell_nand_hw_ecc_ctrl_init(%struct.mtd_info*, %struct.nand_ecc_ctrl*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
