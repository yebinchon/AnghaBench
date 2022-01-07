; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp3400c_carrier_detect = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@msp_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"msp3400 daemon started\0A\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"msp3400 thread: sleep\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"msp3400 thread: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"thread: restart scan\0A\00", align 1
@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"thread: no carrier scan\0A\00", align 1
@MSP_MODE_AM_DETECT = common dso_local global i32 0, align 4
@msp3400c_carrier_detect_main = common dso_local global %struct.msp3400c_carrier_detect* null, align 8
@msp_amsound = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AM sound override\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"carrier1 val: %5d / %s\0A\00", align 1
@msp3400c_carrier_detect_55 = common dso_local global %struct.msp3400c_carrier_detect* null, align 8
@msp3400c_carrier_detect_65 = common dso_local global %struct.msp3400c_carrier_detect* null, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"carrier2 val: %5d / %s\0A\00", align 1
@V4L2_STD_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_H = common dso_local global i32 0, align 4
@MSP_MODE_FM_TERRA = common dso_local global i32 0, align 4
@MSP_MODE_FM_NICAM1 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@MSP_MODE_FM_NICAM2 = common dso_local global i32 0, align 4
@V4L2_STD_DK = common dso_local global i8* null, align 8
@MSP_MODE_AM_NICAM = common dso_local global i32 0, align 4
@V4L2_STD_L = common dso_local global i32 0, align 4
@V4L2_STD_MN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp3400c_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca %struct.msp3400c_carrier_detect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.i2c_client*
  store %struct.i2c_client* %14, %struct.i2c_client** %3, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = call i32 @i2c_get_clientdata(%struct.i2c_client* %15)
  %17 = call %struct.msp_state* @to_state(i32 %16)
  store %struct.msp_state* %17, %struct.msp_state** %4, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i64, i64* @msp_debug, align 8
  %21 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %19, i32 1, i64 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @V4L2_STD_ALL, align 4
  %23 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %24 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 (...) @set_freezable()
  br label %26

26:                                               ; preds = %449, %58, %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i64, i64* @msp_debug, align 8
  %30 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %28, i32 2, i64 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %32 = call i64 @msp_sleep(%struct.msp_state* %31, i32 -1)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i64, i64* @msp_debug, align 8
  %36 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %34, i32 2, i64 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %439, %201, %124, %82, %26
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i64, i64* @msp_debug, align 8
  %41 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %39, i32 2, i64 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %43 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %42, i32 0, i32 10
  store i64 0, i64* %43, align 8
  %44 = call i64 (...) @kthread_should_stop()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %450

47:                                               ; preds = %37
  %48 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %49 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %54 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %55 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52, %47
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i64, i64* @msp_debug, align 8
  %62 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %60, i32 1, i64 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %64 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %66 = call i32 @msp_update_volume(%struct.msp_state* %65)
  br label %26

67:                                               ; preds = %52
  %68 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %69 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %71 = call i32 @msp_update_volume(%struct.msp_state* %70)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %73 = load i32, i32* @MSP_MODE_AM_DETECT, align 4
  %74 = call i32 @msp3400c_set_mode(%struct.i2c_client* %72, i32 %73)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %75 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %76 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %78 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %77, i32 0, i32 4
  store i32 0, i32* %78, align 8
  %79 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %80 = call i64 @msp_sleep(%struct.msp_state* %79, i32 200)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %37

83:                                               ; preds = %67
  %84 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  store %struct.msp3400c_carrier_detect* %84, %struct.msp3400c_carrier_detect** %5, align 8
  %85 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i64, i64* @msp_amsound, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %91 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @V4L2_STD_SECAM, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  store i32 3, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i64, i64* @msp_debug, align 8
  %100 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %98, i32 1, i64 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %89, %83
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %152, %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %155

106:                                              ; preds = %102
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %108, i64 %110
  %112 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %114, i64 %116
  %118 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %107, i32 %113, i32 %119)
  %121 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %122 = call i64 @msp_sleep(%struct.msp_state* %121, i32 100)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %106
  br label %37

125:                                              ; preds = %106
  %126 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %127 = call i32 @msp_read_dsp(%struct.i2c_client* %126, i32 27)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp sgt i32 %128, 32767
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 65536
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %137, %133
  %141 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load i64, i64* @msp_debug, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %145, i64 %147
  %149 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %142, i32 1, i64 %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %150)
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %102

155:                                              ; preds = %102
  %156 = load i32, i32* %7, align 4
  switch i32 %156, label %166 [
    i32 1, label %157
    i32 3, label %161
    i32 0, label %165
    i32 2, label %165
  ]

157:                                              ; preds = %155
  %158 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  store %struct.msp3400c_carrier_detect* %158, %struct.msp3400c_carrier_detect** %5, align 8
  %159 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  %160 = call i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect* %159)
  store i32 %160, i32* %6, align 4
  br label %167

