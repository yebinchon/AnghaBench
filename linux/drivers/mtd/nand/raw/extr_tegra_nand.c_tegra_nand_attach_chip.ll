; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tegra_nand_controller = type { i64, i32 }
%struct.tegra_nand_chip = type { i32, i32, i32 }
%struct.mtd_info = type { i32, i64 }

@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported step size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tegra_nand_read_page_hwecc = common dso_local global i32 0, align 4
@tegra_nand_write_page_hwecc = common dso_local global i32 0, align 4
@tegra_nand_read_page_raw = common dso_local global i32 0, align 4
@tegra_nand_write_page_raw = common dso_local global i32 0, align 4
@tegra_nand_read_oob = common dso_local global i32 0, align 4
@tegra_nand_write_oob = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@CONFIG_BUS_WIDTH_16 = common dso_local global i32 0, align 4
@NAND_ECC_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"BCH supports 2K or 4K page size only\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"No valid strength found, minimum %d\0A\00", align 1
@CONFIG_PIPE_EN = common dso_local global i32 0, align 4
@CONFIG_SKIP_SPARE = common dso_local global i32 0, align 4
@CONFIG_SKIP_SPARE_SIZE_4 = common dso_local global i32 0, align 4
@BITS_PER_STEP_RS = common dso_local global i32 0, align 4
@tegra_nand_oob_rs_ops = common dso_local global i32 0, align 4
@CONFIG_HW_ECC = common dso_local global i32 0, align 4
@CONFIG_ECC_SEL = common dso_local global i32 0, align 4
@CONFIG_ERR_COR = common dso_local global i32 0, align 4
@CONFIG_TVAL_4 = common dso_local global i32 0, align 4
@CONFIG_TVAL_6 = common dso_local global i32 0, align 4
@CONFIG_TVAL_8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ECC strength %d not supported\0A\00", align 1
@BITS_PER_STEP_BCH = common dso_local global i32 0, align 4
@tegra_nand_oob_bch_ops = common dso_local global i32 0, align 4
@BCH_ENABLE = common dso_local global i32 0, align 4
@BCH_TVAL_4 = common dso_local global i32 0, align 4
@BCH_TVAL_8 = common dso_local global i32 0, align 4
@BCH_TVAL_14 = common dso_local global i32 0, align 4
@BCH_TVAL_16 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ECC algorithm not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Using %s with strength %d per 512 byte step\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"BCH\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"RS\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@CONFIG_PS_256 = common dso_local global i32 0, align 4
@CONFIG_PS_512 = common dso_local global i32 0, align 4
@CONFIG_PS_1024 = common dso_local global i32 0, align 4
@CONFIG_PS_2048 = common dso_local global i32 0, align 4
@CONFIG_PS_4096 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Unsupported writesize %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @tegra_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.tegra_nand_controller*, align 8
  %5 = alloca %struct.tegra_nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tegra_nand_controller* @to_tegra_ctrl(i32 %11)
  store %struct.tegra_nand_controller* %12, %struct.tegra_nand_controller** %4, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = call %struct.tegra_nand_chip* @to_tegra_chip(%struct.nand_chip* %13)
  store %struct.tegra_nand_chip* %14, %struct.tegra_nand_chip** %5, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %6, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @NAND_ECC_HW, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 11
  store i32 %30, i32* %33, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 512, i32* %36, align 4
  %37 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %39, %43
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 512
  br i1 %53, label %54, label %66

54:                                               ; preds = %29
  %55 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %386

66:                                               ; preds = %29
  %67 = load i32, i32* @tegra_nand_read_page_hwecc, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 10
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @tegra_nand_write_page_hwecc, align 4
  %72 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 9
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @tegra_nand_read_page_raw, align 4
  %76 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 8
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @tegra_nand_write_page_raw, align 4
  %80 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @tegra_nand_read_oob, align 4
  %84 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @tegra_nand_write_oob, align 4
  %88 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  store i32 %87, i32* %90, align 4
  %91 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %66
  %98 = load i32, i32* @CONFIG_BUS_WIDTH_16, align 4
  %99 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %100 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %66
  %104 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %105 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NAND_ECC_UNKNOWN, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %112 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 2048
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %117 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  store i32 128, i32* %118, align 4
  br label %123

119:                                              ; preds = %110
  %120 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i32 129, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %103
  %125 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %126 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 129
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %132 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %133, 2048
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %137 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %386

142:                                              ; preds = %130, %124
  %143 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %172, label %148

148:                                              ; preds = %142
  %149 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %150 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @tegra_nand_select_strength(%struct.nand_chip* %149, i64 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %148
  %157 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %158 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %161 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, ...) @dev_err(i32 %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %386

167:                                              ; preds = %148
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %170 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %142
  %173 = load i32, i32* @CONFIG_PIPE_EN, align 4
  %174 = load i32, i32* @CONFIG_SKIP_SPARE, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @CONFIG_SKIP_SPARE_SIZE_4, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %179 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %181 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %288 [
    i32 128, label %184
    i32 129, label %236
  ]

184:                                              ; preds = %172
  %185 = load i32, i32* @BITS_PER_STEP_RS, align 4
  %186 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %187 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %185, %189
  store i32 %190, i32* %7, align 4
  %191 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %192 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %191, i32* @tegra_nand_oob_rs_ops)
  %193 = load i32, i32* @CONFIG_HW_ECC, align 4
  %194 = load i32, i32* @CONFIG_ECC_SEL, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @CONFIG_ERR_COR, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %199 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %203 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  switch i32 %205, label %224 [
    i32 4, label %206
    i32 6, label %212
    i32 8, label %218
  ]

