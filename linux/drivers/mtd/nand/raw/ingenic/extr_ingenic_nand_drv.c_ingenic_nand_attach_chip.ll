; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32, i32 }
%struct.ingenic_nfc = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [47 x i8] c"HW ECC selected, but ECC controller not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ingenic_nand_ecc_hwctl = common dso_local global i32 0, align 4
@ingenic_nand_ecc_calculate = common dso_local global i32 0, align 4
@ingenic_nand_ecc_correct = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"using %s (strength %d, size %d, bytes %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hardware ECC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"software ECC\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"not using ECC\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ECC mode %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"invalid ECC config: required %d ECC bytes, but only %d are available\00", align 1
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"qi,lb60\00", align 1
@qi_lb60_ooblayout_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @ingenic_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.ingenic_nfc*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ingenic_nfc* @to_ingenic_nfc(i32 %11)
  store %struct.ingenic_nfc* %12, %struct.ingenic_nfc** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 9, i32* %21, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 9, %26
  %28 = call i32 @fls(i32 %27)
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 8
  %34 = mul nsw i32 %28, %33
  %35 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %22, %18
  %39 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %96 [
    i32 130, label %43
    i32 128, label %68
    i32 129, label %91
  ]

43:                                               ; preds = %38
  %44 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %45 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %50 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %174

55:                                               ; preds = %43
  %56 = load i32, i32* @ingenic_nand_ecc_hwctl, align 4
  %57 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ingenic_nand_ecc_calculate, align 4
  %61 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @ingenic_nand_ecc_correct, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %38, %55
  %69 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %70 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %73 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %78 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_info(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %81, i32 %85, i32 %89)
  br label %107

91:                                               ; preds = %38
  %92 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %93 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @dev_info(i32 %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %107

96:                                               ; preds = %38
  %97 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %98 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %174

107:                                              ; preds = %91, %68
  %108 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %109 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 130
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %174

114:                                              ; preds = %107
  %115 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %116 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %117, %121
  %123 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %122, %126
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %130 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, 2
  %133 = icmp sgt i32 %128, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %114
  %135 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %136 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %140 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 2
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %137, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %138, i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %174

146:                                              ; preds = %114
  %147 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %155 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %156 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %146
  %160 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %164 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %163, i32* @qi_lb60_ooblayout_ops)
  br label %173

165:                                              ; preds = %159
  %166 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %167 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %5, align 8
  %168 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %166, i32* %171)
  br label %173

173:                                              ; preds = %165, %162
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %134, %113, %96, %48
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.ingenic_nfc* @to_ingenic_nfc(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
