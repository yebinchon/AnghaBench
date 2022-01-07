; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_6__, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.mtd_info = type { i32, i8* }
%struct.marvell_nand_chip = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.marvell_nfc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pxa3xx_nand_platform_data = type { i32, i32, i64 }

@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB_BBM = common dso_local global i32 0, align 4
@bbt_main_descr = common dso_local global i32 0, align 4
@bbt_mirror_descr = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NDCR_DWIDTH_M = common dso_local global i32 0, align 4
@NDCR_DWIDTH_C = common dso_local global i32 0, align 4
@NDCR_RA_START = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ECC init failed: %d\0A\00", align 1
@NAND_ECC_HW = common dso_local global i64 0, align 8
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pxa3xx_nand-0\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s:nand.%d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to allocate mtd->name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @marvell_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.marvell_nand_chip*, align 8
  %6 = alloca %struct.marvell_nfc*, align 8
  %7 = alloca %struct.pxa3xx_nand_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.marvell_nand_chip* @to_marvell_nand(%struct.nand_chip* %11)
  store %struct.marvell_nand_chip* %12, %struct.marvell_nand_chip** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %15)
  store %struct.marvell_nfc* %16, %struct.marvell_nfc** %6, align 8
  %17 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %18 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.pxa3xx_nand_platform_data* @dev_get_platdata(i32 %19)
  store %struct.pxa3xx_nand_platform_data* %20, %struct.pxa3xx_nand_platform_data** %7, align 8
  %21 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %22 = icmp ne %struct.pxa3xx_nand_platform_data* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %25 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %23, %1
  %35 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* @NAND_BBT_NO_OOB_BBM, align 4
  %43 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 4
  store i32* @bbt_main_descr, i32** %48, align 8
  %49 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 3
  store i32* @bbt_mirror_descr, i32** %50, align 8
  br label %51

51:                                               ; preds = %41, %34
  %52 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @NDCR_PAGE_SZ(i32 %54)
  %56 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %57 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load i32, i32* @NDCR_DWIDTH_M, align 4
  %66 = load i32, i32* @NDCR_DWIDTH_C, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %69 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %64, %51
  %73 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 512
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %79 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %88

80:                                               ; preds = %72
  %81 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %82 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %81, i32 0, i32 1
  store i32 2, i32* %82, align 4
  %83 = load i32, i32* @NDCR_RA_START, align 4
  %84 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %85 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %97 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 3
  store i32 %99, i32* %97, align 4
  br label %105

100:                                              ; preds = %88
  %101 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %102 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %107 = icmp ne %struct.pxa3xx_nand_platform_data* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %110 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 4
  %115 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %116 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %108, %105
  %122 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %123 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 2
  %125 = call i32 @marvell_nand_ecc_init(%struct.mtd_info* %122, %struct.TYPE_6__* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %130 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i32, i8*, ...) @dev_err(i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %198

135:                                              ; preds = %121
  %136 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NAND_ECC_HW, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %144 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %145 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %135
  %149 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %150 = icmp ne %struct.pxa3xx_nand_platform_data* %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %153 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151, %148
  %159 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %160 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %159, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %160, align 8
  br label %197

161:                                              ; preds = %151
  %162 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %163 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %196, label %166

166:                                              ; preds = %161
  %167 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %168 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %172 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @dev_name(i32 %173)
  %175 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %176 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %175, i32 0, i32 2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @devm_kasprintf(i32 %169, i32 %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %180)
  %182 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %183 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %185 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %166
  %189 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %190 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i32, i8*, ...) @dev_err(i32 %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  br label %198

195:                                              ; preds = %166
  br label %196

196:                                              ; preds = %195, %161
  br label %197

197:                                              ; preds = %196, %158
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %188, %128
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.marvell_nand_chip* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local %struct.pxa3xx_nand_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @NDCR_PAGE_SZ(i32) #1

declare dso_local i32 @marvell_nand_ecc_init(%struct.mtd_info*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
