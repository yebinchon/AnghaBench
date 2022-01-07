; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_hw_ecc_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_hw_ecc_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marvell_hw_ecc_layout = type { i32, i64, i32, i64, i32 }
%struct.mtd_info = type { i64, i32 }
%struct.nand_ecc_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.marvell_nfc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.marvell_hw_ecc_layout* }

@MAX_CHUNK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"NFCv1: writesize (%d) cannot be bigger than a chunk (%d)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@marvell_nfc_layouts = common dso_local global %struct.marvell_hw_ecc_layout* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"ECC strength %d at page size %d is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Requested layout needs at least 128 OOB bytes\0A\00", align 1
@NAND_BBT_NO_OOB_BBM = common dso_local global i32 0, align 4
@marvell_nand_ooblayout_ops = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_hmg_read_page_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_hmg_read_page = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_hmg_read_oob_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_hmg_write_page_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_hmg_write_page = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_hmg_write_oob_raw = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_read_page_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_read_page = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_read_oob_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_read_oob = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_write_page_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_write_page = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_write_oob_raw = common dso_local global i32 0, align 4
@marvell_nfc_hw_ecc_bch_write_oob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_ecc_ctrl*)* @marvell_nand_hw_ecc_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nand_hw_ecc_ctrl_init(%struct.mtd_info* %0, %struct.nand_ecc_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_ecc_ctrl*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.marvell_nfc*, align 8
  %8 = alloca %struct.marvell_hw_ecc_layout*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_ecc_ctrl* %1, %struct.nand_ecc_ctrl** %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %6, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %14)
  store %struct.marvell_nfc* %15, %struct.marvell_nfc** %7, align 8
  %16 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %17 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %2
  %23 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load i64, i64* @MAX_CHUNK_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %22
  %34 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %35 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAX_CHUNK_SIZE, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %40, %44
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %45)
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %238

49:                                               ; preds = %22, %2
  %50 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %51 = call %struct.TYPE_6__* @to_marvell_nand(%struct.nand_chip* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.marvell_hw_ecc_layout* null, %struct.marvell_hw_ecc_layout** %52, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %93, %49
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** @marvell_nfc_layouts, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.marvell_hw_ecc_layout* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %53
  %59 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** @marvell_nfc_layouts, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %59, i64 %61
  store %struct.marvell_hw_ecc_layout* %62, %struct.marvell_hw_ecc_layout** %8, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %67 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %58
  %72 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %73 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %76 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %81 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %84 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %89 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %90 = call %struct.TYPE_6__* @to_marvell_nand(%struct.nand_chip* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store %struct.marvell_hw_ecc_layout* %88, %struct.marvell_hw_ecc_layout** %91, align 8
  br label %96

92:                                               ; preds = %79, %71, %58
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %53

96:                                               ; preds = %87, %53
  %97 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %98 = call %struct.TYPE_6__* @to_marvell_nand(%struct.nand_chip* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %99, align 8
  %101 = icmp ne %struct.marvell_hw_ecc_layout* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %104 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %102
  %110 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %111 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %127

114:                                              ; preds = %109, %96
  %115 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %116 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %119 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %122 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %120, i64 %123)
  %125 = load i32, i32* @ENOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %238

127:                                              ; preds = %109, %102
  %128 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %129 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 2048
  br i1 %131, label %132, label %156

132:                                              ; preds = %127
  %133 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %134 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 8
  br i1 %136, label %137, label %156

137:                                              ; preds = %132
  %138 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %139 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 128
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.marvell_nfc*, %struct.marvell_nfc** %7, align 8
  %144 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @ENOTSUPP, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %238

149:                                              ; preds = %137
  %150 = load i32, i32* @NAND_BBT_NO_OOB_BBM, align 4
  %151 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %152 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %132, %127
  %157 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %158 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %157, i32* @marvell_nand_ooblayout_ops)
  %159 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %160 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %163 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %162, i32 0, i32 10
  store i32 %161, i32* %163, align 4
  %164 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %8, align 8
  %165 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %168 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %170 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %206

173:                                              ; preds = %156
  %174 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %175 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %176 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* @marvell_nfc_hw_ecc_hmg_read_page_raw, align 4
  %179 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %180 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %179, i32 0, i32 9
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @marvell_nfc_hw_ecc_hmg_read_page, align 4
  %182 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %183 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @marvell_nfc_hw_ecc_hmg_read_oob_raw, align 4
  %185 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %186 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 8
  %187 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %188 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %191 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @marvell_nfc_hw_ecc_hmg_write_page_raw, align 4
  %193 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %194 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @marvell_nfc_hw_ecc_hmg_write_page, align 4
  %196 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %197 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @marvell_nfc_hw_ecc_hmg_write_oob_raw, align 4
  %199 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %200 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  %201 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %202 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %205 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  br label %237

206:                                              ; preds = %156
  %207 = load i32, i32* @NAND_ECC_BCH, align 4
  %208 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %209 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 4
  %211 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %212 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %211, i32 0, i32 1
  store i32 16, i32* %212, align 8
  %213 = load i32, i32* @marvell_nfc_hw_ecc_bch_read_page_raw, align 4
  %214 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %215 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %214, i32 0, i32 9
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @marvell_nfc_hw_ecc_bch_read_page, align 4
  %217 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %218 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* @marvell_nfc_hw_ecc_bch_read_oob_raw, align 4
  %220 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %221 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @marvell_nfc_hw_ecc_bch_read_oob, align 4
  %223 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %224 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @marvell_nfc_hw_ecc_bch_write_page_raw, align 4
  %226 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %227 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @marvell_nfc_hw_ecc_bch_write_page, align 4
  %229 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %230 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @marvell_nfc_hw_ecc_bch_write_oob_raw, align 4
  %232 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %233 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* @marvell_nfc_hw_ecc_bch_write_oob, align 4
  %235 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %236 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %206, %173
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %142, %114, %33
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.marvell_hw_ecc_layout*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
