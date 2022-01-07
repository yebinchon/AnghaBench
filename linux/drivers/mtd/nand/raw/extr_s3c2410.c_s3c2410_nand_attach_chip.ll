; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.mtd_info = type { i32 }
%struct.s3c2410_nand_info = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ECC disabled\0A\00", align 1
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"soft ECC\0A\00", align 1
@s3c2410_nand_calculate_ecc = common dso_local global i8* null, align 8
@s3c2410_nand_correct_data = common dso_local global i32 0, align 4
@s3c2410_nand_enable_hwecc = common dso_local global i32 0, align 4
@s3c2412_nand_enable_hwecc = common dso_local global i32 0, align 4
@s3c2412_nand_calculate_ecc = common dso_local global i8* null, align 8
@s3c2440_nand_enable_hwecc = common dso_local global i32 0, align 4
@s3c2440_nand_calculate_ecc = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"chip %p => page shift %d\0A\00", align 1
@s3c2410_ooblayout_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"hardware ECC\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid ECC mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @s3c2410_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.s3c2410_nand_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %4, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = call %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %8)
  store %struct.s3c2410_nand_info* %9, %struct.s3c2410_nand_info** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %105 [
    i32 132, label %14
    i32 131, label %19
    i32 133, label %28
  ]

14:                                               ; preds = %1
  %15 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %16 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %112

19:                                               ; preds = %1
  %20 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  store i32 %20, i32* %23, align 8
  %24 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %25 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %112

28:                                               ; preds = %1
  %29 = load i8*, i8** @s3c2410_nand_calculate_ecc, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @s3c2410_nand_correct_data, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store i32 %33, i32* %36, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %41 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %70 [
    i32 130, label %43
    i32 129, label %52
    i32 128, label %61
  ]

43:                                               ; preds = %28
  %44 = load i32, i32* @s3c2410_nand_enable_hwecc, align 4
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  store i32 %44, i32* %47, align 8
  %48 = load i8*, i8** @s3c2410_nand_calculate_ecc, align 8
  %49 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i8* %48, i8** %51, align 8
  br label %70

52:                                               ; preds = %28
  %53 = load i32, i32* @s3c2412_nand_enable_hwecc, align 4
  %54 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 8
  %57 = load i8*, i8** @s3c2412_nand_calculate_ecc, align 8
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i8* %57, i8** %60, align 8
  br label %70

61:                                               ; preds = %28
  %62 = load i32, i32* @s3c2440_nand_enable_hwecc, align 4
  %63 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load i8*, i8** @s3c2440_nand_calculate_ecc, align 8
  %67 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i8* %66, i8** %69, align 8
  br label %70

70:                                               ; preds = %28, %61, %52, %43
  %71 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %72 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %75 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.nand_chip* %74, i32 %77)
  %79 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 10
  br i1 %82, label %83, label %90

83:                                               ; preds = %70
  %84 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 256, i32* %86, align 8
  %87 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 3, i32* %89, align 4
  br label %100

90:                                               ; preds = %70
  %91 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 512, i32* %93, align 8
  %94 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 3, i32* %96, align 4
  %97 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %98 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %97)
  %99 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %98, i32* @s3c2410_ooblayout_ops)
  br label %100

100:                                              ; preds = %90, %83
  %101 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %102 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_info(i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %112

105:                                              ; preds = %1
  %106 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %107 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %126

112:                                              ; preds = %100, %19, %14
  %113 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %121 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %122 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %112
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
