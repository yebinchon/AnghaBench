; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_read_cccr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_read_cccr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@R4_18V_PRESENT = common dso_local global i32 0, align 4
@SDIO_CCCR_CCCR = common dso_local global i32 0, align 4
@SDIO_CCCR_REV_3_00 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: unrecognised CCCR structure version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDIO_CCCR_CAPS = common dso_local global i32 0, align 4
@SDIO_CCCR_CAP_SMB = common dso_local global i8 0, align 1
@SDIO_CCCR_CAP_LSC = common dso_local global i8 0, align 1
@SDIO_CCCR_CAP_4BLS = common dso_local global i8 0, align 1
@SDIO_CCCR_REV_1_10 = common dso_local global i32 0, align 4
@SDIO_CCCR_POWER = common dso_local global i32 0, align 4
@SDIO_POWER_SMPC = common dso_local global i8 0, align 1
@SDIO_CCCR_REV_1_20 = common dso_local global i32 0, align 4
@SDIO_CCCR_SPEED = common dso_local global i32 0, align 4
@SDIO_CCCR_UHS = common dso_local global i32 0, align 4
@SDIO_UHS_DDR50 = common dso_local global i8 0, align 1
@SD_MODE_UHS_DDR50 = common dso_local global i32 0, align 4
@SDIO_UHS_SDR50 = common dso_local global i8 0, align 1
@SD_MODE_UHS_SDR50 = common dso_local global i32 0, align 4
@SDIO_UHS_SDR104 = common dso_local global i8 0, align 1
@SD_MODE_UHS_SDR104 = common dso_local global i32 0, align 4
@SDIO_CCCR_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SDIO_DRIVE_SDTA = common dso_local global i8 0, align 1
@SD_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@SDIO_DRIVE_SDTC = common dso_local global i8 0, align 1
@SD_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@SDIO_DRIVE_SDTD = common dso_local global i8 0, align 1
@SD_DRIVER_TYPE_D = common dso_local global i32 0, align 4
@SDIO_SPEED_SHS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @sdio_read_cccr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_read_cccr(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @R4_18V_PRESENT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %15 = load i32, i32* @SDIO_CCCR_CCCR, align 4
  %16 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %14, i32 0, i32 0, i32 %15, i32 0, i8* %9)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %273

20:                                               ; preds = %2
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 15
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SDIO_CCCR_REV_3_00, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_hostname(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %275

36:                                               ; preds = %20
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 240
  %40 = ashr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8 %41, i8* %44, align 4
  %45 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %46 = load i32, i32* @SDIO_CCCR_CAPS, align 4
  %47 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %45, i32 0, i32 0, i32 %46, i32 0, i8* %9)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %273

51:                                               ; preds = %36
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @SDIO_CCCR_CAP_SMB, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @SDIO_CCCR_CAP_LSC, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @SDIO_CCCR_CAP_4BLS, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @SDIO_CCCR_REV_1_10, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %90 = load i32, i32* @SDIO_CCCR_POWER, align 4
  %91 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %89, i32 0, i32 0, i32 %90, i32 0, i8* %9)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %273

95:                                               ; preds = %88
  %96 = load i8, i8* %9, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @SDIO_POWER_SMPC, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %95
  br label %107

107:                                              ; preds = %106, %84
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SDIO_CCCR_REV_1_20, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %272

111:                                              ; preds = %107
  %112 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %113 = load i32, i32* @SDIO_CCCR_SPEED, align 4
  %114 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %112, i32 0, i32 0, i32 %113, i32 0, i8* %10)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %273

118:                                              ; preds = %111
  %119 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %120 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %123 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %126 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @SDIO_CCCR_REV_3_00, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %243

131:                                              ; preds = %118
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %243

134:                                              ; preds = %131
  %135 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %136 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  %138 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %139 = load i32, i32* @SDIO_CCCR_UHS, align 4
  %140 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %138, i32 0, i32 0, i32 %139, i32 0, i8* %9)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %273

144:                                              ; preds = %134
  %145 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %146 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @mmc_host_uhs(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %193

150:                                              ; preds = %144
  %151 = load i8, i8* %9, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8, i8* @SDIO_UHS_DDR50, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i32, i32* @SD_MODE_UHS_DDR50, align 4
  %159 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %160 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %157, %150
  %165 = load i8, i8* %9, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* @SDIO_UHS_SDR50, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %166, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load i32, i32* @SD_MODE_UHS_SDR50, align 4
  %173 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %174 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %172
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %171, %164
  %179 = load i8, i8* %9, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8, i8* @SDIO_UHS_SDR104, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load i32, i32* @SD_MODE_UHS_SDR104, align 4
  %187 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %188 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %185, %178
  br label %193

193:                                              ; preds = %192, %144
  %194 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %195 = load i32, i32* @SDIO_CCCR_DRIVE_STRENGTH, align 4
  %196 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %194, i32 0, i32 0, i32 %195, i32 0, i8* %9)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %273

200:                                              ; preds = %193
  %201 = load i8, i8* %9, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* @SDIO_DRIVE_SDTA, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %202, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load i32, i32* @SD_DRIVER_TYPE_A, align 4
  %209 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %210 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %208
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %207, %200
  %215 = load i8, i8* %9, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* @SDIO_DRIVE_SDTC, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %216, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load i32, i32* @SD_DRIVER_TYPE_C, align 4
  %223 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %224 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %222
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %221, %214
  %229 = load i8, i8* %9, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* @SDIO_DRIVE_SDTD, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %230, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %228
  %236 = load i32, i32* @SD_DRIVER_TYPE_D, align 4
  %237 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %238 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %236
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %235, %228
  br label %243

243:                                              ; preds = %242, %131, %118
  %244 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %245 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %271, label %249

249:                                              ; preds = %243
  %250 = load i8, i8* %10, align 1
  %251 = zext i8 %250 to i32
  %252 = load i8, i8* @SDIO_SPEED_SHS, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %251, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %249
  %257 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %258 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 5
  store i32 1, i32* %259, align 4
  %260 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %261 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  store i32 50000000, i32* %262, align 4
  br label %270

263:                                              ; preds = %249
  %264 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %265 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 5
  store i32 0, i32* %266, align 4
  %267 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %268 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  store i32 25000000, i32* %269, align 4
  br label %270

270:                                              ; preds = %263, %256
  br label %271

271:                                              ; preds = %270, %243
  br label %272

272:                                              ; preds = %271, %107
  br label %273

273:                                              ; preds = %272, %199, %143, %117, %94, %50, %19
  %274 = load i32, i32* %6, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %273, %27
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i64 @mmc_host_uhs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
