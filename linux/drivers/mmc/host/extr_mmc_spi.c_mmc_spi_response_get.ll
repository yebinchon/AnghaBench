; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_response_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_response_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_command = type { i32, i16*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"  ... CMD%d response SPI_%s\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@R1_SPI_PARAMETER = common dso_local global i32 0, align 4
@R1_SPI_ADDRESS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@R1_SPI_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@R1_SPI_COM_CRC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@R1_SPI_ERASE_SEQ = common dso_local global i32 0, align 4
@R1_SPI_ERASE_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@r1b_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"bad response type %04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: resp %04x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_spi_host*, %struct.mmc_command*, i32)* @mmc_spi_response_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_spi_response_get(%struct.mmc_spi_host* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_spi_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  store i32* %27, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %29 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %33 = call i8* @maptype(%struct.mmc_command* %32)
  %34 = call i32 @snprintf(i8* %28, i32 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  store i32* %36, i32** %8, align 8
  br label %37

37:                                               ; preds = %47, %3
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ult i32* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 255
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  br label %37

50:                                               ; preds = %45
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp eq i32* %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** %9, align 8
  store i32 2, i32* %14, align 4
  br label %62

62:                                               ; preds = %77, %54
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %67 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %66, i32 1)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %433

71:                                               ; preds = %65
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %84

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %433

83:                                               ; preds = %50
  br label %84

84:                                               ; preds = %83, %75
  store i32 0, i32* %11, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %143

89:                                               ; preds = %84
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  %92 = load i32, i32* %90, align 4
  %93 = shl i32 %92, 8
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %13, align 2
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = icmp eq i32* %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %89
  %99 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %100 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %99, i32 1)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %433

104:                                              ; preds = %98
  %105 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %8, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %104, %89
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %8, align 8
  %115 = load i32, i32* %113, align 4
  %116 = load i16, i16* %13, align 2
  %117 = zext i16 %116 to i32
  %118 = or i32 %117, %115
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %13, align 2
  br label %120

120:                                              ; preds = %125, %112
  %121 = load i16, i16* %13, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 32768
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  %128 = load i16, i16* %13, align 2
  %129 = zext i16 %128 to i32
  %130 = shl i32 %129, 1
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %13, align 2
  br label %120

132:                                              ; preds = %120
  %133 = load i16, i16* %13, align 2
  %134 = zext i16 %133 to i32
  %135 = ashr i32 %134, 8
  %136 = trunc i32 %135 to i16
  %137 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %138 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %137, i32 0, i32 1
  %139 = load i16*, i16** %138, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 0
  store i16 %136, i16* %140, align 2
  %141 = load i16, i16* %13, align 2
  %142 = zext i16 %141 to i32
  store i32 %142, i32* %12, align 4
  br label %152

143:                                              ; preds = %84
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %8, align 8
  %146 = load i32, i32* %144, align 4
  %147 = trunc i32 %146 to i16
  %148 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %149 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %148, i32 0, i32 1
  %150 = load i16*, i16** %149, align 8
  %151 = getelementptr inbounds i16, i16* %150, i64 0
  store i16 %147, i16* %151, align 2
  br label %152

152:                                              ; preds = %143, %132
  %153 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %154 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %156 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %155, i32 0, i32 1
  %157 = load i16*, i16** %156, align 8
  %158 = getelementptr inbounds i16, i16* %157, i64 0
  %159 = load i16, i16* %158, align 2
  %160 = zext i16 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %222

162:                                              ; preds = %152
  %163 = load i32, i32* @R1_SPI_PARAMETER, align 4
  %164 = load i32, i32* @R1_SPI_ADDRESS, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %167 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %166, i32 0, i32 1
  %168 = load i16*, i16** %167, align 8
  %169 = getelementptr inbounds i16, i16* %168, i64 0
  %170 = load i16, i16* %169, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %165, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i32, i32* @EFAULT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %10, align 4
  br label %221

177:                                              ; preds = %162
  %178 = load i32, i32* @R1_SPI_ILLEGAL_COMMAND, align 4
  %179 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %180 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %179, i32 0, i32 1
  %181 = load i16*, i16** %180, align 8
  %182 = getelementptr inbounds i16, i16* %181, i64 0
  %183 = load i16, i16* %182, align 2
  %184 = zext i16 %183 to i32
  %185 = and i32 %178, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* @ENOSYS, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %10, align 4
  br label %220

190:                                              ; preds = %177
  %191 = load i32, i32* @R1_SPI_COM_CRC, align 4
  %192 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %193 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %192, i32 0, i32 1
  %194 = load i16*, i16** %193, align 8
  %195 = getelementptr inbounds i16, i16* %194, i64 0
  %196 = load i16, i16* %195, align 2
  %197 = zext i16 %196 to i32
  %198 = and i32 %191, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %190
  %201 = load i32, i32* @EILSEQ, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %219

