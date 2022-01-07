; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_load_app_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_load_app_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { %struct.TYPE_6__*, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.firmware = type { i64, i64* }

@.str = private unnamed_addr constant [29 x i8] c"request_firmware(%s) got %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware(%s) got %lu bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"firmware starts with type 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Structured Binary Format, Softing GmbH\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"firmware string '%.*s' fault\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unknown record type 0x%04x\0A\00", align 1
@DPRAM_COMMAND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"loading app.\00", align 1
@DPRAM_RECEIPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"SRAM seems to be damaged, wanted 0x%04x, got 0x%04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"start app.\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"firmware %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_load_app_fw(i8* %0, %struct.softing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.softing*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.softing* %1, %struct.softing** %5, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.softing*, %struct.softing** %5, align 8
  %22 = getelementptr inbounds %struct.softing, %struct.softing* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @request_firmware(%struct.firmware** %6, i8* %20, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.softing*, %struct.softing** %5, align 8
  %30 = getelementptr inbounds %struct.softing, %struct.softing* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32*, i8*, ...) @dev_alert(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %271

37:                                               ; preds = %2
  %38 = load %struct.softing*, %struct.softing** %5, align 8
  %39 = getelementptr inbounds %struct.softing, %struct.softing* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.firmware*, %struct.firmware** %6, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %42, i64 %45)
  %47 = load %struct.firmware*, %struct.firmware** %6, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  store i64* %49, i64** %7, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load %struct.firmware*, %struct.firmware** %6, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64* %54, i64** %8, align 8
  %55 = call i32 @fw_parse(i64** %7, i32* %12, i64* %14, i32* %13, i64** %9)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %257

59:                                               ; preds = %37
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 65535
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.softing*, %struct.softing** %5, align 8
  %66 = getelementptr inbounds %struct.softing, %struct.softing* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_alert(i32* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %257

71:                                               ; preds = %59
  %72 = load i64*, i64** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @strncmp(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.softing*, %struct.softing** %5, align 8
  %78 = getelementptr inbounds %struct.softing, %struct.softing* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %13, align 4
  %82 = load i64*, i64** %9, align 8
  %83 = call i32 (i32*, i8*, ...) @dev_alert(i32* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81, i64* %82)
  br label %257

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %225, %97, %84
  %86 = load i64*, i64** %7, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = icmp ult i64* %86, %87
  br i1 %88, label %89, label %226

89:                                               ; preds = %85
  %90 = call i32 @fw_parse(i64** %7, i32* %12, i64* %14, i32* %13, i64** %9)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %257

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %15, align 8
  store i32 1, i32* %19, align 4
  br label %85

99:                                               ; preds = %94
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1, i32* %18, align 4
  br label %226

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.softing*, %struct.softing** %5, align 8
  %108 = getelementptr inbounds %struct.softing, %struct.softing* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_alert(i32* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %10, align 4
  br label %257

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %132, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load i64*, i64** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = zext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %118

135:                                              ; preds = %118
  %136 = load i32, i32* %16, align 4
  %137 = and i32 %136, 65535
  store i32 %137, i32* %16, align 4
  %138 = load %struct.softing*, %struct.softing** %5, align 8
  %139 = getelementptr inbounds %struct.softing, %struct.softing* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.softing*, %struct.softing** %5, align 8
  %142 = getelementptr inbounds %struct.softing, %struct.softing* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = load i64*, i64** %9, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @memcpy_toio(i32* %147, i64* %148, i32 %149)
  %151 = load %struct.softing*, %struct.softing** %5, align 8
  %152 = getelementptr inbounds %struct.softing, %struct.softing* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.softing*, %struct.softing** %5, align 8
  %158 = getelementptr inbounds %struct.softing, %struct.softing* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %156, %162
  %164 = load %struct.softing*, %struct.softing** %5, align 8
  %165 = getelementptr inbounds %struct.softing, %struct.softing* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @DPRAM_COMMAND, align 4
  %168 = add nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = call i32 @iowrite32(i64 %163, i32* %170)
  %172 = load i64, i64* %14, align 8
  %173 = load %struct.softing*, %struct.softing** %5, align 8
  %174 = getelementptr inbounds %struct.softing, %struct.softing* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @DPRAM_COMMAND, align 4
  %177 = add nsw i32 %176, 6
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = call i32 @iowrite32(i64 %172, i32* %179)
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.softing*, %struct.softing** %5, align 8
  %183 = getelementptr inbounds %struct.softing, %struct.softing* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* @DPRAM_COMMAND, align 4
  %186 = add nsw i32 %185, 10
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = call i32 @iowrite16(i32 %181, i32* %188)
  %190 = load %struct.softing*, %struct.softing** %5, align 8
  %191 = getelementptr inbounds %struct.softing, %struct.softing* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* @DPRAM_COMMAND, align 4
  %194 = add nsw i32 %193, 12
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = call i32 @iowrite8(i32 1, i32* %196)
  %198 = load %struct.softing*, %struct.softing** %5, align 8
  %199 = call i32 @softing_bootloader_command(%struct.softing* %198, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %135
  br label %257

203:                                              ; preds = %135
  %204 = load %struct.softing*, %struct.softing** %5, align 8
  %205 = getelementptr inbounds %struct.softing, %struct.softing* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @DPRAM_RECEIPT, align 4
  %208 = add nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = call i32 @ioread16(i32* %210)
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %203
  %216 = load %struct.softing*, %struct.softing** %5, align 8
  %217 = getelementptr inbounds %struct.softing, %struct.softing* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %17, align 4
  %222 = call i32 (i32*, i8*, ...) @dev_alert(i32* %219, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %220, i32 %221)
  %223 = load i32, i32* @EIO, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %10, align 4
  br label %257

225:                                              ; preds = %203
  br label %85

226:                                              ; preds = %102, %85
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* %19, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229, %226
  br label %257

233:                                              ; preds = %229
  %234 = load i64, i64* %15, align 8
  %235 = load %struct.softing*, %struct.softing** %5, align 8
  %236 = getelementptr inbounds %struct.softing, %struct.softing* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @DPRAM_COMMAND, align 4
  %239 = add nsw i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = call i32 @iowrite32(i64 %234, i32* %241)
  %243 = load %struct.softing*, %struct.softing** %5, align 8
  %244 = getelementptr inbounds %struct.softing, %struct.softing* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* @DPRAM_COMMAND, align 4
  %247 = add nsw i32 %246, 6
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = call i32 @iowrite8(i32 1, i32* %249)
  %251 = load %struct.softing*, %struct.softing** %5, align 8
  %252 = call i32 @softing_bootloader_command(%struct.softing* %251, i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %252, i32* %10, align 4
  %253 = load i32, i32* %10, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %233
  br label %257

256:                                              ; preds = %233
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %256, %255, %232, %215, %202, %106, %93, %76, %64, %58
  %258 = load %struct.firmware*, %struct.firmware** %6, align 8
  %259 = call i32 @release_firmware(%struct.firmware* %258)
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.softing*, %struct.softing** %5, align 8
  %264 = getelementptr inbounds %struct.softing, %struct.softing* %263, i32 0, i32 0
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i8*, i8** %4, align 8
  %268 = call i32 @dev_info(i32* %266, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %262, %257
  %270 = load i32, i32* %10, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %269, %28
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_alert(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64) #1

declare dso_local i32 @fw_parse(i64**, i32*, i64*, i32*, i64**) #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i32 @memcpy_toio(i32*, i64*, i32) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @softing_bootloader_command(%struct.softing*, i32, i8*) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
