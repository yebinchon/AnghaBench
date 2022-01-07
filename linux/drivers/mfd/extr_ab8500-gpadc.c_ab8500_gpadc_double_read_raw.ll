; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_double_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_double_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_gpadc = type { i64, i64, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ADC_SW = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ADC_HW = common dso_local global i64 0, align 8
@AB8500_GPADC = common dso_local global i32 0, align 4
@AB8500_GPADC_STAT_REG = common dso_local global i64 0, align 8
@GPADC_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"gpadc_conversion: GPADC busy\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EN_GPADC = common dso_local global i64 0, align 8
@AVG_1 = common dso_local global i64 0, align 8
@AVG_4 = common dso_local global i64 0, align 8
@AVG_8 = common dso_local global i64 0, align 8
@AVG_16 = common dso_local global i64 0, align 8
@AB8500_GPADC_CTRL3_REG = common dso_local global i32 0, align 4
@EN_TRIG_EDGE = common dso_local global i64 0, align 8
@EN_FALLING = common dso_local global i64 0, align 8
@AB8500_GPADC_CTRL2_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"gpadc_conversion: set avg samples failed\0A\00", align 1
@EN_BUF = common dso_local global i64 0, align 8
@EN_ICHAR = common dso_local global i64 0, align 8
@BTEMP_PULL_UP = common dso_local global i64 0, align 8
@AB8500_GPADC_CTRL1_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"gpadc_conversion: set Control register failed\0A\00", align 1
@AB8500_GPADC_AUTO_TIMER_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"gpadc_conversion: trig timer failed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@AB8500_GPADC_AUTODATAL_REG = common dso_local global i64 0, align 8
@AB8500_GPADC_AUTODATAH_REG = common dso_local global i64 0, align 8
@ADC_SW_CONV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"gpadc_conversion: start s/w conv failed\0A\00", align 1
@CONVERSION_TIME = common dso_local global i32 0, align 4
@AB8500_GPADC_MANDATAL_REG = common dso_local global i64 0, align 8
@AB8500_GPADC_MANDATAH_REG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"timeout didn't receive GPADC conv interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"gpadc_conversion: read low data failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"gpadc_conversion: read high data failed\0A\00", align 1
@BAT_CTRL_AND_IBAT = common dso_local global i64 0, align 8
@VBAT_MEAS_AND_IBAT = common dso_local global i64 0, align 8
@VBAT_TRUE_MEAS_AND_IBAT = common dso_local global i64 0, align 8
@BAT_TEMP_AND_IBAT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [55 x i8] c"gpadc_conversion: only SW double conversion supported\0A\00", align 1
@AB8540_GPADC_MANDATA2L_REG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"gpadc_conversion: read sw low data 2 failed\0A\00", align 1
@AB8540_GPADC_MANDATA2H_REG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"gpadc_conversion: read sw high data 2 failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"gpadc_conversion: ibat not stored\0A\00", align 1
@DIS_GPADC = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"gpadc_conversion: disable gpadc failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"gpadc_conversion: Failed to AD convert channel %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab8500_gpadc_double_read_raw(%struct.ab8500_gpadc* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ab8500_gpadc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.ab8500_gpadc* %0, %struct.ab8500_gpadc** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %29 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %30 = icmp ne %struct.ab8500_gpadc* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %421

34:                                               ; preds = %7
  %35 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %36 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @ADC_SW, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %421

46:                                               ; preds = %39, %34
  %47 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %48 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @ADC_HW, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @ENOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %421

58:                                               ; preds = %51, %46
  %59 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %60 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %59, i32 0, i32 3
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %63 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pm_runtime_get_sync(i32 %64)
  br label %66

66:                                               ; preds = %84, %58
  %67 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %68 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AB8500_GPADC, align 4
  %71 = load i64, i64* @AB8500_GPADC_STAT_REG, align 8
  %72 = call i32 @abx500_get_register_interruptible(i32 %69, i32 %70, i64 %71, i64* %19)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %400

76:                                               ; preds = %66
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* @GPADC_BUSY, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %88

82:                                               ; preds = %76
  %83 = call i32 @msleep(i32 20)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %66, label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %17, align 4
  %90 = icmp sge i32 %89, 10
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* @GPADC_BUSY, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %98 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %16, align 4
  br label %400

103:                                              ; preds = %91, %88
  %104 = load i64, i64* @EN_GPADC, align 8
  %105 = load i64, i64* %24, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %24, align 8
  %107 = load i64, i64* %11, align 8
  switch i64 %107, label %120 [
    i64 131, label %108
    i64 130, label %112
    i64 129, label %116
  ]

108:                                              ; preds = %103
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @AVG_1, align 8
  %111 = or i64 %109, %110
  store i64 %111, i64* %19, align 8
  br label %124

112:                                              ; preds = %103
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @AVG_4, align 8
  %115 = or i64 %113, %114
  store i64 %115, i64* %19, align 8
  br label %124

116:                                              ; preds = %103
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @AVG_8, align 8
  %119 = or i64 %117, %118
  store i64 %119, i64* %19, align 8
  br label %124

120:                                              ; preds = %103
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @AVG_16, align 8
  %123 = or i64 %121, %122
  store i64 %123, i64* %19, align 8
  br label %124

124:                                              ; preds = %120, %116, %112, %108
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @ADC_HW, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %130 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @AB8500_GPADC, align 4
  %133 = load i32, i32* @AB8500_GPADC_CTRL3_REG, align 4
  %134 = load i64, i64* %19, align 8
  %135 = call i32 @abx500_set_register_interruptible(i32 %131, i32 %132, i32 %133, i64 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i64, i64* @EN_TRIG_EDGE, align 8
  %137 = load i64, i64* %24, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %24, align 8
  %139 = load i64, i64* %12, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load i64, i64* @EN_FALLING, align 8
  %143 = load i64, i64* %24, align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* %24, align 8
  br label %145

145:                                              ; preds = %141, %128
  br label %154

146:                                              ; preds = %124
  %147 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %148 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @AB8500_GPADC, align 4
  %151 = load i32, i32* @AB8500_GPADC_CTRL2_REG, align 4
  %152 = load i64, i64* %19, align 8
  %153 = call i32 @abx500_set_register_interruptible(i32 %149, i32 %150, i32 %151, i64 %152)
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %146, %145
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %159 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %400

162:                                              ; preds = %154
  %163 = load i64, i64* %10, align 8
  switch i64 %163, label %183 [
    i64 132, label %164
    i64 128, label %164
    i64 133, label %170
  ]

164:                                              ; preds = %162, %162
  %165 = load i64, i64* @EN_BUF, align 8
  %166 = load i64, i64* @EN_ICHAR, align 8
  %167 = or i64 %165, %166
  %168 = load i64, i64* %24, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %24, align 8
  br label %187

170:                                              ; preds = %162
  %171 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %172 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @is_ab8500_2p0_or_earlier(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load i64, i64* @EN_BUF, align 8
  %178 = load i64, i64* @BTEMP_PULL_UP, align 8
  %179 = or i64 %177, %178
  %180 = load i64, i64* %24, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %24, align 8
  store i32 1000, i32* %25, align 4
  store i32 10000, i32* %26, align 4
  br label %187

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %162, %182
  %184 = load i64, i64* @EN_BUF, align 8
  %185 = load i64, i64* %24, align 8
  %186 = or i64 %185, %184
  store i64 %186, i64* %24, align 8
  br label %187

187:                                              ; preds = %183, %176, %164
  %188 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %189 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @AB8500_GPADC, align 4
  %192 = load i32, i32* @AB8500_GPADC_CTRL1_REG, align 4
  %193 = load i64, i64* %24, align 8
  %194 = call i32 @abx500_set_register_interruptible(i32 %190, i32 %191, i32 %192, i64 %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %187
  %198 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %199 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i32, i8*, ...) @dev_err(i32 %200, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %400

202:                                              ; preds = %187
  %203 = load i32, i32* %25, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* %26, align 4
  %208 = call i32 @usleep_range(i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %202
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* @ADC_HW, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %234

213:                                              ; preds = %209
  %214 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %215 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @AB8500_GPADC, align 4
  %218 = load i32, i32* @AB8500_GPADC_AUTO_TIMER_REG, align 4
  %219 = load i64, i64* %13, align 8
  %220 = call i32 @abx500_set_register_interruptible(i32 %216, i32 %217, i32 %218, i64 %219)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %213
  %224 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %225 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i32, i8*, ...) @dev_err(i32 %226, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %400

228:                                              ; preds = %213
  %229 = load i32, i32* @HZ, align 4
  %230 = mul nsw i32 2, %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %18, align 8
  %232 = load i64, i64* @AB8500_GPADC_AUTODATAL_REG, align 8
  store i64 %232, i64* %27, align 8
  %233 = load i64, i64* @AB8500_GPADC_AUTODATAH_REG, align 8
  store i64 %233, i64* %28, align 8
  br label %255

234:                                              ; preds = %209
  %235 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %236 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @AB8500_GPADC, align 4
  %239 = load i32, i32* @AB8500_GPADC_CTRL1_REG, align 4
  %240 = load i32, i32* @ADC_SW_CONV, align 4
  %241 = load i32, i32* @ADC_SW_CONV, align 4
  %242 = call i32 @abx500_mask_and_set_register_interruptible(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  store i32 %242, i32* %16, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %234
  %246 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %247 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i32, i8*, ...) @dev_err(i32 %248, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %400

250:                                              ; preds = %234
  %251 = load i32, i32* @CONVERSION_TIME, align 4
  %252 = call i64 @msecs_to_jiffies(i32 %251)
  store i64 %252, i64* %18, align 8
  %253 = load i64, i64* @AB8500_GPADC_MANDATAL_REG, align 8
  store i64 %253, i64* %27, align 8
  %254 = load i64, i64* @AB8500_GPADC_MANDATAH_REG, align 8
  store i64 %254, i64* %28, align 8
  br label %255

255:                                              ; preds = %250, %228
  %256 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %257 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %256, i32 0, i32 4
  %258 = load i64, i64* %18, align 8
  %259 = call i32 @wait_for_completion_timeout(i32* %257, i64 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %255
  %262 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %263 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (i32, i8*, ...) @dev_err(i32 %264, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* @EINVAL, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %16, align 4
  br label %400

268:                                              ; preds = %255
  %269 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %270 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @AB8500_GPADC, align 4
  %273 = load i64, i64* %27, align 8
  %274 = call i32 @abx500_get_register_interruptible(i32 %271, i32 %272, i64 %273, i64* %20)
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %268
  %278 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %279 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, i8*, ...) @dev_err(i32 %280, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %400

282:                                              ; preds = %268
  %283 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %284 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @AB8500_GPADC, align 4
  %287 = load i64, i64* %28, align 8
  %288 = call i32 @abx500_get_register_interruptible(i32 %285, i32 %286, i64 %287, i64* %21)
  store i32 %288, i32* %16, align 4
  %289 = load i32, i32* %16, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %282
  %292 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %293 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i32, i8*, ...) @dev_err(i32 %294, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %400

296:                                              ; preds = %282
  %297 = load i64, i64* %10, align 8
  %298 = load i64, i64* @BAT_CTRL_AND_IBAT, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %312, label %300

300:                                              ; preds = %296
  %301 = load i64, i64* %10, align 8
  %302 = load i64, i64* @VBAT_MEAS_AND_IBAT, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %312, label %304

304:                                              ; preds = %300
  %305 = load i64, i64* %10, align 8
  %306 = load i64, i64* @VBAT_TRUE_MEAS_AND_IBAT, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %312, label %308

308:                                              ; preds = %304
  %309 = load i64, i64* %10, align 8
  %310 = load i64, i64* @BAT_TEMP_AND_IBAT, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %368

312:                                              ; preds = %308, %304, %300, %296
  %313 = load i64, i64* %14, align 8
  %314 = load i64, i64* @ADC_HW, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %312
  %317 = load i32, i32* @ENOTSUPP, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %16, align 4
  %319 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %320 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (i32, i8*, ...) @dev_err(i32 %321, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  br label %400

323:                                              ; preds = %312
  %324 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %325 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @AB8500_GPADC, align 4
  %328 = load i64, i64* @AB8540_GPADC_MANDATA2L_REG, align 8
  %329 = call i32 @abx500_get_register_interruptible(i32 %326, i32 %327, i64 %328, i64* %22)
  store i32 %329, i32* %16, align 4
  %330 = load i32, i32* %16, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %323
  %333 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %334 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 (i32, i8*, ...) @dev_err(i32 %335, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %400

337:                                              ; preds = %323
  %338 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %339 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @AB8500_GPADC, align 4
  %342 = load i64, i64* @AB8540_GPADC_MANDATA2H_REG, align 8
  %343 = call i32 @abx500_get_register_interruptible(i32 %340, i32 %341, i64 %342, i64* %23)
  store i32 %343, i32* %16, align 4
  %344 = load i32, i32* %16, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %337
  %347 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %348 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (i32, i8*, ...) @dev_err(i32 %349, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %400

351:                                              ; preds = %337
  %352 = load i32*, i32** %15, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = load i64, i64* %23, align 8
  %356 = shl i64 %355, 8
  %357 = load i64, i64* %22, align 8
  %358 = or i64 %356, %357
  %359 = trunc i64 %358 to i32
  %360 = load i32*, i32** %15, align 8
  store i32 %359, i32* %360, align 4
  br label %366

361:                                              ; preds = %351
  %362 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %363 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @dev_warn(i32 %364, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %366

366:                                              ; preds = %361, %354
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367, %308
  %369 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %370 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @AB8500_GPADC, align 4
  %373 = load i32, i32* @AB8500_GPADC_CTRL1_REG, align 4
  %374 = load i64, i64* @DIS_GPADC, align 8
  %375 = call i32 @abx500_set_register_interruptible(i32 %371, i32 %372, i32 %373, i64 %374)
  store i32 %375, i32* %16, align 4
  %376 = load i32, i32* %16, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %368
  %379 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %380 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = call i32 (i32, i8*, ...) @dev_err(i32 %381, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %400

383:                                              ; preds = %368
  %384 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %385 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @pm_runtime_mark_last_busy(i32 %386)
  %388 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %389 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @pm_runtime_put_autosuspend(i32 %390)
  %392 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %393 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %392, i32 0, i32 3
  %394 = call i32 @mutex_unlock(i32* %393)
  %395 = load i64, i64* %21, align 8
  %396 = shl i64 %395, 8
  %397 = load i64, i64* %20, align 8
  %398 = or i64 %396, %397
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %8, align 4
  br label %421

400:                                              ; preds = %378, %346, %332, %316, %291, %277, %261, %245, %223, %197, %157, %96, %75
  %401 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %402 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @AB8500_GPADC, align 4
  %405 = load i32, i32* @AB8500_GPADC_CTRL1_REG, align 4
  %406 = load i64, i64* @DIS_GPADC, align 8
  %407 = call i32 @abx500_set_register_interruptible(i32 %403, i32 %404, i32 %405, i64 %406)
  %408 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %409 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @pm_runtime_put(i32 %410)
  %412 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %413 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %412, i32 0, i32 3
  %414 = call i32 @mutex_unlock(i32* %413)
  %415 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %416 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = load i64, i64* %10, align 8
  %419 = call i32 (i32, i8*, ...) @dev_err(i32 %417, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i64 %418)
  %420 = load i32, i32* %16, align 4
  store i32 %420, i32* %8, align 4
  br label %421

421:                                              ; preds = %400, %383, %55, %43, %31
  %422 = load i32, i32* %8, align 4
  ret i32 %422
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i64, i64*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i64) #1

declare dso_local i32 @is_ab8500_2p0_or_earlier(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
