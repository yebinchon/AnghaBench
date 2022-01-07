; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_generic_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_generic_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_mapping = type { i64*, i32, i64, i32 }
%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@generic_mem_type_map = common dso_local global %struct.memory_type_mapping* null, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"== mwifiex firmware dump start ==\0A\00", align 1
@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@MAX_POLL_TRIES = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SDIO read err\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"FW not ready to dump\0A\00", align 1
@DUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Start %s output, please wait...\0A\00", align 1
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"dump %s done size=0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"== mwifiex firmware dump end ==\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"firmware dump failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_sdio_generic_fw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_sdio_generic_fw_dump(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca %struct.memory_type_mapping*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  %18 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %17, align 8
  store %struct.sdio_mmc_card* %18, %struct.sdio_mmc_card** %3, align 8
  %19 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @generic_mem_type_map, align 8
  %20 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %19, i64 0
  store %struct.memory_type_mapping* %20, %struct.memory_type_mapping** %4, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 -1, i32* %13, align 4
  %21 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %22 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %282

26:                                               ; preds = %1
  %27 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %28 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %33 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @vfree(i64* %34)
  %36 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %37 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %36, i32 0, i32 0
  store i64* null, i64** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %40 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %42 = call i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter* %41)
  %43 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %44 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sdio_claim_host(i32 %45)
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %48 = load i32, i32* @MSG, align 4
  %49 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %47, i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter* %50, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %256

57:                                               ; preds = %38
  %58 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %59 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %64 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %108, %57
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ule i32 %70, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %103, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MAX_POLL_TRIES, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %80 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @sdio_readb(i32 %81, i32 %82, i32* %13)
  store i64 %83, i64* %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %88 = load i32, i32* @ERROR, align 4
  %89 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %87, i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %256

90:                                               ; preds = %78
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %106

94:                                               ; preds = %90
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @MAX_POLL_TRIES, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %99, i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %256

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %74

106:                                              ; preds = %93, %74
  %107 = call i32 @usleep_range(i32 100, i32 200)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %5, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %69

111:                                              ; preds = %69
  %112 = call i8* @vmalloc(i32 983041)
  %113 = bitcast i8* %112 to i64*
  %114 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %115 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %114, i32 0, i32 0
  store i64* %113, i64** %115, align 8
  %116 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %117 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  store i32 -1, i32* %13, align 4
  br label %256

121:                                              ; preds = %111
  %122 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %123 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  store i64* %124, i64** %10, align 8
  %125 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %126 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %125, i32 0, i32 1
  store i32 983040, i32* %126, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %129 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %127, i64 %131
  store i64* %132, i64** %11, align 8
  %133 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %134 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %9, align 8
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %137 = load i32, i32* @DUMP, align 4
  %138 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %139 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %136, i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %121, %251
  %143 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter* %143, i64 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %256

150:                                              ; preds = %142
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %223, %150
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ule i32 %153, %154
  br i1 %155, label %156, label %226

156:                                              ; preds = %152
  %157 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %158 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i64 @sdio_readb(i32 %159, i32 %160, i32* %13)
  %162 = load i64*, i64** %10, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %167 = load i32, i32* @ERROR, align 4
  %168 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %166, i32 %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %256

169:                                              ; preds = %156
  %170 = load i64*, i64** %10, align 8
  %171 = getelementptr inbounds i64, i64* %170, i32 1
  store i64* %171, i64** %10, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = load i64*, i64** %11, align 8
  %174 = icmp uge i64* %172, %173
  br i1 %174, label %175, label %222

175:                                              ; preds = %169
  %176 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %177 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 16384
  %180 = add nsw i32 %179, 1
  %181 = call i8* @vmalloc(i32 %180)
  %182 = bitcast i8* %181 to i64*
  store i64* %182, i64** %15, align 8
  %183 = load i64*, i64** %15, align 8
  %184 = icmp ne i64* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %175
  br label %256

186:                                              ; preds = %175
  %187 = load i64*, i64** %15, align 8
  %188 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %189 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %192 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @memcpy(i64* %187, i64* %190, i32 %193)
  %195 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %196 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = call i32 @vfree(i64* %197)
  %199 = load i64*, i64** %15, align 8
  %200 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %201 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %200, i32 0, i32 0
  store i64* %199, i64** %201, align 8
  store i64* null, i64** %15, align 8
  %202 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %203 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %206 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %204, i64 %208
  store i64* %209, i64** %10, align 8
  %210 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %211 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 16384
  store i32 %213, i32* %211, align 8
  %214 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %215 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %218 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %216, i64 %220
  store i64* %221, i64** %11, align 8
  br label %222

222:                                              ; preds = %186, %169
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %5, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %152

226:                                              ; preds = %152
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @RDWR_STATUS_DONE, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %226
  %231 = load i64*, i64** %10, align 8
  %232 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %233 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = ptrtoint i64* %231 to i64
  %236 = ptrtoint i64* %234 to i64
  %237 = sub i64 %235, %236
  %238 = sdiv exact i64 %237, 8
  %239 = trunc i64 %238 to i32
  %240 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %241 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %243 = load i32, i32* @DUMP, align 4
  %244 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %245 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %248 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %242, i32 %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %249)
  store i32 0, i32* %13, align 4
  br label %252

251:                                              ; preds = %226
  br label %142

252:                                              ; preds = %230
  %253 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %254 = load i32, i32* @MSG, align 4
  %255 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %253, i32 %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %256

256:                                              ; preds = %252, %185, %165, %149, %120, %98, %86, %56
  %257 = load i32, i32* %13, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %277

259:                                              ; preds = %256
  %260 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %261 = load i32, i32* @ERROR, align 4
  %262 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %260, i32 %261, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %263 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %264 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = icmp ne i64* %265, null
  br i1 %266, label %267, label %274

267:                                              ; preds = %259
  %268 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %269 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = call i32 @vfree(i64* %270)
  %272 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %273 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %272, i32 0, i32 0
  store i64* null, i64** %273, align 8
  br label %274

274:                                              ; preds = %267, %259
  %275 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %4, align 8
  %276 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %275, i32 0, i32 1
  store i32 0, i32* %276, align 8
  br label %277

277:                                              ; preds = %274, %256
  %278 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %279 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @sdio_release_host(i32 %280)
  br label %282

282:                                              ; preds = %277, %25
  ret void
}

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter*, i64) #1

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