206:                                              ; preds = %184
  %207 = load i32, i32* @CONFIG_TVAL_4, align 4
  %208 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %209 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %235

212:                                              ; preds = %184
  %213 = load i32, i32* @CONFIG_TVAL_6, align 4
  %214 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %215 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %235

218:                                              ; preds = %184
  %219 = load i32, i32* @CONFIG_TVAL_8, align 4
  %220 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %221 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  br label %235

224:                                              ; preds = %184
  %225 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %226 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %229 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, ...) @dev_err(i32 %227, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %2, align 4
  br label %386

235:                                              ; preds = %218, %212, %206
  br label %295

236:                                              ; preds = %172
  %237 = load i32, i32* @BITS_PER_STEP_BCH, align 4
  %238 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %239 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %237, %241
  store i32 %242, i32* %7, align 4
  %243 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %244 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %243, i32* @tegra_nand_oob_bch_ops)
  %245 = load i32, i32* @BCH_ENABLE, align 4
  %246 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %247 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %249 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  switch i32 %251, label %276 [
    i32 4, label %252
    i32 8, label %258
    i32 14, label %264
    i32 16, label %270
  ]

252:                                              ; preds = %236
  %253 = load i32, i32* @BCH_TVAL_4, align 4
  %254 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %255 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %287

258:                                              ; preds = %236
  %259 = load i32, i32* @BCH_TVAL_8, align 4
  %260 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %261 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 4
  br label %287

264:                                              ; preds = %236
  %265 = load i32, i32* @BCH_TVAL_14, align 4
  %266 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %267 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %287

270:                                              ; preds = %236
  %271 = load i32, i32* @BCH_TVAL_16, align 4
  %272 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %273 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %287

276:                                              ; preds = %236
  %277 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %278 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %281 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32, i8*, ...) @dev_err(i32 %279, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* @EINVAL, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %2, align 4
  br label %386

287:                                              ; preds = %270, %264, %258, %252
  br label %295

288:                                              ; preds = %172
  %289 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %290 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (i32, i8*, ...) @dev_err(i32 %291, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %2, align 4
  br label %386

295:                                              ; preds = %287, %235
  %296 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %297 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %300 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 129
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %306 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %307 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @dev_info(i32 %298, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %305, i32 %309)
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* @BITS_PER_BYTE, align 4
  %313 = call i32 @DIV_ROUND_UP(i32 %311, i32 %312)
  %314 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %315 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 4
  store i32 %313, i32* %316, align 4
  %317 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %318 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  switch i32 %319, label %350 [
    i32 256, label %320
    i32 512, label %326
    i32 1024, label %332
    i32 2048, label %338
    i32 4096, label %344
  ]

320:                                              ; preds = %295
  %321 = load i32, i32* @CONFIG_PS_256, align 4
  %322 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %323 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  br label %360

326:                                              ; preds = %295
  %327 = load i32, i32* @CONFIG_PS_512, align 4
  %328 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %329 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 4
  br label %360

332:                                              ; preds = %295
  %333 = load i32, i32* @CONFIG_PS_1024, align 4
  %334 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %335 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 4
  br label %360

338:                                              ; preds = %295
  %339 = load i32, i32* @CONFIG_PS_2048, align 4
  %340 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %341 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 4
  br label %360

344:                                              ; preds = %295
  %345 = load i32, i32* @CONFIG_PS_4096, align 4
  %346 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %347 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  br label %360

350:                                              ; preds = %295
  %351 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %352 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %355 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 (i32, i8*, ...) @dev_err(i32 %353, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* @ENODEV, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %2, align 4
  br label %386

360:                                              ; preds = %344, %338, %332, %326, %320
  %361 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %362 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %365 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %369 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = sub nsw i64 %370, 1
  %372 = call i32 @CONFIG_TAG_BYTE_SIZE(i64 %371)
  %373 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %374 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %5, align 8
  %378 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %381 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @CONFIG, align 8
  %384 = add nsw i64 %382, %383
  %385 = call i32 @writel_relaxed(i32 %379, i64 %384)
  store i32 0, i32* %2, align 4
  br label %386

386:                                              ; preds = %360, %350, %288, %276, %224, %156, %135, %54
  %387 = load i32, i32* %2, align 4
  ret i32 %387
}

declare dso_local %struct.tegra_nand_controller* @to_tegra_ctrl(i32) #1

declare dso_local %struct.tegra_nand_chip* @to_tegra_chip(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @tegra_nand_select_strength(%struct.nand_chip*, i64) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @CONFIG_TAG_BYTE_SIZE(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
