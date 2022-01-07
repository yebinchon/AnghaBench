; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_scan_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_scan_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, i32, i8*, i32, %struct.TYPE_2__, i8*, %struct.nand_ecc_ctrl }
%struct.TYPE_2__ = type { i32 }
%struct.nand_ecc_ctrl = type { i32, i64, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.mtd_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }

@NAND_BBT_NO_OOB_BBM = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i64 0, align 8
@nand_ooblayout_sp_ops = common dso_local global i32 0, align 4
@nand_ooblayout_lp_hamming_ops = common dso_local global i32 0, align 4
@nand_ooblayout_lp_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No oob scheme defined for oobsize %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"No ECC functions supplied; hardware ECC not possible\0A\00", align 1
@nand_read_page_hwecc_oob_first = common dso_local global i8* null, align 8
@nand_read_page_hwecc = common dso_local global i8* null, align 8
@nand_write_page_hwecc = common dso_local global i8* null, align 8
@nand_read_page_raw = common dso_local global i8* null, align 8
@nand_write_page_raw = common dso_local global i8* null, align 8
@nand_read_oob_std = common dso_local global i8* null, align 8
@nand_write_oob_std = common dso_local global i8* null, align 8
@nand_read_subpage = common dso_local global i32 0, align 4
@nand_write_subpage_hwecc = common dso_local global i32 0, align 4
@nand_read_page_syndrome = common dso_local global i8* null, align 8
@nand_write_page_syndrome = common dso_local global i8* null, align 8
@nand_read_page_raw_syndrome = common dso_local global i8* null, align 8
@nand_write_page_raw_syndrome = common dso_local global i8* null, align 8
@nand_read_oob_syndrome = common dso_local global i8* null, align 8
@nand_write_oob_syndrome = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Driver must set ecc.strength when using hardware ECC\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\0A\00", align 1
@NAND_ECC_HAMMING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"No ECC functions supplied; on-die ECC not possible\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"NAND_ECC_NONE selected by board driver. This is not recommended!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Invalid NAND_ECC_MODE %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Invalid ECC parameters\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Total number of ECC bytes exceeded oobsize\0A\00", align 1
@.str.9 = private unnamed_addr constant [100 x i8] c"WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\0A\00", align 1
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_SUBPAGE_READ = common dso_local global i32 0, align 4
@rawnand_ops = common dso_local global i32 0, align 4
@NAND_ROM = common dso_local global i32 0, align 4
@MTD_CAP_ROM = common dso_local global i32 0, align 4
@nand_erase = common dso_local global i32 0, align 4
@panic_nand_write = common dso_local global i32 0, align 4
@nand_read_oob = common dso_local global i32 0, align 4
@nand_write_oob = common dso_local global i32 0, align 4
@nand_sync = common dso_local global i32 0, align 4
@nand_suspend = common dso_local global i32 0, align 4
@nand_resume = common dso_local global i32 0, align 4
@nand_shutdown = common dso_local global i32 0, align 4
@nand_block_isreserved = common dso_local global i32 0, align 4
@nand_block_isbad = common dso_local global i32 0, align 4
@nand_block_markbad = common dso_local global i32 0, align 4
@nanddev_mtd_max_bad_blocks = common dso_local global i32 0, align 4
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @nand_scan_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_scan_tail(%struct.nand_chip* %0) #0 {
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
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 8
  store %struct.nand_ecc_ctrl* %11, %struct.nand_ecc_ctrl** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NAND_BBT_NO_OOB_BBM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %18, %1
  %27 = phi i1 [ false, %1 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %758

34:                                               ; preds = %26
  %35 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %758

53:                                               ; preds = %34
  %54 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %55 = call i32 @nand_select_target(%struct.nand_chip* %54, i32 0)
  %56 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %57 = call i32 @nand_manufacturer_init(%struct.nand_chip* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = call i32 @nand_deselect_target(%struct.nand_chip* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %744

63:                                               ; preds = %53
  %64 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %66, i64 %70
  %72 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 26
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %63
  %79 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %80 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %85 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NAND_ECC_BCH, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %115, label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %99 [
    i32 8, label %93
    i32 16, label %93
    i32 64, label %96
    i32 128, label %96
  ]

93:                                               ; preds = %89, %89
  %94 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %95 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %94, i32* @nand_ooblayout_sp_ops)
  br label %114

96:                                               ; preds = %89, %89
  %97 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %98 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %97, i32* @nand_ooblayout_lp_hamming_ops)
  br label %114

99:                                               ; preds = %89
  %100 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %101 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 130
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %106 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %105, i32* @nand_ooblayout_lp_ops)
  br label %114

