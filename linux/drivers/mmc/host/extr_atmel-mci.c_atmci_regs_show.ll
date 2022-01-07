; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_regs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_regs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.atmel_mci* }
%struct.atmel_mci = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@ATMCI_REGS_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MR:\090x%08x%s%s \00", align 1
@ATMCI_MR = common dso_local global i32 0, align 4
@ATMCI_MR_RDPROOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" RDPROOF\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATMCI_MR_WRPROOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" WRPROOF\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"{CLKDIV,CLKODD}=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"CLKDIV=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DTOR:\090x%08x\0A\00", align 1
@ATMCI_DTOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"SDCR:\090x%08x\0A\00", align 1
@ATMCI_SDCR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"ARGR:\090x%08x\0A\00", align 1
@ATMCI_ARGR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"BLKR:\090x%08x BCNT=%u BLKLEN=%u\0A\00", align 1
@ATMCI_BLKR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"CSTOR:\090x%08x\0A\00", align 1
@ATMCI_CSTOR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@ATMCI_SR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"IMR\00", align 1
@ATMCI_IMR = common dso_local global i32 0, align 4
@ATMCI_DMA = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"DMA:\090x%08x OFFSET=%u CHKSIZE=%u%s\0A\00", align 1
@ATMCI_DMAEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c" DMAEN\00", align 1
@ATMCI_CFG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"CFG:\090x%08x%s%s%s%s\0A\00", align 1
@ATMCI_CFG_FIFOMODE_1DATA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c" FIFOMODE_ONE_DATA\00", align 1
@ATMCI_CFG_FERRCTRL_COR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c" FERRCTRL_CLEAR_ON_READ\00", align 1
@ATMCI_CFG_HSMODE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c" HSMODE\00", align 1
@ATMCI_CFG_LSYNC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c" LSYNC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @atmci_regs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_regs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atmel_mci*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.atmel_mci*, %struct.atmel_mci** %12, align 8
  store %struct.atmel_mci* %13, %struct.atmel_mci** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @ATMCI_REGS_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %274

22:                                               ; preds = %2
  %23 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %24 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_get_sync(i32* %26)
  %28 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %28, i32 0, i32 2
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %33 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATMCI_REGS_SIZE, align 4
  %36 = call i32 @memcpy_fromio(i32* %31, i32 %34, i32 %35)
  %37 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %38 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_mark_last_busy(i32* %43)
  %45 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %46 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_put_autosuspend(i32* %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @ATMCI_MR, align 4
  %53 = sdiv i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @ATMCI_MR, align 4
  %59 = sdiv i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ATMCI_MR_RDPROOF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @ATMCI_MR, align 4
  %70 = sdiv i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ATMCI_MR_WRPROOF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %67, i8* %78)
  %80 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %81 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %22
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @ATMCI_MR, align 4
  %89 = sdiv i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 255
  %94 = shl i32 %93, 1
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @ATMCI_MR, align 4
  %97 = sdiv i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 1
  %103 = or i32 %94, %102
  %104 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %115

105:                                              ; preds = %22
  %106 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @ATMCI_MR, align 4
  %109 = sdiv i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 255
  %114 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %105, %85
  %116 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @ATMCI_DTOR, align 4
  %119 = sdiv i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* @ATMCI_SDCR, align 4
  %127 = sdiv i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  %132 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @ATMCI_ARGR, align 4
  %135 = sdiv i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @ATMCI_BLKR, align 4
  %143 = sdiv i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @ATMCI_BLKR, align 4
  %149 = sdiv i32 %148, 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 65535
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* @ATMCI_BLKR, align 4
  %156 = sdiv i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 65535
  %162 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %146, i32 %153, i32 %161)
  %163 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %164 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %115
  %169 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* @ATMCI_CSTOR, align 4
  %172 = sdiv i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %168, %115
  %178 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* @ATMCI_SR, align 4
  %181 = sdiv i32 %180, 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @atmci_show_status_reg(%struct.seq_file* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %184)
  %186 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* @ATMCI_IMR, align 4
  %189 = sdiv i32 %188, 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @atmci_show_status_reg(%struct.seq_file* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %192)
  %194 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %195 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %177
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* @ATMCI_DMA, align 4
  %202 = sdiv i32 %201, 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %9, align 4
  %206 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = and i32 %208, 3
  %210 = load i32, i32* %9, align 4
  %211 = ashr i32 %210, 4
  %212 = and i32 %211, 3
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %199
  %215 = load i32, i32* %9, align 4
  %216 = ashr i32 %215, 4
  %217 = and i32 %216, 3
  %218 = add nsw i32 %217, 1
  %219 = shl i32 1, %218
  br label %221

220:                                              ; preds = %199
  br label %221

221:                                              ; preds = %220, %214
  %222 = phi i32 [ %219, %214 ], [ 1, %220 ]
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @ATMCI_DMAEN, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %229 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %206, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %207, i32 %209, i32 %222, i8* %228)
  br label %230

230:                                              ; preds = %221, %177
  %231 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %232 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %270

236:                                              ; preds = %230
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* @ATMCI_CFG, align 4
  %239 = sdiv i32 %238, 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %10, align 4
  %243 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @ATMCI_CFG_FIFOMODE_1DATA, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @ATMCI_CFG_FERRCTRL_COR, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @ATMCI_CFG_HSMODE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @ATMCI_CFG_LSYNC, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %269 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %243, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %244, i8* %250, i8* %256, i8* %262, i8* %268)
  br label %270

270:                                              ; preds = %236, %230
  %271 = load i32*, i32** %7, align 8
  %272 = call i32 @kfree(i32* %271)
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %270, %19
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy_fromio(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @atmci_show_status_reg(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
