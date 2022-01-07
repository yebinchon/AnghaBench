; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@SLIC_FIRMWARE_MAX_SECTIONS = common dso_local global i32 0, align 4
@SLIC_MODEL_OASIS = common dso_local global i64 0, align 8
@SLIC_FIRMWARE_OASIS = common dso_local global i8* null, align 8
@SLIC_FIRMWARE_MOJAVE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to load firmware %s\0A\00", align 1
@SLIC_FIRMWARE_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid firmware size %zu (min is %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"invalid number of sections in firmware: %u\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"invalid firmware size %zu (expected >= %u)\0A\00", align 1
@SLIC_REG_WCS = common dso_local global i32 0, align 4
@SLIC_WCS_COMPARE = common dso_local global i32 0, align 4
@SLIC_WCS_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_load_firmware(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %22 = load i32, i32* @SLIC_FIRMWARE_MAX_SECTIONS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %4, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %5, align 8
  %26 = load i32, i32* @SLIC_FIRMWARE_MAX_SECTIONS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %30 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SLIC_MODEL_OASIS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i8*, i8** @SLIC_FIRMWARE_OASIS, align 8
  br label %38

36:                                               ; preds = %1
  %37 = load i8*, i8** @SLIC_FIRMWARE_MOJAVE, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i8* [ %35, %34 ], [ %37, %36 ]
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %42 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @request_firmware(%struct.firmware** %7, i8* %40, i32* %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %50 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %264

56:                                               ; preds = %38
  %57 = load %struct.firmware*, %struct.firmware** %7, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SLIC_FIRMWARE_MIN_SIZE, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %64 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.firmware*, %struct.firmware** %7, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SLIC_FIRMWARE_MIN_SIZE, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %18, align 4
  br label %260

74:                                               ; preds = %56
  %75 = load %struct.firmware*, %struct.firmware** %7, align 8
  %76 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %75, i32* %13)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @SLIC_FIRMWARE_MAX_SECTIONS, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79, %74
  %84 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %85 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %18, align 4
  br label %260

92:                                               ; preds = %79
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %93, 8
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %112, %92
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load %struct.firmware*, %struct.firmware** %7, align 8
  %102 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %101, i32* %13)
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %28, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %28, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.firmware*, %struct.firmware** %7, align 8
  %118 = getelementptr inbounds %struct.firmware, %struct.firmware* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ugt i32 %116, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %123 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %struct.firmware*, %struct.firmware** %7, align 8
  %127 = getelementptr inbounds %struct.firmware, %struct.firmware* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %18, align 4
  br label %260

133:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %144, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load %struct.firmware*, %struct.firmware** %7, align 8
  %140 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %139, i32* %13)
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %25, i64 %142
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %134

147:                                              ; preds = %134
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %10, align 4
  %149 = load %struct.firmware*, %struct.firmware** %7, align 8
  %150 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %149, i32* %13)
  store i32 %150, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %192, %147
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %195

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %28, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 3
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %25, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %165

165:                                              ; preds = %188, %155
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %171 = load i32, i32* @SLIC_REG_WCS, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %172, %173
  %175 = call i32 @slic_write(%struct.slic_device* %170, i32 %171, i32 %174)
  %176 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %177 = load i32, i32* @SLIC_REG_WCS, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @slic_write(%struct.slic_device* %176, i32 %177, i32 %178)
  %180 = load %struct.firmware*, %struct.firmware** %7, align 8
  %181 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %180, i32* %13)
  store i32 %181, i32* %15, align 4
  %182 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %183 = load i32, i32* @SLIC_REG_WCS, align 4
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @slic_write(%struct.slic_device* %182, i32 %183, i32 %184)
  %186 = load %struct.firmware*, %struct.firmware** %7, align 8
  %187 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %186, i32* %13)
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %169
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %165

191:                                              ; preds = %165
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %151

195:                                              ; preds = %151
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %197

197:                                              ; preds = %246, %195
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %249

201:                                              ; preds = %197
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %28, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %205, 3
  store i32 %206, i32* %21, align 4
  %207 = load %struct.firmware*, %struct.firmware** %7, align 8
  %208 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %207, i32* %13)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %25, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp slt i32 %213, 32768
  br i1 %214, label %215, label %216

215:                                              ; preds = %201
  br label %246

216:                                              ; preds = %201
  store i32 0, i32* %16, align 4
  br label %217

217:                                              ; preds = %242, %216
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %21, align 4
  %220 = icmp ult i32 %218, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %217
  %222 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %223 = load i32, i32* @SLIC_REG_WCS, align 4
  %224 = load i32, i32* @SLIC_WCS_COMPARE, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %225, %226
  %228 = or i32 %224, %227
  %229 = call i32 @slic_write(%struct.slic_device* %222, i32 %223, i32 %228)
  %230 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %231 = load i32, i32* @SLIC_REG_WCS, align 4
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @slic_write(%struct.slic_device* %230, i32 %231, i32 %232)
  %234 = load %struct.firmware*, %struct.firmware** %7, align 8
  %235 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %234, i32* %13)
  store i32 %235, i32* %15, align 4
  %236 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %237 = load i32, i32* @SLIC_REG_WCS, align 4
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @slic_write(%struct.slic_device* %236, i32 %237, i32 %238)
  %240 = load %struct.firmware*, %struct.firmware** %7, align 8
  %241 = call i32 @slic_read_dword_from_firmware(%struct.firmware* %240, i32* %13)
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %221
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %16, align 4
  br label %217

245:                                              ; preds = %217
  br label %246

246:                                              ; preds = %245, %215
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %14, align 4
  br label %197

249:                                              ; preds = %197
  %250 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %251 = call i32 @slic_flush_write(%struct.slic_device* %250)
  %252 = call i32 @mdelay(i32 10)
  %253 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %254 = load i32, i32* @SLIC_REG_WCS, align 4
  %255 = load i32, i32* @SLIC_WCS_START, align 4
  %256 = call i32 @slic_write(%struct.slic_device* %253, i32 %254, i32 %255)
  %257 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %258 = call i32 @slic_flush_write(%struct.slic_device* %257)
  %259 = call i32 @mdelay(i32 20)
  br label %260

260:                                              ; preds = %249, %121, %83, %62
  %261 = load %struct.firmware*, %struct.firmware** %7, align 8
  %262 = call i32 @release_firmware(%struct.firmware* %261)
  %263 = load i32, i32* %18, align 4
  store i32 %263, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %264

264:                                              ; preds = %260, %48
  %265 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @slic_read_dword_from_firmware(%struct.firmware*, i32*) #2

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #2

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