107:                                              ; preds = %99
  %108 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %741

114:                                              ; preds = %104, %96, %93
  br label %115

115:                                              ; preds = %114, %83, %63
  %116 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %117 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %428 [
    i32 132, label %119
    i32 133, label %148
    i32 131, label %231
    i32 128, label %357
    i32 129, label %366
    i32 130, label %399
  ]

119:                                              ; preds = %115
  %120 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %121 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %120, i32 0, i32 13
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %126 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %125, i32 0, i32 14
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %131 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %130, i32 0, i32 19
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129, %124, %119
  %135 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %741

138:                                              ; preds = %129
  %139 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %140 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %139, i32 0, i32 18
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** @nand_read_page_hwecc_oob_first, align 8
  %145 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %146 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %145, i32 0, i32 18
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %115, %147
  %149 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %150 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %149, i32 0, i32 18
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** @nand_read_page_hwecc, align 8
  %155 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %156 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %155, i32 0, i32 18
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %148
  %158 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %159 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %158, i32 0, i32 17
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load i8*, i8** @nand_write_page_hwecc, align 8
  %164 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %165 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %164, i32 0, i32 17
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %168 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %167, i32 0, i32 16
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** @nand_read_page_raw, align 8
  %173 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %174 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %173, i32 0, i32 16
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %177 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %176, i32 0, i32 15
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** @nand_write_page_raw, align 8
  %182 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %183 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %182, i32 0, i32 15
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %180, %175
  %185 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %186 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %185, i32 0, i32 11
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %184
  %190 = load i8*, i8** @nand_read_oob_std, align 8
  %191 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %192 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %191, i32 0, i32 11
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %195 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %194, i32 0, i32 9
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = load i8*, i8** @nand_write_oob_std, align 8
  %200 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %201 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %200, i32 0, i32 9
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %198, %193
  %203 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %204 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %203, i32 0, i32 21
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* @nand_read_subpage, align 4
  %209 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %210 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %209, i32 0, i32 21
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %202
  %212 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %213 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %212, i32 0, i32 20
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %230, label %216

216:                                              ; preds = %211
  %217 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %218 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %217, i32 0, i32 19
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %223 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %222, i32 0, i32 13
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i32, i32* @nand_write_subpage_hwecc, align 4
  %228 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %229 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %228, i32 0, i32 20
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %226, %221, %216, %211
  br label %231

231:                                              ; preds = %115, %230
  %232 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %233 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %232, i32 0, i32 13
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %231
  %237 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %238 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %237, i32 0, i32 14
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %243 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %242, i32 0, i32 19
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %272, label %246

246:                                              ; preds = %241, %236, %231
  %247 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %248 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %247, i32 0, i32 18
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %268

251:                                              ; preds = %246
  %252 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %253 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %252, i32 0, i32 18
  %254 = load i8*, i8** %253, align 8
  %255 = load i8*, i8** @nand_read_page_hwecc, align 8
  %256 = icmp eq i8* %254, %255
  br i1 %256, label %268, label %257

257:                                              ; preds = %251
  %258 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %259 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %258, i32 0, i32 17
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %264 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %263, i32 0, i32 17
  %265 = load i8*, i8** %264, align 8
  %266 = load i8*, i8** @nand_write_page_hwecc, align 8
  %267 = icmp eq i8* %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %262, %257, %251, %246
  %269 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %6, align 4
  br label %741