161:                                              ; preds = %155
  %162 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  store %struct.msp3400c_carrier_detect* %162, %struct.msp3400c_carrier_detect** %5, align 8
  %163 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %164 = call i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect* %163)
  store i32 %164, i32* %6, align 4
  br label %167

165:                                              ; preds = %155, %155
  br label %166

166:                                              ; preds = %155, %165
  store %struct.msp3400c_carrier_detect* null, %struct.msp3400c_carrier_detect** %5, align 8
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %166, %161, %157
  %168 = load i64, i64* @msp_amsound, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %172 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @V4L2_STD_SECAM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store %struct.msp3400c_carrier_detect* null, %struct.msp3400c_carrier_detect** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %177, %170, %167
  store i32 0, i32* %12, align 4
  br label %179

179:                                              ; preds = %229, %178
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %232

183:                                              ; preds = %179
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %185, i64 %187
  %189 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %191, i64 %193
  %195 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %184, i32 %190, i32 %196)
  %198 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %199 = call i64 @msp_sleep(%struct.msp_state* %198, i32 100)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %183
  br label %37

202:                                              ; preds = %183
  %203 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %204 = call i32 @msp_read_dsp(%struct.i2c_client* %203, i32 27)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp sgt i32 %205, 32767
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* %11, align 4
  %209 = sub nsw i32 %208, 65536
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %214, %210
  %218 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = load i64, i64* @msp_debug, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %222, i64 %224
  %226 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %219, i32 1, i64 %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %221, i32 %227)
  br label %229

229:                                              ; preds = %217
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %179

232:                                              ; preds = %179
  %233 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %233, i64 %235
  %237 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %240 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* %7, align 4
  switch i32 %241, label %392 [
    i32 1, label %242
    i32 2, label %291
    i32 3, label %305
    i32 0, label %388
  ]

242:                                              ; preds = %232
  %243 = load i32, i32* @V4L2_STD_BG, align 4
  %244 = load i32, i32* @V4L2_STD_PAL_H, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %247 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* %8, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %242
  %251 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %251, i64 %253
  %255 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %258 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %257, i32 0, i32 7
  store i32 %256, i32* %258, align 4
  %259 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %260 = load i32, i32* @MSP_MODE_FM_TERRA, align 4
  %261 = call i32 @msp3400c_set_mode(%struct.i2c_client* %259, i32 %260)
  %262 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %263 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %262, i32 0, i32 3
  store i32 1, i32* %263, align 4
  br label %290

264:                                              ; preds = %242
  %265 = load i32, i32* %8, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %288

267:                                              ; preds = %264
  %268 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %269 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %267
  %273 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %273, i64 %275
  %277 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %280 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %279, i32 0, i32 7
  store i32 %278, i32* %280, align 4
  %281 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %282 = load i32, i32* @MSP_MODE_FM_NICAM1, align 4
  %283 = call i32 @msp3400c_set_mode(%struct.i2c_client* %281, i32 %282)
  %284 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %285 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %284, i32 0, i32 4
  store i32 1, i32* %285, align 8
  %286 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %287 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %286, i32 0, i32 3
  store i32 1, i32* %287, align 4
  br label %289

288:                                              ; preds = %267, %264
  br label %393

289:                                              ; preds = %272
  br label %290

290:                                              ; preds = %289, %250
  br label %405

291:                                              ; preds = %232
  %292 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %293 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %294 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = call i32 @MSP_CARRIER(double 6.552000e+00)
  %296 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %297 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %296, i32 0, i32 7
  store i32 %295, i32* %297, align 4
  %298 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %299 = load i32, i32* @MSP_MODE_FM_NICAM2, align 4
  %300 = call i32 @msp3400c_set_mode(%struct.i2c_client* %298, i32 %299)
  %301 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %302 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %301, i32 0, i32 4
  store i32 1, i32* %302, align 8
  %303 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %304 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %303, i32 0, i32 3
  store i32 1, i32* %304, align 4
  br label %405

305:                                              ; preds = %232
  %306 = load i32, i32* %8, align 4
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %8, align 4
  %310 = icmp eq i32 %309, 2
  br i1 %310, label %311, label %329

311:                                              ; preds = %308, %305
  %312 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %313 = load i32, i32* %8, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %312, i64 %314
  %316 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %319 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %318, i32 0, i32 7
  store i32 %317, i32* %319, align 4
  %320 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %321 = load i32, i32* @MSP_MODE_FM_TERRA, align 4
  %322 = call i32 @msp3400c_set_mode(%struct.i2c_client* %320, i32 %321)
  %323 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %324 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %323, i32 0, i32 3
  store i32 1, i32* %324, align 4
  %325 = load i8*, i8** @V4L2_STD_DK, align 8
  %326 = ptrtoint i8* %325 to i32
  %327 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %328 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 8
  br label %387

