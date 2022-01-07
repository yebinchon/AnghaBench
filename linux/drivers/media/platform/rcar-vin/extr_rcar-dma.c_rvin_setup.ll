; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@VNMC_IM_ODD = common dso_local global i32 0, align 4
@VNMC_IM_EVEN = common dso_local global i32 0, align 4
@VNMC_IM_FULL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VNMC_FOC = common dso_local global i32 0, align 4
@VNMC_IM_ODD_EVEN = common dso_local global i32 0, align 4
@VNMC_INF_YUV16 = common dso_local global i32 0, align 4
@VNMC_YCAL = common dso_local global i32 0, align 4
@V4L2_MBUS_BT656 = common dso_local global i32 0, align 4
@VNMC_INF_YUV8_BT656 = common dso_local global i32 0, align 4
@VNMC_INF_YUV8_BT601 = common dso_local global i32 0, align 4
@VNMC_INF_RGB888 = common dso_local global i32 0, align 4
@VNMC_INF_YUV10_BT656 = common dso_local global i32 0, align 4
@VNMC_INF_YUV10_BT601 = common dso_local global i32 0, align 4
@RCAR_GEN3 = common dso_local global i64 0, align 8
@VNDMR2_FTEV = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@VNDMR2_HPS = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@VNDMR2_VPS = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ENABLE_LOW = common dso_local global i32 0, align 4
@VNDMR2_CES = common dso_local global i32 0, align 4
@VNUVAOF_REG = common dso_local global i32 0, align 4
@VNDMR_DTMD_YCSEP = common dso_local global i32 0, align 4
@VNDMR_BPSM = common dso_local global i32 0, align 4
@VNDMR_DTMD_ARGB = common dso_local global i32 0, align 4
@VNDMR_EXRGB = common dso_local global i32 0, align 4
@VNDMR_ABIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid pixelformat (0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VNMC_VUP = common dso_local global i32 0, align 4
@VNMC_BPS = common dso_local global i32 0, align 4
@VNMC_DPINE = common dso_local global i32 0, align 4
@VNIE_FIE = common dso_local global i32 0, align 4
@VNIE_EFE = common dso_local global i32 0, align 4
@VNINTS_REG = common dso_local global i32 0, align 4
@VNIE_REG = common dso_local global i32 0, align 4
@VNDMR_REG = common dso_local global i32 0, align 4
@VNDMR2_REG = common dso_local global i32 0, align 4
@VNMC_ME = common dso_local global i32 0, align 4
@VNMC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_setup(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %47 [
    i32 136, label %15
    i32 141, label %17
    i32 140, label %19
    i32 138, label %39
    i32 139, label %41
    i32 137, label %45
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @VNMC_IM_ODD, align 4
  store i32 %16, i32* %4, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @VNMC_IM_EVEN, align 4
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load i32, i32* @VNMC_IM_FULL, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @V4L2_STD_525_60, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @VNMC_IM_FULL, align 4
  %36 = load i32, i32* @VNMC_FOC, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %27, %19
  br label %49

39:                                               ; preds = %1
  %40 = load i32, i32* @VNMC_IM_FULL, align 4
  store i32 %40, i32* %4, align 4
  br label %49

41:                                               ; preds = %1
  %42 = load i32, i32* @VNMC_IM_FULL, align 4
  %43 = load i32, i32* @VNMC_FOC, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @VNMC_IM_ODD_EVEN, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %8, align 4
  br label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @VNMC_IM_ODD, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %41, %39, %38, %17, %15
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %111 [
    i32 142, label %53
    i32 144, label %57
    i32 143, label %63
    i32 146, label %85
    i32 145, label %89
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @VNMC_INF_YUV16, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %112

57:                                               ; preds = %49
  %58 = load i32, i32* @VNMC_INF_YUV16, align 4
  %59 = load i32, i32* @VNMC_YCAL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %112

63:                                               ; preds = %49
  %64 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %70 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %69, i32 0, i32 6
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @V4L2_MBUS_BT656, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @VNMC_INF_YUV8_BT656, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %68, %63
  %81 = load i32, i32* @VNMC_INF_YUV8_BT601, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %76
  store i32 1, i32* %10, align 4
  br label %112

85:                                               ; preds = %49
  %86 = load i32, i32* @VNMC_INF_RGB888, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %112

89:                                               ; preds = %49
  %90 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %91 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %96 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %95, i32 0, i32 6
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @V4L2_MBUS_BT656, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* @VNMC_INF_YUV10_BT656, align 4
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %110

106:                                              ; preds = %94, %89
  %107 = load i32, i32* @VNMC_INF_YUV10_BT601, align 4
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %102
  store i32 1, i32* %10, align 4
  br label %112

111:                                              ; preds = %49
  br label %112

112:                                              ; preds = %111, %110, %85, %84, %57, %53
  %113 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %114 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @RCAR_GEN3, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @VNDMR2_FTEV, align 4
  store i32 %121, i32* %6, align 4
  br label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @VNDMR2_FTEV, align 4
  %124 = call i32 @VNDMR2_VLV(i32 1)
  %125 = or i32 %123, %124
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %120
  %127 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %128 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %171, label %131

131:                                              ; preds = %126
  %132 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %133 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %132, i32 0, i32 6
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* @VNDMR2_HPS, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %131
  %145 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %146 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %145, i32 0, i32 6
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %144
  %154 = load i32, i32* @VNDMR2_VPS, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %153, %144
  %158 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %159 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %158, i32 0, i32 6
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @V4L2_MBUS_DATA_ENABLE_LOW, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i32, i32* @VNDMR2_CES, align 4
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %166, %157
  br label %171

171:                                              ; preds = %170, %126
  %172 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %173 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  switch i32 %175, label %220 [
    i32 133, label %176
    i32 128, label %191
    i32 131, label %193
    i32 129, label %194
    i32 132, label %196
    i32 130, label %197
    i32 134, label %199
    i32 135, label %211
  ]

176:                                              ; preds = %171
  %177 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %178 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %179 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %183 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %181, %185
  %187 = call i32 @ALIGN(i32 %186, i32 128)
  %188 = load i32, i32* @VNUVAOF_REG, align 4
  %189 = call i32 @rvin_write(%struct.rvin_dev* %177, i32 %187, i32 %188)
  %190 = load i32, i32* @VNDMR_DTMD_YCSEP, align 4
  store i32 %190, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %229

191:                                              ; preds = %171
  %192 = load i32, i32* @VNDMR_BPSM, align 4
  store i32 %192, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %229

193:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %229

194:                                              ; preds = %171
  %195 = load i32, i32* @VNDMR_DTMD_ARGB, align 4
  store i32 %195, i32* %5, align 4
  br label %229

196:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  br label %229

197:                                              ; preds = %171
  %198 = load i32, i32* @VNDMR_EXRGB, align 4
  store i32 %198, i32* %5, align 4
  br label %229

199:                                              ; preds = %171
  %200 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %201 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* @VNDMR_ABIT, align 4
  br label %207

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i32 [ %205, %204 ], [ 0, %206 ]
  %209 = load i32, i32* @VNDMR_DTMD_ARGB, align 4
  %210 = or i32 %208, %209
  store i32 %210, i32* %5, align 4
  br label %229

211:                                              ; preds = %171
  %212 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %213 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @VNDMR_A8BIT(i32 %214)
  %216 = load i32, i32* @VNDMR_EXRGB, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @VNDMR_DTMD_ARGB, align 4
  %219 = or i32 %217, %218
  store i32 %219, i32* %5, align 4
  br label %229

220:                                              ; preds = %171
  %221 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %222 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %223 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @vin_err(%struct.rvin_dev* %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %2, align 4
  br label %294

229:                                              ; preds = %211, %207, %197, %196, %194, %193, %191, %176
  %230 = load i32, i32* @VNMC_VUP, align 4
  %231 = load i32, i32* %4, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %4, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load i32, i32* @VNMC_BPS, align 4
  %238 = load i32, i32* %4, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %229
  %241 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %242 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %241, i32 0, i32 3
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @RCAR_GEN3, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %263

248:                                              ; preds = %240
  %249 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %250 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i32, i32* @VNMC_DPINE, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %4, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %4, align 4
  br label %262

258:                                              ; preds = %248
  %259 = load i32, i32* @VNMC_DPINE, align 4
  %260 = load i32, i32* %4, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %258, %253
  br label %263

263:                                              ; preds = %262, %240
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load i32, i32* @VNIE_FIE, align 4
  br label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @VNIE_EFE, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, i32* %7, align 4
  %272 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @VNINTS_REG, align 4
  %275 = call i32 @rvin_write(%struct.rvin_dev* %272, i32 %273, i32 %274)
  %276 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @VNIE_REG, align 4
  %279 = call i32 @rvin_write(%struct.rvin_dev* %276, i32 %277, i32 %278)
  %280 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* @VNDMR_REG, align 4
  %283 = call i32 @rvin_write(%struct.rvin_dev* %280, i32 %281, i32 %282)
  %284 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @VNDMR2_REG, align 4
  %287 = call i32 @rvin_write(%struct.rvin_dev* %284, i32 %285, i32 %286)
  %288 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @VNMC_ME, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @VNMC_REG, align 4
  %293 = call i32 @rvin_write(%struct.rvin_dev* %288, i32 %291, i32 %292)
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %270, %220
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @VNDMR2_VLV(i32) #1

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @VNDMR_A8BIT(i32) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