272:                                              ; preds = %262, %241
  %273 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %274 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %273, i32 0, i32 18
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %281, label %277

277:                                              ; preds = %272
  %278 = load i8*, i8** @nand_read_page_syndrome, align 8
  %279 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %280 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %279, i32 0, i32 18
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %277, %272
  %282 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %283 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %282, i32 0, i32 17
  %284 = load i8*, i8** %283, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %290, label %286

286:                                              ; preds = %281
  %287 = load i8*, i8** @nand_write_page_syndrome, align 8
  %288 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %289 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %288, i32 0, i32 17
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %286, %281
  %291 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %292 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %291, i32 0, i32 16
  %293 = load i8*, i8** %292, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %299, label %295

295:                                              ; preds = %290
  %296 = load i8*, i8** @nand_read_page_raw_syndrome, align 8
  %297 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %298 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %297, i32 0, i32 16
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %295, %290
  %300 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %301 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %300, i32 0, i32 15
  %302 = load i8*, i8** %301, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %308, label %304

304:                                              ; preds = %299
  %305 = load i8*, i8** @nand_write_page_raw_syndrome, align 8
  %306 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %307 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %306, i32 0, i32 15
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %304, %299
  %309 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %310 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %309, i32 0, i32 11
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %317, label %313

313:                                              ; preds = %308
  %314 = load i8*, i8** @nand_read_oob_syndrome, align 8
  %315 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %316 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %315, i32 0, i32 11
  store i8* %314, i8** %316, align 8
  br label %317

317:                                              ; preds = %313, %308
  %318 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %319 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %318, i32 0, i32 9
  %320 = load i8*, i8** %319, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %326, label %322

322:                                              ; preds = %317
  %323 = load i8*, i8** @nand_write_oob_syndrome, align 8
  %324 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %325 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %324, i32 0, i32 9
  store i8* %323, i8** %325, align 8
  br label %326

326:                                              ; preds = %322, %317
  %327 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %328 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %331 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = icmp sge i32 %329, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %326
  %335 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %336 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %334
  %340 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %341 = load i32, i32* @EINVAL, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %6, align 4
  br label %741

343:                                              ; preds = %334
  br label %435

344:                                              ; preds = %326
  %345 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %346 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %349 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %347, i32 %350)
  %352 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %353 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %352, i32 0, i32 0
  store i32 128, i32* %353, align 8
  %354 = load i64, i64* @NAND_ECC_HAMMING, align 8
  %355 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %356 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %355, i32 0, i32 1
  store i64 %354, i64* %356, align 8
  br label %357

357:                                              ; preds = %115, %344
  %358 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %359 = call i32 @nand_set_ecc_soft_ops(%struct.nand_chip* %358)
  store i32 %359, i32* %6, align 4
  %360 = load i32, i32* %6, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %357
  %363 = load i32, i32* @EINVAL, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %6, align 4
  br label %741

365:                                              ; preds = %357
  br label %435

366:                                              ; preds = %115
  %367 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %368 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %367, i32 0, i32 18
  %369 = load i8*, i8** %368, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %371, label %376

371:                                              ; preds = %366
  %372 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %373 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %372, i32 0, i32 17
  %374 = load i8*, i8** %373, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %380, label %376

376:                                              ; preds = %371, %366
  %377 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %378 = load i32, i32* @EINVAL, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %6, align 4
  br label %741

380:                                              ; preds = %371
  %381 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %382 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %381, i32 0, i32 11
  %383 = load i8*, i8** %382, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %389, label %385

385:                                              ; preds = %380
  %386 = load i8*, i8** @nand_read_oob_std, align 8
  %387 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %388 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %387, i32 0, i32 11
  store i8* %386, i8** %388, align 8
  br label %389

389:                                              ; preds = %385, %380
  %390 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %391 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %390, i32 0, i32 9
  %392 = load i8*, i8** %391, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %398, label %394