329:                                              ; preds = %308
  %330 = load i32, i32* %8, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %356

332:                                              ; preds = %329
  %333 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %334 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @V4L2_STD_SECAM, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %332
  %340 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %340, i64 %342
  %344 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %347 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %346, i32 0, i32 7
  store i32 %345, i32* %347, align 4
  %348 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %349 = load i32, i32* @MSP_MODE_AM_NICAM, align 4
  %350 = call i32 @msp3400c_set_mode(%struct.i2c_client* %348, i32 %349)
  %351 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %352 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %351, i32 0, i32 3
  store i32 1, i32* %352, align 4
  %353 = load i32, i32* @V4L2_STD_L, align 4
  %354 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %355 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 8
  br label %386

356:                                              ; preds = %332, %329
  %357 = load i32, i32* %8, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %384

359:                                              ; preds = %356
  %360 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %361 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %360, i32 0, i32 8
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %384

364:                                              ; preds = %359
  %365 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %365, i64 %367
  %369 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %372 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %371, i32 0, i32 7
  store i32 %370, i32* %372, align 4
  %373 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %374 = load i32, i32* @MSP_MODE_FM_NICAM1, align 4
  %375 = call i32 @msp3400c_set_mode(%struct.i2c_client* %373, i32 %374)
  %376 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %377 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %376, i32 0, i32 4
  store i32 1, i32* %377, align 8
  %378 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %379 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %378, i32 0, i32 3
  store i32 1, i32* %379, align 4
  %380 = load i8*, i8** @V4L2_STD_DK, align 8
  %381 = ptrtoint i8* %380 to i32
  %382 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %383 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %382, i32 0, i32 0
  store i32 %381, i32* %383, align 8
  br label %385

384:                                              ; preds = %359, %356
  br label %393

385:                                              ; preds = %364
  br label %386

386:                                              ; preds = %385, %339
  br label %387

387:                                              ; preds = %386, %311
  br label %405

388:                                              ; preds = %232
  %389 = load i32, i32* @V4L2_STD_MN, align 4
  %390 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %391 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %232, %388
  br label %393

393:                                              ; preds = %392, %384, %288
  %394 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  %395 = load i32, i32* %7, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %394, i64 %396
  %398 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %401 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %400, i32 0, i32 7
  store i32 %399, i32* %401, align 4
  %402 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %403 = load i32, i32* @MSP_MODE_FM_TERRA, align 4
  %404 = call i32 @msp3400c_set_mode(%struct.i2c_client* %402, i32 %403)
  br label %405

405:                                              ; preds = %393, %387, %291, %290
  %406 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %407 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %408 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %411 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %410, i32 0, i32 6
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %406, i32 %409, i32 %412)
  %414 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %415 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %414, i32 0, i32 2
  store i32 0, i32* %415, align 8
  %416 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %417 = call i32 @msp3400c_set_audmode(%struct.i2c_client* %416)
  %418 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %419 = call i32 @msp_update_volume(%struct.msp_state* %418)
  %420 = load i64, i64* @msp_debug, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %405
  %423 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %424 = call i32 @msp3400c_print_mode(%struct.i2c_client* %423)
  br label %425

425:                                              ; preds = %422, %405
  store i32 3, i32* %6, align 4
  br label %426

426:                                              ; preds = %446, %425
  %427 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %428 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %449

431:                                              ; preds = %426
  %432 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %433 = load i32, i32* %6, align 4
  %434 = icmp ne i32 %433, 0
  %435 = zext i1 %434 to i64
  %436 = select i1 %434, i32 1000, i32 5000
  %437 = call i64 @msp_sleep(%struct.msp_state* %432, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %431
  br label %37

440:                                              ; preds = %431
  %441 = load i32, i32* %6, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %440
  %444 = load i32, i32* %6, align 4
  %445 = add nsw i32 %444, -1
  store i32 %445, i32* %6, align 4
  br label %446

446:                                              ; preds = %443, %440
  %447 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %448 = call i32 @watch_stereo(%struct.i2c_client* %447)
  br label %426

449:                                              ; preds = %426
  br label %26

450:                                              ; preds = %46
  %451 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %452 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %451, i32 0, i32 0
  %453 = load i64, i64* @msp_debug, align 8
  %454 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %452, i32 1, i64 %453, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i64, i8*, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @msp_sleep(%struct.msp_state*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp3400c_set_mode(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect*) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_read_dsp(%struct.i2c_client*, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp3400c_set_audmode(%struct.i2c_client*) #1

declare dso_local i32 @msp3400c_print_mode(%struct.i2c_client*) #1

declare dso_local i32 @watch_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
