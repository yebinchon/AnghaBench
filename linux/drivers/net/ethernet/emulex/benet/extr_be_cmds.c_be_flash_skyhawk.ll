; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_flash_skyhawk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_flash_skyhawk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.be_dma_mem = type { i32 }
%struct.flash_section_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Invalid Cookie. FW image may be corrupted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPTYPE_OFFSET_SPECIFIED = common dso_local global i32 0, align 4
@MCC_STATUS_ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@MCC_STATUS_ILLEGAL_FIELD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Flash incomplete. Reset the server\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Download FW image again after reset\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not get CRC for 0x%x region\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@OPTYPE_UFI_DIR = common dso_local global i32 0, align 4
@MCC_STATUS_FAILED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Flashing section type 0x%x failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Digital signature missing in FW\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Invalid digital signature in FW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32)* @be_flash_skyhawk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_flash_skyhawk(%struct.be_adapter* %0, %struct.firmware* %1, %struct.be_dma_mem* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.flash_section_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  store i32 1, i32* %13, align 4
  %29 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.device* %32, %struct.device** %14, align 8
  store %struct.flash_section_info* null, %struct.flash_section_info** %15, align 8
  store i32 4, i32* %23, align 4
  %33 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %34 = load i32, i32* %23, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.firmware*, %struct.firmware** %7, align 8
  %38 = call %struct.flash_section_info* @get_fsec_info(%struct.be_adapter* %33, i32 %36, %struct.firmware* %37)
  store %struct.flash_section_info* %38, %struct.flash_section_info** %15, align 8
  %39 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %40 = icmp ne %struct.flash_section_info* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %4
  %42 = load %struct.device*, %struct.device** %14, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %258

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %211, %145, %46
  store i32 0, i32* %22, align 4
  br label %48

48:                                               ; preds = %254, %47
  %49 = load i32, i32* %22, align 4
  %50 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %51 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %257

56:                                               ; preds = %48
  %57 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %58 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %22, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %67 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %76 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %85 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %22, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = bitcast %struct.TYPE_6__* %89 to { i64, i64 }*
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 4
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1
  %94 = load i64, i64* %93, align 4
  %95 = call i32 @be_get_img_optype(i64 %92, i64 %94)
  store i32 %95, i32* %19, align 4
  %96 = load %struct.flash_section_info*, %struct.flash_section_info** %15, align 8
  %97 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 65535
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, 65535
  br i1 %107, label %108, label %109

108:                                              ; preds = %56
  br label %254

109:                                              ; preds = %56
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @OPTYPE_OFFSET_SPECIFIED, align 4
  store i32 %113, i32* %20, align 4
  br label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %168

120:                                              ; preds = %116
  %121 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %122 = load %struct.firmware*, %struct.firmware** %7, align 8
  %123 = getelementptr inbounds %struct.firmware, %struct.firmware* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @be_check_flash_crc(%struct.be_adapter* %121, i32* %124, i32 %125, i32 %126, i32 %129, i32 %130, i32* %11)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = call i64 @base_status(i32 %132)
  %134 = load i64, i64* @MCC_STATUS_ILLEGAL_REQUEST, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %120
  %137 = load i32, i32* %21, align 4
  %138 = call i64 @base_status(i32 %137)
  %139 = load i64, i64* @MCC_STATUS_ILLEGAL_FIELD, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %136, %120
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @OPTYPE_OFFSET_SPECIFIED, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %13, align 4
  br label %47

146:                                              ; preds = %141
  %147 = load %struct.device*, %struct.device** %14, align 8
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.device*, %struct.device** %14, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @EAGAIN, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %258

153:                                              ; preds = %136
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.device*, %struct.device** %14, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EFAULT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %258

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %254

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %167, %119
  %169 = load %struct.firmware*, %struct.firmware** %7, align 8
  %170 = getelementptr inbounds %struct.firmware, %struct.firmware* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %23, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32* %180, i32** %24, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load %struct.firmware*, %struct.firmware** %7, align 8
  %186 = getelementptr inbounds %struct.firmware, %struct.firmware* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.firmware*, %struct.firmware** %7, align 8
  %189 = getelementptr inbounds %struct.firmware, %struct.firmware* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  %193 = icmp ugt i32* %184, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %168
  store i32 -1, i32* %5, align 4
  br label %258

195:                                              ; preds = %168
  %196 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %197 = load i32*, i32** %24, align 8
  %198 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @be_flash(%struct.be_adapter* %196, i32* %197, %struct.be_dma_mem* %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %21, align 4
  %203 = load i32, i32* %21, align 4
  %204 = call i64 @base_status(i32 %203)
  %205 = load i64, i64* @MCC_STATUS_ILLEGAL_FIELD, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %195
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* @OPTYPE_OFFSET_SPECIFIED, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32 0, i32* %13, align 4
  br label %47

212:                                              ; preds = %207, %195
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %212
  %216 = load i32, i32* %21, align 4
  %217 = call i64 @base_status(i32 %216)
  %218 = load i64, i64* @MCC_STATUS_ILLEGAL_FIELD, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %229, label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @OPTYPE_UFI_DIR, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load i32, i32* %21, align 4
  %226 = call i64 @base_status(i32 %225)
  %227 = load i64, i64* @MCC_STATUS_FAILED, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %224, %215
  br label %254

230:                                              ; preds = %224, %220, %212
  %231 = load i32, i32* %21, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %252

233:                                              ; preds = %230
  %234 = load %struct.device*, %struct.device** %14, align 8
  %235 = load i32, i32* %18, align 4
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %21, align 4
  %238 = call i32 @addl_status(i32 %237)
  switch i32 %238, label %249 [
    i32 128, label %239
    i32 129, label %244
  ]

239:                                              ; preds = %233
  %240 = load %struct.device*, %struct.device** %14, align 8
  %241 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %240, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %5, align 4
  br label %258

244:                                              ; preds = %233
  %245 = load %struct.device*, %struct.device** %14, align 8
  %246 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %245, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %5, align 4
  br label %258

249:                                              ; preds = %233
  %250 = load i32, i32* @EFAULT, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %5, align 4
  br label %258

252:                                              ; preds = %230
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %229, %166, %108
  %255 = load i32, i32* %22, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %22, align 4
  br label %48

257:                                              ; preds = %48
  store i32 0, i32* %5, align 4
  br label %258

258:                                              ; preds = %257, %249, %244, %239, %194, %156, %146, %41
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local %struct.flash_section_info* @get_fsec_info(%struct.be_adapter*, i32, %struct.firmware*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be_get_img_optype(i64, i64) #1

declare dso_local i32 @be_check_flash_crc(%struct.be_adapter*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @base_status(i32) #1

declare dso_local i32 @be_flash(%struct.be_adapter*, i32*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @addl_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