203:                                              ; preds = %190
  %204 = load i32, i32* @R1_SPI_ERASE_SEQ, align 4
  %205 = load i32, i32* @R1_SPI_ERASE_RESET, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %208 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %207, i32 0, i32 1
  %209 = load i16*, i16** %208, align 8
  %210 = getelementptr inbounds i16, i16* %209, i64 0
  %211 = load i16, i16* %210, align 2
  %212 = zext i16 %211 to i32
  %213 = and i32 %206, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %203
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %215, %203
  br label %219

219:                                              ; preds = %218, %200
  br label %220

220:                                              ; preds = %219, %187
  br label %221

221:                                              ; preds = %220, %174
  br label %222

222:                                              ; preds = %221, %152
  %223 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %224 = call i32 @mmc_spi_resp_type(%struct.mmc_command* %223)
  switch i32 %224, label %388 [
    i32 130, label %225
    i32 129, label %248
    i32 128, label %305
    i32 131, label %387
  ]

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %236, %225
  %227 = load i32*, i32** %8, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = icmp ult i32* %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br label %234

234:                                              ; preds = %230, %226
  %235 = phi i1 [ false, %226 ], [ %233, %230 ]
  br i1 %235, label %236, label %239

236:                                              ; preds = %234
  %237 = load i32*, i32** %8, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %8, align 8
  br label %226

239:                                              ; preds = %234
  %240 = load i32*, i32** %8, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = icmp eq i32* %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %245 = load i32, i32* @r1b_timeout, align 4
  %246 = call i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %239
  br label %402

248:                                              ; preds = %222
  %249 = load i32*, i32** %8, align 8
  %250 = load i32*, i32** %9, align 8
  %251 = icmp eq i32* %249, %250
  br i1 %251, label %252, label %266

252:                                              ; preds = %248
  %253 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %254 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %253, i32 1)
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  br label %433

258:                                              ; preds = %252
  %259 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %260 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %259, i32 0, i32 1
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  store i32* %263, i32** %8, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32* %265, i32** %9, align 8
  br label %266

266:                                              ; preds = %258, %248
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %292

269:                                              ; preds = %266
  %270 = load i32, i32* %12, align 4
  %271 = shl i32 %270, 8
  %272 = trunc i32 %271 to i16
  store i16 %272, i16* %13, align 2
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %11, align 4
  %276 = shl i32 %274, %275
  %277 = load i16, i16* %13, align 2
  %278 = zext i16 %277 to i32
  %279 = or i32 %278, %276
  %280 = trunc i32 %279 to i16
  store i16 %280, i16* %13, align 2
  %281 = load i16, i16* %13, align 2
  %282 = zext i16 %281 to i32
  %283 = and i32 %282, 65280
  %284 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %285 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %284, i32 0, i32 1
  %286 = load i16*, i16** %285, align 8
  %287 = getelementptr inbounds i16, i16* %286, i64 0
  %288 = load i16, i16* %287, align 2
  %289 = zext i16 %288 to i32
  %290 = or i32 %289, %283
  %291 = trunc i32 %290 to i16
  store i16 %291, i16* %287, align 2
  br label %304

292:                                              ; preds = %266
  %293 = load i32*, i32** %8, align 8
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 8
  %296 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %297 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %296, i32 0, i32 1
  %298 = load i16*, i16** %297, align 8
  %299 = getelementptr inbounds i16, i16* %298, i64 0
  %300 = load i16, i16* %299, align 2
  %301 = zext i16 %300 to i32
  %302 = or i32 %301, %295
  %303 = trunc i32 %302 to i16
  store i16 %303, i16* %299, align 2
  br label %304

304:                                              ; preds = %292, %269
  br label %402

305:                                              ; preds = %222
  %306 = load i32, i32* %12, align 4
  %307 = shl i32 %306, 8
  %308 = trunc i32 %307 to i16
  store i16 %308, i16* %13, align 2
  %309 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %310 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %309, i32 0, i32 1
  %311 = load i16*, i16** %310, align 8
  %312 = getelementptr inbounds i16, i16* %311, i64 1
  store i16 0, i16* %312, align 2
  store i32 0, i32* %14, align 4
  br label %313

313:                                              ; preds = %383, %305
  %314 = load i32, i32* %14, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %386

316:                                              ; preds = %313
  %317 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %318 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %317, i32 0, i32 1
  %319 = load i16*, i16** %318, align 8
  %320 = getelementptr inbounds i16, i16* %319, i64 1
  %321 = load i16, i16* %320, align 2
  %322 = zext i16 %321 to i32
  %323 = shl i32 %322, 8
  %324 = trunc i32 %323 to i16
  store i16 %324, i16* %320, align 2
  %325 = load i32*, i32** %8, align 8
  %326 = load i32*, i32** %9, align 8
  %327 = icmp eq i32* %325, %326
  br i1 %327, label %328, label %342

