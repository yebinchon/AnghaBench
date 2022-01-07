; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_mapping = type { i64*, i64, i64, i32 }
%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@mem_type_mapping_tbl = common dso_local global %struct.memory_type_mapping* null, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"== mwifiex firmware dump start ==\0A\00", align 1
@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SDIO read memory length err\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SDIO read err\0A\00", align 1
@DUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Firmware dump Finished!\0A\00", align 1
@FW_DUMP_READ_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"SDIO write err\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s_SIZE=0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Vmalloc %s failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Start %s output, please wait...\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Allocated buf not enough\0A\00", align 1
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"%s done: size=0x%tx\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"== mwifiex firmware dump end ==\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_sdio_fw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_sdio_fw_dump(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.memory_type_mapping*, align 8
  %18 = alloca %struct.memory_type_mapping*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 0
  %21 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %20, align 8
  store %struct.sdio_mmc_card* %21, %struct.sdio_mmc_card** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %14, align 8
  %22 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %23 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %289

27:                                               ; preds = %1
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.memory_type_mapping* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %34, i64 %35
  store %struct.memory_type_mapping* %36, %struct.memory_type_mapping** %17, align 8
  %37 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %17, align 8
  %38 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %17, align 8
  %43 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = call i32 @vfree(i64* %44)
  %46 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %17, align 8
  %47 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %46, i32 0, i32 0
  store i64* null, i64** %47, align 8
  br label %48

48:                                               ; preds = %41, %33
  %49 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %17, align 8
  %50 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %56 = call i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter* %55)
  %57 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %58 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sdio_claim_host(i32 %59)
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %62 = load i32, i32* @MSG, align 4
  %63 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %61, i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter* %64, i64 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %284

71:                                               ; preds = %54
  %72 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %73 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %78 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @sdio_readb(i32 %79, i32 %80, i32* %4)
  store i64 %81, i64* %10, align 8
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %86 = load i32, i32* @ERROR, align 4
  %87 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %85, i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %284

88:                                               ; preds = %71
  store i64 0, i64* %11, align 8
  br label %89

89:                                               ; preds = %277, %88
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %280

93:                                               ; preds = %89
  %94 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %94, i64 %95
  store %struct.memory_type_mapping* %96, %struct.memory_type_mapping** %18, align 8
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter* %97, i64 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %284

104:                                              ; preds = %93
  store i64 0, i64* %16, align 8
  %105 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %106 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  store i64 0, i64* %12, align 8
  br label %110

110:                                              ; preds = %134, %104
  %111 = load i64, i64* %12, align 8
  %112 = icmp ult i64 %111, 4
  br i1 %112, label %113, label %137

113:                                              ; preds = %110
  %114 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %115 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @sdio_readb(i32 %116, i32 %117, i32* %4)
  store i64 %118, i64* %13, align 8
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %123 = load i32, i32* @ERROR, align 4
  %124 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %122, i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %284

125:                                              ; preds = %113
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %12, align 8
  %128 = mul i64 %127, 8
  %129 = shl i64 %126, %128
  %130 = load i64, i64* %16, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %16, align 8
  %132 = load i32, i32* %5, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %125
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %12, align 8
  br label %110

137:                                              ; preds = %110
  %138 = load i64, i64* %16, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %142 = load i32, i32* @DUMP, align 4
  %143 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %141, i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %145 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %146 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @FW_DUMP_READ_DONE, align 4
  %151 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %144, i32 %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %156 = load i32, i32* @ERROR, align 4
  %157 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %155, i32 %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %289

158:                                              ; preds = %140
  br label %280

159:                                              ; preds = %137
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %161 = load i32, i32* @DUMP, align 4
  %162 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %163 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %16, align 8
  %166 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %160, i32 %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %164, i64 %165)
  %167 = load i64, i64* %16, align 8
  %168 = add i64 %167, 1
  %169 = trunc i64 %168 to i32
  %170 = call i64* @vmalloc(i32 %169)
  %171 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %172 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %171, i32 0, i32 0
  store i64* %170, i64** %172, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %175 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %177 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = icmp ne i64* %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %159
  %181 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %182 = load i32, i32* @ERROR, align 4
  %183 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %184 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %181, i32 %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  br label %284

187:                                              ; preds = %159
  %188 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %189 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  store i64* %190, i64** %8, align 8
  %191 = load i64*, i64** %8, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  store i64* %193, i64** %9, align 8
  %194 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %195 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %14, align 8
  %197 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %198 = load i32, i32* @DUMP, align 4
  %199 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %200 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %197, i32 %198, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %275, %187
  %204 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %205 = load i64, i64* %14, align 8
  %206 = call i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter* %204, i64 %205)
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %284

211:                                              ; preds = %203
  %212 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %213 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %6, align 4
  %217 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %218 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %217, i32 0, i32 1
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %252, %211
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ule i32 %224, %225
  br i1 %226, label %227, label %255

227:                                              ; preds = %223
  %228 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %229 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i64 @sdio_readb(i32 %230, i32 %231, i32* %4)
  %233 = load i64*, i64** %8, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i32, i32* %4, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %227
  %237 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %238 = load i32, i32* @ERROR, align 4
  %239 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %237, i32 %238, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %284

240:                                              ; preds = %227
  %241 = load i64*, i64** %8, align 8
  %242 = load i64*, i64** %9, align 8
  %243 = icmp ult i64* %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i64*, i64** %8, align 8
  %246 = getelementptr inbounds i64, i64* %245, i32 1
  store i64* %246, i64** %8, align 8
  br label %251

247:                                              ; preds = %240
  %248 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %249 = load i32, i32* @ERROR, align 4
  %250 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %248, i32 %249, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %251

251:                                              ; preds = %247, %244
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %5, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %5, align 4
  br label %223

255:                                              ; preds = %223
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* @RDWR_STATUS_DONE, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  br label %275

260:                                              ; preds = %255
  %261 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %262 = load i32, i32* @DUMP, align 4
  %263 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %264 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load i64*, i64** %8, align 8
  %267 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %18, align 8
  %268 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = ptrtoint i64* %266 to i64
  %271 = ptrtoint i64* %269 to i64
  %272 = sub i64 %270, %271
  %273 = sdiv exact i64 %272, 8
  %274 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %261, i32 %262, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %265, i64 %273)
  br label %276

275:                                              ; preds = %259
  br i1 true, label %203, label %276

276:                                              ; preds = %275, %260
  br label %277

277:                                              ; preds = %276
  %278 = load i64, i64* %11, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %11, align 8
  br label %89

280:                                              ; preds = %158, %89
  %281 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %282 = load i32, i32* @MSG, align 4
  %283 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %281, i32 %282, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %284

284:                                              ; preds = %280, %236, %210, %180, %121, %103, %84, %70
  %285 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %286 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @sdio_release_host(i32 %287)
  br label %289

289:                                              ; preds = %284, %154, %26
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.memory_type_mapping*) #1

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter*, i64) #1

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i64* @vmalloc(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