394:                                              ; preds = %389
  %395 = load i8*, i8** @nand_write_oob_std, align 8
  %396 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %397 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %396, i32 0, i32 9
  store i8* %395, i8** %397, align 8
  br label %398

398:                                              ; preds = %394, %389
  br label %435

399:                                              ; preds = %115
  %400 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %401 = load i8*, i8** @nand_read_page_raw, align 8
  %402 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %403 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %402, i32 0, i32 18
  store i8* %401, i8** %403, align 8
  %404 = load i8*, i8** @nand_write_page_raw, align 8
  %405 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %406 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %405, i32 0, i32 17
  store i8* %404, i8** %406, align 8
  %407 = load i8*, i8** @nand_read_oob_std, align 8
  %408 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %409 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %408, i32 0, i32 11
  store i8* %407, i8** %409, align 8
  %410 = load i8*, i8** @nand_read_page_raw, align 8
  %411 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %412 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %411, i32 0, i32 16
  store i8* %410, i8** %412, align 8
  %413 = load i8*, i8** @nand_write_page_raw, align 8
  %414 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %415 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %414, i32 0, i32 15
  store i8* %413, i8** %415, align 8
  %416 = load i8*, i8** @nand_write_oob_std, align 8
  %417 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %418 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %417, i32 0, i32 9
  store i8* %416, i8** %418, align 8
  %419 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %420 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %423 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %422, i32 0, i32 2
  store i32 %421, i32* %423, align 8
  %424 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %425 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %424, i32 0, i32 4
  store i32 0, i32* %425, align 8
  %426 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %427 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %426, i32 0, i32 3
  store i32 0, i32* %427, align 4
  br label %435

428:                                              ; preds = %115
  %429 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %430 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %431)
  %433 = load i32, i32* @EINVAL, align 4
  %434 = sub nsw i32 0, %433
  store i32 %434, i32* %6, align 4
  br label %741

435:                                              ; preds = %399, %398, %365, %343
  %436 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %437 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %436, i32 0, i32 14
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %435
  %441 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %442 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %441, i32 0, i32 13
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %473

445:                                              ; preds = %440, %435
  %446 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %447 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @GFP_KERNEL, align 4
  %450 = call i8* @kmalloc(i32 %448, i32 %449)
  %451 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %452 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %451, i32 0, i32 7
  store i8* %450, i8** %452, align 8
  %453 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %454 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @GFP_KERNEL, align 4
  %457 = call i8* @kmalloc(i32 %455, i32 %456)
  %458 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %459 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %458, i32 0, i32 8
  store i8* %457, i8** %459, align 8
  %460 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %461 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %460, i32 0, i32 7
  %462 = load i8*, i8** %461, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %464, label %469

464:                                              ; preds = %445
  %465 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %466 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %465, i32 0, i32 8
  %467 = load i8*, i8** %466, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %472, label %469

469:                                              ; preds = %464, %445
  %470 = load i32, i32* @ENOMEM, align 4
  %471 = sub nsw i32 0, %470
  store i32 %471, i32* %6, align 4
  br label %741

472:                                              ; preds = %464
  br label %473

473:                                              ; preds = %472, %440
  %474 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %475 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %474, i32 0, i32 12
  %476 = load i8*, i8** %475, align 8
  %477 = icmp ne i8* %476, null
  br i1 %477, label %484, label %478

478:                                              ; preds = %473
  %479 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %480 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %479, i32 0, i32 11
  %481 = load i8*, i8** %480, align 8
  %482 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %483 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %482, i32 0, i32 12
  store i8* %481, i8** %483, align 8
  br label %484

484:                                              ; preds = %478, %473
  %485 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %486 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %485, i32 0, i32 10
  %487 = load i8*, i8** %486, align 8
  %488 = icmp ne i8* %487, null
  br i1 %488, label %495, label %489

