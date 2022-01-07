; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mtk_nfc = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NAND_ECC_HW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ecc.mode not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFI_FDM_MAX_SIZE = common dso_local global i32 0, align 4
@NFI_FDM_MIN_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"eccsize %d eccstrength %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mtd_info*)* @mtk_nfc_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_ecc_init(%struct.device* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.mtk_nfc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %5, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %11)
  store %struct.nand_chip* %12, %struct.nand_chip** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %14 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %13)
  store %struct.mtk_nfc* %14, %struct.mtk_nfc** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NAND_ECC_HW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %168

26:                                               ; preds = %2
  %27 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %150, label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 1024
  br i1 %59, label %60, label %86

60:                                               ; preds = %38
  %61 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 512
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 512
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 1024, i32* %75, align 8
  %76 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %85

81:                                               ; preds = %65, %60
  %82 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 512, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %72
  br label %90

86:                                               ; preds = %38
  %87 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 1024, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = call i32 @mtk_nfc_set_spare_per_sector(i32* %8, %struct.mtd_info* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %168

97:                                               ; preds = %90
  %98 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %103 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mtk_ecc_get_parity_bits(i32 %104)
  %106 = mul nsw i32 %101, %105
  %107 = add nsw i32 %106, 7
  %108 = ashr i32 %107, 3
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @NFI_FDM_MAX_SIZE, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %97
  %116 = load i32, i32* @NFI_FDM_MAX_SIZE, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = shl i32 %119, 3
  %121 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %122 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @mtk_ecc_get_parity_bits(i32 %123)
  %125 = sdiv i32 %120, %124
  %126 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  br label %149

129:                                              ; preds = %97
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i64, i64* @NFI_FDM_MIN_SIZE, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = shl i32 %138, 3
  %140 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %141 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @mtk_ecc_get_parity_bits(i32 %142)
  %144 = sdiv i32 %139, %143
  %145 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %129
  br label %149

149:                                              ; preds = %148, %115
  br label %150

150:                                              ; preds = %149, %32
  %151 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %152 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %155 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = call i32 @mtk_ecc_adjust_strength(i32 %153, i32* %156)
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %160 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @dev_info(%struct.device* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %150, %95, %21
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mtk_nfc_set_spare_per_sector(i32*, %struct.mtd_info*) #1

declare dso_local i32 @mtk_ecc_get_parity_bits(i32) #1

declare dso_local i32 @mtk_ecc_adjust_strength(i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