328:                                              ; preds = %316
  %329 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %330 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %329, i32 1)
  store i32 %330, i32* %10, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %433

334:                                              ; preds = %328
  %335 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %336 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %335, i32 0, i32 1
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  store i32* %339, i32** %8, align 8
  %340 = load i32*, i32** %8, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  store i32* %341, i32** %9, align 8
  br label %342

342:                                              ; preds = %334, %316
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %370

345:                                              ; preds = %342
  %346 = load i32*, i32** %8, align 8
  %347 = getelementptr inbounds i32, i32* %346, i32 1
  store i32* %347, i32** %8, align 8
  %348 = load i32, i32* %346, align 4
  %349 = load i32, i32* %11, align 4
  %350 = shl i32 %348, %349
  %351 = load i16, i16* %13, align 2
  %352 = zext i16 %351 to i32
  %353 = or i32 %352, %350
  %354 = trunc i32 %353 to i16
  store i16 %354, i16* %13, align 2
  %355 = load i16, i16* %13, align 2
  %356 = zext i16 %355 to i32
  %357 = ashr i32 %356, 8
  %358 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %359 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %358, i32 0, i32 1
  %360 = load i16*, i16** %359, align 8
  %361 = getelementptr inbounds i16, i16* %360, i64 1
  %362 = load i16, i16* %361, align 2
  %363 = zext i16 %362 to i32
  %364 = or i32 %363, %357
  %365 = trunc i32 %364 to i16
  store i16 %365, i16* %361, align 2
  %366 = load i16, i16* %13, align 2
  %367 = zext i16 %366 to i32
  %368 = shl i32 %367, 8
  %369 = trunc i32 %368 to i16
  store i16 %369, i16* %13, align 2
  br label %382

370:                                              ; preds = %342
  %371 = load i32*, i32** %8, align 8
  %372 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %372, i32** %8, align 8
  %373 = load i32, i32* %371, align 4
  %374 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %375 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %374, i32 0, i32 1
  %376 = load i16*, i16** %375, align 8
  %377 = getelementptr inbounds i16, i16* %376, i64 1
  %378 = load i16, i16* %377, align 2
  %379 = zext i16 %378 to i32
  %380 = or i32 %379, %373
  %381 = trunc i32 %380 to i16
  store i16 %381, i16* %377, align 2
  br label %382

382:                                              ; preds = %370, %345
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %14, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %14, align 4
  br label %313

386:                                              ; preds = %313
  br label %402

387:                                              ; preds = %222
  br label %402

388:                                              ; preds = %222
  %389 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %390 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %389, i32 0, i32 0
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %394 = call i32 @mmc_spi_resp_type(%struct.mmc_command* %393)
  %395 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %392, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* %10, align 4
  %397 = icmp sge i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %388
  %399 = load i32, i32* @EINVAL, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %10, align 4
  br label %401

401:                                              ; preds = %398, %388
  br label %433

402:                                              ; preds = %387, %386, %304, %247
  %403 = load i32, i32* %10, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %402
  %406 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %407 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %406, i32 0, i32 0
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %411 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %412 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %411, i32 0, i32 1
  %413 = load i16*, i16** %412, align 8
  %414 = getelementptr inbounds i16, i16* %413, i64 0
  %415 = load i16, i16* %414, align 2
  %416 = zext i16 %415 to i32
  %417 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %418 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %417, i32 0, i32 1
  %419 = load i16*, i16** %418, align 8
  %420 = getelementptr inbounds i16, i16* %419, i64 1
  %421 = load i16, i16* %420, align 2
  %422 = zext i16 %421 to i32
  %423 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %409, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %410, i32 %416, i32 %422)
  br label %424

424:                                              ; preds = %405, %402
  %425 = load i32, i32* %10, align 4
  %426 = icmp sge i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %424
  %428 = load i32, i32* %7, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = load i32, i32* %10, align 4
  store i32 %431, i32* %4, align 4
  br label %444

432:                                              ; preds = %427, %424
  br label %433

433:                                              ; preds = %432, %401, %333, %257, %103, %80, %70
  %434 = load i32, i32* %10, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %433
  %437 = load i32, i32* %10, align 4
  %438 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %439 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 8
  br label %440

440:                                              ; preds = %436, %433
  %441 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %442 = call i32 @mmc_cs_off(%struct.mmc_spi_host* %441)
  %443 = load i32, i32* %10, align 4
  store i32 %443, i32* %4, align 4
  br label %444

444:                                              ; preds = %440, %430
  %445 = load i32, i32* %4, align 4
  ret i32 %445
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @maptype(%struct.mmc_command*) #1

declare dso_local i32 @mmc_spi_readbytes(%struct.mmc_spi_host*, i32) #1

declare dso_local i32 @mmc_spi_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mmc_cs_off(%struct.mmc_spi_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