489:                                              ; preds = %484
  %490 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %491 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %490, i32 0, i32 9
  %492 = load i8*, i8** %491, align 8
  %493 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %494 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %493, i32 0, i32 10
  store i8* %492, i8** %494, align 8
  br label %495

495:                                              ; preds = %489, %484
  %496 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %497 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %500 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %499, i32 0, i32 2
  store i32 %498, i32* %500, align 8
  %501 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %502 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %505 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %504, i32 0, i32 3
  store i32 %503, i32* %505, align 4
  %506 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %507 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %510 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = sdiv i32 %508, %511
  %513 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %514 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %513, i32 0, i32 5
  store i32 %512, i32* %514, align 4
  %515 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %516 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %515, i32 0, i32 5
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %519 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 8
  %521 = mul nsw i32 %517, %520
  %522 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %523 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = icmp ne i32 %521, %524
  br i1 %525, label %526, label %530

526:                                              ; preds = %495
  %527 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %528 = load i32, i32* @EINVAL, align 4
  %529 = sub nsw i32 0, %528
  store i32 %529, i32* %6, align 4
  br label %741

530:                                              ; preds = %495
  %531 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %532 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %531, i32 0, i32 5
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %535 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 8
  %537 = mul nsw i32 %533, %536
  %538 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %539 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %538, i32 0, i32 6
  store i32 %537, i32* %539, align 8
  %540 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %541 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %540, i32 0, i32 6
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %544 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = icmp sgt i32 %542, %545
  br i1 %546, label %547, label %551

547:                                              ; preds = %530
  %548 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %549 = load i32, i32* @EINVAL, align 4
  %550 = sub nsw i32 0, %549
  store i32 %550, i32* %6, align 4
  br label %741

551:                                              ; preds = %530
  %552 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %553 = call i32 @mtd_ooblayout_count_freebytes(%struct.mtd_info* %552)
  store i32 %553, i32* %6, align 4
  %554 = load i32, i32* %6, align 4
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %551
  store i32 0, i32* %6, align 4
  br label %557

557:                                              ; preds = %556, %551
  %558 = load i32, i32* %6, align 4
  %559 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %560 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %559, i32 0, i32 4
  store i32 %558, i32* %560, align 8
  %561 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %562 = call i32 @nand_ecc_strength_good(%struct.nand_chip* %561)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %569, label %564

564:                                              ; preds = %557
  %565 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %566 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %565, i32 0, i32 25
  %567 = load i32, i32* %566, align 4
  %568 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.9, i64 0, i64 0), i32 %567)
  br label %569

569:                                              ; preds = %564, %557
  %570 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %571 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %591, label %576

