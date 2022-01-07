; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_set_ecc_soft_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_set_ecc_soft_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.mtd_info = type { i32, i32, i32* }

@NAND_ECC_SOFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nand_calculate_ecc = common dso_local global i32 0, align 4
@nand_correct_data = common dso_local global i32 0, align 4
@nand_read_page_swecc = common dso_local global i8* null, align 8
@nand_read_subpage = common dso_local global i8* null, align 8
@nand_write_page_swecc = common dso_local global i8* null, align 8
@nand_read_page_raw = common dso_local global i8* null, align 8
@nand_write_page_raw = common dso_local global i8* null, align 8
@nand_read_oob_std = common dso_local global i8* null, align 8
@nand_write_oob_std = common dso_local global i8* null, align 8
@CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC = common dso_local global i32 0, align 4
@NAND_ECC_SOFT_HAMMING_SM_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CONFIG_MTD_NAND_ECC_SW_BCH not enabled\0A\00", align 1
@nand_bch_calculate_ecc = common dso_local global i32 0, align 4
@nand_bch_correct_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"OOB layout is required when using software BCH on small pages\0A\00", align 1
@nand_ooblayout_lp_ops = common dso_local global i32 0, align 4
@NAND_ECC_MAXIMIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"BCH ECC initialization failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported ECC algorithm!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @nand_set_ecc_soft_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_set_ecc_soft_ops(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_ecc_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %11, %struct.nand_ecc_ctrl** %5, align 8
  %12 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NAND_ECC_SOFT, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %201

23:                                               ; preds = %1
  %24 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %197 [
    i32 128, label %27
    i32 129, label %77
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @nand_calculate_ecc, align 4
  %29 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @nand_correct_data, align 4
  %32 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %33 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @nand_read_page_swecc, align 8
  %35 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %35, i32 0, i32 13
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @nand_read_subpage, align 8
  %38 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %38, i32 0, i32 12
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @nand_write_page_swecc, align 8
  %41 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %41, i32 0, i32 11
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @nand_read_page_raw, align 8
  %44 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %45 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @nand_write_page_raw, align 8
  %47 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %48 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @nand_read_oob_std, align 8
  %50 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %51 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @nand_write_oob_std, align 8
  %53 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %56 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %27
  %60 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %61 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %60, i32 0, i32 2
  store i32 256, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %27
  %63 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %64 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %63, i32 0, i32 3
  store i32 3, i32* %64, align 8
  %65 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %66 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %65, i32 0, i32 4
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %68 = call i32 @IS_ENABLED(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @NAND_ECC_SOFT_HAMMING_SM_ORDER, align 4
  %72 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %73 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %62
  store i32 0, i32* %2, align 4
  br label %201

77:                                               ; preds = %23
  %78 = call i32 (...) @mtd_nand_has_bch()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %201

84:                                               ; preds = %77
  %85 = load i32, i32* @nand_bch_calculate_ecc, align 4
  %86 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %87 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %86, i32 0, i32 15
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @nand_bch_correct_data, align 4
  %89 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %90 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %89, i32 0, i32 14
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @nand_read_page_swecc, align 8
  %92 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %93 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %92, i32 0, i32 13
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @nand_read_subpage, align 8
  %95 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %96 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %95, i32 0, i32 12
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @nand_write_page_swecc, align 8
  %98 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %99 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %98, i32 0, i32 11
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @nand_read_page_raw, align 8
  %101 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %102 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %101, i32 0, i32 10
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @nand_write_page_raw, align 8
  %104 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %105 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @nand_read_oob_std, align 8
  %107 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %108 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @nand_write_oob_std, align 8
  %110 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %111 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %113 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %84
  %117 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %118 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 64
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %123 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %122, i32 0, i32 2
  store i32 512, i32* %123, align 4
  %124 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %125 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %124, i32 0, i32 4
  store i32 4, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %116, %84
  %127 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %128 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %133 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 64
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %201

140:                                              ; preds = %131
  %141 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %142 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %141, i32* @nand_ooblayout_lp_ops)
  br label %143

143:                                              ; preds = %140, %126
  %144 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %145 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, @nand_ooblayout_lp_ops
  br i1 %147, label %148, label %181

148:                                              ; preds = %143
  %149 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %150 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @NAND_ECC_MAXIMIZE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %148
  %156 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %157 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %156, i32 0, i32 2
  store i32 1024, i32* %157, align 4
  %158 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %159 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %162 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %160, %163
  store i32 %164, i32* %6, align 4
  %165 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %166 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, 2
  %169 = load i32, i32* %6, align 4
  %170 = sdiv i32 %168, %169
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = mul nsw i32 %171, 8
  %173 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %174 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 8, %175
  %177 = call i32 @fls(i32 %176)
  %178 = sdiv i32 %172, %177
  %179 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %180 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %155, %148, %143
  %182 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %183 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %182, i32 0, i32 3
  store i32 0, i32* %183, align 8
  %184 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %185 = call i32 @nand_bch_init(%struct.mtd_info* %184)
  %186 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %187 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %189 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %181
  %193 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %201

196:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %201

197:                                              ; preds = %23
  %198 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %196, %192, %136, %80, %76, %20
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @mtd_nand_has_bch(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @nand_bch_init(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
