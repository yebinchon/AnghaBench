; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xxnflash = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@bcm47xxnflash_ops_bcm4706_select_chip = common dso_local global i32 0, align 4
@bcm47xxnflash_ops_bcm4706_cmd_ctrl = common dso_local global i32 0, align 4
@bcm47xxnflash_ops_bcm4706_dev_ready = common dso_local global i32 0, align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc = common dso_local global i32 0, align 4
@bcm47xxnflash_ops_bcm4706_read_byte = common dso_local global i32 0, align 4
@bcm47xxnflash_ops_bcm4706_read_buf = common dso_local global i32 0, align 4
@bcm47xxnflash_ops_bcm4706_write_buf = common dso_local global i32 0, align 4
@nand_get_set_features_notsupp = common dso_local global i8* null, align 8
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_ECC_NONE = common dso_local global i32 0, align 4
@BCMA_CC_4706_FLASHSCFG = common dso_local global i32 0, align 4
@BCMA_CC_4706_FLASHSCFG_NF1 = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_4706_PKG_OPTION = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_WAITCNT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not scan NAND flash: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid flash size: 0x%lX\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_CONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm47xxnflash_ops_bcm4706_init(%struct.bcm47xxnflash* %0) #0 {
  %2 = alloca %struct.bcm47xxnflash*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bcm47xxnflash* %0, %struct.bcm47xxnflash** %2, align 8
  %19 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %20 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_12__* %20 to %struct.nand_chip*
  store %struct.nand_chip* %21, %struct.nand_chip** %3, align 8
  %22 = load i32, i32* @bcm47xxnflash_ops_bcm4706_select_chip, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @bcm47xxnflash_ops_bcm4706_cmd_ctrl, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @bcm47xxnflash_ops_bcm4706_dev_ready, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @bcm47xxnflash_ops_bcm4706_cmdfunc, align 4
  %35 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %36 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @bcm47xxnflash_ops_bcm4706_read_byte, align 4
  %40 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %41 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* @bcm47xxnflash_ops_bcm4706_read_buf, align 4
  %45 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %46 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @bcm47xxnflash_ops_bcm4706_write_buf, align 4
  %50 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %51 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 8
  %54 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %55 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %56 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  %59 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %60 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %61 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  %64 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 50, i32* %66, align 4
  %67 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %68 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %69 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @NAND_ECC_NONE, align 4
  %72 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %73 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %77 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* @BCMA_CC_4706_FLASHSCFG, align 4
  %80 = load i32, i32* @BCMA_CC_4706_FLASHSCFG_NF1, align 4
  %81 = call i32 @bcma_cc_set32(%struct.TYPE_13__* %78, i32 %79, i32 %80)
  %82 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %83 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BCMA_CC_CHIPST_4706_PKG_OPTION, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %1
  store i32 100000000, i32* %5, align 4
  br label %103

91:                                               ; preds = %1
  %92 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %93 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = call i32 @bcma_chipco_pll_read(%struct.TYPE_13__* %94, i32 4)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 4095
  %98 = ashr i32 %97, 3
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %99, 25000000
  %101 = sdiv i32 %100, 2
  %102 = sdiv i32 %101, 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %91, %90
  %104 = load i32, i32* %5, align 4
  %105 = sdiv i32 %104, 1000000
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @bcm47xxnflash_ops_bcm4706_ns_to_cycle(i32 15, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @bcm47xxnflash_ops_bcm4706_ns_to_cycle(i32 20, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @bcm47xxnflash_ops_bcm4706_ns_to_cycle(i32 10, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @bcm47xxnflash_ops_bcm4706_ns_to_cycle(i32 10, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @bcm47xxnflash_ops_bcm4706_ns_to_cycle(i32 100, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %117 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i32, i32* @BCMA_CC_NFLASH_WAITCNT0, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %120, 24
  %122 = load i32, i32* %10, align 4
  %123 = shl i32 %122, 18
  %124 = or i32 %121, %123
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %125, 12
  %127 = or i32 %124, %126
  %128 = load i32, i32* %8, align 4
  %129 = shl i32 %128, 6
  %130 = or i32 %127, %129
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @bcma_cc_write32(%struct.TYPE_13__* %118, i32 %119, i32 %132)
  %134 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %135 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %134, i32 0, i32 1
  %136 = call i32 @nand_scan(%struct.TYPE_12__* %135, i32 1)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %103
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %141)
  br label %196

143:                                              ; preds = %103
  %144 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %145 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = call i32 @nanddev_target_size(i32* %146)
  %148 = ashr i32 %147, 20
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @ffs(i64 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %143
  %155 = load i32, i32* %13, align 4
  %156 = load i64, i64* %12, align 8
  %157 = call i32 @fls(i64 %156)
  %158 = icmp ne i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154, %143
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %160)
  %162 = load i32, i32* @ENOTSUPP, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %196

164:                                              ; preds = %154
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 19
  store i32 %166, i32* %13, align 4
  %167 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %168 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 7
  %174 = sdiv i32 %173, 8
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %175, %176
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 7
  %181 = sdiv i32 %180, 8
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %182, 1
  %184 = shl i32 %183, 6
  %185 = load i32, i32* %15, align 4
  %186 = sub nsw i32 %185, 1
  %187 = shl i32 %186, 4
  %188 = or i32 %184, %187
  %189 = or i32 %188, 2
  store i32 %189, i32* %18, align 4
  %190 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %191 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %190, i32 0, i32 0
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = load i32, i32* @BCMA_CC_NFLASH_CONF, align 4
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @bcma_cc_write32(%struct.TYPE_13__* %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %164, %159, %139
  %197 = load i32, i32* %4, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %2, align 8
  %201 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %200, i32 0, i32 0
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load i32, i32* @BCMA_CC_4706_FLASHSCFG, align 4
  %204 = load i32, i32* @BCMA_CC_4706_FLASHSCFG_NF1, align 4
  %205 = xor i32 %204, -1
  %206 = call i32 @bcma_cc_mask32(%struct.TYPE_13__* %202, i32 %203, i32 %205)
  br label %207

207:                                              ; preds = %199, %196
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @bcma_cc_set32(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bcma_chipco_pll_read(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bcm47xxnflash_ops_bcm4706_ns_to_cycle(i32, i32) #1

declare dso_local i32 @bcma_cc_write32(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @nand_scan(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @bcma_cc_mask32(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