576:                                              ; preds = %569
  %577 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %578 = call i64 @nand_is_slc(%struct.nand_chip* %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %591

580:                                              ; preds = %576
  %581 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %582 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %581, i32 0, i32 5
  %583 = load i32, i32* %582, align 4
  switch i32 %583, label %590 [
    i32 2, label %584
    i32 4, label %587
    i32 8, label %587
    i32 16, label %587
  ]

584:                                              ; preds = %580
  %585 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %586 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %585, i32 0, i32 5
  store i32 1, i32* %586, align 4
  br label %590

587:                                              ; preds = %580, %580, %580
  %588 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %589 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %588, i32 0, i32 5
  store i32 2, i32* %589, align 4
  br label %590

590:                                              ; preds = %580, %587, %584
  br label %591

591:                                              ; preds = %590, %576, %569
  %592 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %593 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %596 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %595, i32 0, i32 5
  %597 = load i32, i32* %596, align 4
  %598 = ashr i32 %594, %597
  %599 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %600 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %599, i32 0, i32 2
  store i32 %598, i32* %600, align 8
  %601 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %602 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %601, i32 0, i32 6
  %603 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %602, i32 0, i32 0
  store i32 -1, i32* %603, align 4
  %604 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %605 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  switch i32 %606, label %619 [
    i32 128, label %607
  ]

607:                                              ; preds = %591
  %608 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %609 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 4
  %611 = icmp sgt i32 %610, 9
  br i1 %611, label %612, label %618

612:                                              ; preds = %607
  %613 = load i32, i32* @NAND_SUBPAGE_READ, align 4
  %614 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %615 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %614, i32 0, i32 1
  %616 = load i32, i32* %615, align 4
  %617 = or i32 %616, %613
  store i32 %617, i32* %615, align 4
  br label %618

618:                                              ; preds = %612, %607
  br label %620

619:                                              ; preds = %591
  br label %620

620:                                              ; preds = %619, %618
  %621 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %622 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %621, i32 0, i32 5
  %623 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %624 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %623, i32 0, i32 24
  %625 = load i32, i32* %624, align 8
  %626 = call i32 @nanddev_init(i32* %622, i32* @rawnand_ops, i32 %625)
  store i32 %626, i32* %6, align 4
  %627 = load i32, i32* %6, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %620
  br label %741

630:                                              ; preds = %620
  %631 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %632 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @NAND_ROM, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %641

637:                                              ; preds = %630
  %638 = load i32, i32* @MTD_CAP_ROM, align 4
  %639 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %640 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %639, i32 0, i32 23
  store i32 %638, i32* %640, align 4
  br label %641

641:                                              ; preds = %637, %630
  %642 = load i32, i32* @nand_erase, align 4
  %643 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %644 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %643, i32 0, i32 22
  store i32 %642, i32* %644, align 8
  %645 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %646 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %645, i32 0, i32 21
  store i32* null, i32** %646, align 8
  %647 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %648 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %647, i32 0, i32 20
  store i32* null, i32** %648, align 8
  %649 = load i32, i32* @panic_nand_write, align 4
  %650 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %651 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %650, i32 0, i32 19
  store i32 %649, i32* %651, align 4
  %652 = load i32, i32* @nand_read_oob, align 4
  %653 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %654 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %653, i32 0, i32 18
  store i32 %652, i32* %654, align 8
  %655 = load i32, i32* @nand_write_oob, align 4
  %656 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %657 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %656, i32 0, i32 17
  store i32 %655, i32* %657, align 4
  %658 = load i32, i32* @nand_sync, align 4
  %659 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %660 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %659, i32 0, i32 16
  store i32 %658, i32* %660, align 8
  %661 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %662 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %661, i32 0, i32 15
  store i32* null, i32** %662, align 8
  %663 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %664 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %663, i32 0, i32 14
  store i32* null, i32** %664, align 8
  %665 = load i32, i32* @nand_suspend, align 4
  %666 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %667 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %666, i32 0, i32 13
  store i32 %665, i32* %667, align 8
  %668 = load i32, i32* @nand_resume, align 4
  %669 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %670 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %669, i32 0, i32 12
  store i32 %668, i32* %670, align 4
  %671 = load i32, i32* @nand_shutdown, align 4
  %672 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %673 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %672, i32 0, i32 11
  store i32 %671, i32* %673, align 8
  %674 = load i32, i32* @nand_block_isreserved, align 4
  %675 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %676 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %675, i32 0, i32 10
  store i32 %674, i32* %676, align 4
  %677 = load i32, i32* @nand_block_isbad, align 4
  %678 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %679 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %678, i32 0, i32 9
  store i32 %677, i32* %679, align 8
  %680 = load i32, i32* @nand_block_markbad, align 4
  %681 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %682 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %681, i32 0, i32 8
  store i32 %680, i32* %682, align 4
  %683 = load i32, i32* @nanddev_mtd_max_bad_blocks, align 4
  %684 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %685 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %684, i32 0, i32 7
  store i32 %683, i32* %685, align 8
  %686 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %687 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %686, i32 0, i32 6
  %688 = load i64, i64* %687, align 8
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %698, label %690

690:                                              ; preds = %641
  %691 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %692 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %691, i32 0, i32 2
  %693 = load i32, i32* %692, align 8
  %694 = mul nsw i32 %693, 3
  %695 = call i64 @DIV_ROUND_UP(i32 %694, i32 4)
  %696 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %697 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %696, i32 0, i32 6
  store i64 %695, i64* %697, align 8
  br label %698

698:                                              ; preds = %690, %641
  %699 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %700 = call i32 @nand_init_data_interface(%struct.nand_chip* %699)
  store i32 %700, i32* %6, align 4
  %701 = load i32, i32* %6, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %704

703:                                              ; preds = %698
  br label %737

704:                                              ; preds = %698
  store i32 0, i32* %7, align 4
  br label %705

705:                                              ; preds = %719, %704
  %706 = load i32, i32* %7, align 4
  %707 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %708 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %707, i32 0, i32 5
  %709 = call i32 @nanddev_ntargets(i32* %708)
  %710 = icmp slt i32 %706, %709
  br i1 %710, label %711, label %722

711:                                              ; preds = %705
  %712 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %713 = load i32, i32* %7, align 4
  %714 = call i32 @nand_setup_data_interface(%struct.nand_chip* %712, i32 %713)
  store i32 %714, i32* %6, align 4
  %715 = load i32, i32* %6, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %711
  br label %737

718:                                              ; preds = %711
  br label %719

719:                                              ; preds = %718
  %720 = load i32, i32* %7, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %7, align 4
  br label %705

722:                                              ; preds = %705
  %723 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %724 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 4
  %726 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %727 = and i32 %725, %726
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %730

729:                                              ; preds = %722
  store i32 0, i32* %2, align 4
  br label %758

730:                                              ; preds = %722
  %731 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %732 = call i32 @nand_create_bbt(%struct.nand_chip* %731)
  store i32 %732, i32* %6, align 4
  %733 = load i32, i32* %6, align 4
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %730
  br label %737

736:                                              ; preds = %730
  store i32 0, i32* %2, align 4
  br label %758

737:                                              ; preds = %735, %717, %703
  %738 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %739 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %738, i32 0, i32 5
  %740 = call i32 @nanddev_cleanup(i32* %739)
  br label %741

741:                                              ; preds = %737, %629, %547, %526, %469, %428, %376, %362, %339, %268, %134, %107
  %742 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %743 = call i32 @nand_manufacturer_cleanup(%struct.nand_chip* %742)
  br label %744

744:                                              ; preds = %741, %62
  %745 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %746 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %745, i32 0, i32 4
  %747 = load i8*, i8** %746, align 8
  %748 = call i32 @kfree(i8* %747)
  %749 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %750 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %749, i32 0, i32 8
  %751 = load i8*, i8** %750, align 8
  %752 = call i32 @kfree(i8* %751)
  %753 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %5, align 8
  %754 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %753, i32 0, i32 7
  %755 = load i8*, i8** %754, align 8
  %756 = call i32 @kfree(i8* %755)
  %757 = load i32, i32* %6, align 4
  store i32 %757, i32* %2, align 4
  br label %758

758:                                              ; preds = %744, %736, %729, %50, %31
  %759 = load i32, i32* %2, align 4
  ret i32 %759
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @nand_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_manufacturer_init(%struct.nand_chip*) #1

declare dso_local i32 @nand_deselect_target(%struct.nand_chip*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @nand_set_ecc_soft_ops(%struct.nand_chip*) #1

declare dso_local i32 @mtd_ooblayout_count_freebytes(%struct.mtd_info*) #1

declare dso_local i32 @nand_ecc_strength_good(%struct.nand_chip*) #1

declare dso_local i64 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local i32 @nanddev_init(i32*, i32*, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nand_init_data_interface(%struct.nand_chip*) #1

declare dso_local i32 @nanddev_ntargets(i32*) #1

declare dso_local i32 @nand_setup_data_interface(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_create_bbt(%struct.nand_chip*) #1

declare dso_local i32 @nanddev_cleanup(i32*) #1

declare dso_local i32 @nand_manufacturer_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
