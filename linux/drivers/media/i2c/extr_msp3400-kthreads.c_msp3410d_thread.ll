; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3410d_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3410d_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i64 }

@msp_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"msp3410 daemon started\0A\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"msp3410 thread: sleep\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"msp3410 thread: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"thread: restart scan\0A\00", align 1
@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"thread: no carrier scan\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"setting standard: %s (0x%04x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"detection still in progress\0A\00", align 1
@msp_stdlist = common dso_local global %struct.TYPE_2__* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"current standard: %s (0x%04x)\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@msp_amsound = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c"autodetection failed, switching to backup standard: %s (0x%04x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@MSP_MODE_FM_NICAM2 = common dso_local global i64 0, align 8
@MSP_MODE_FM_NICAM1 = common dso_local global i64 0, align 8
@MSP_MODE_AM_NICAM = common dso_local global i64 0, align 8
@MSP_MODE_BTSC = common dso_local global i64 0, align 8
@MSP_MODE_FM_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@MSP_MODE_FM_TERRA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp3410d_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.i2c_client*
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call i32 @i2c_get_clientdata(%struct.i2c_client* %11)
  %13 = call %struct.msp_state* @to_state(i32 %12)
  store %struct.msp_state* %13, %struct.msp_state** %4, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i64, i64* @msp_debug, align 8
  %17 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %15, i32 1, i64 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @V4L2_STD_ALL, align 4
  %19 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %20 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = call i32 (...) @set_freezable()
  br label %22

22:                                               ; preds = %327, %49, %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i64, i64* @msp_debug, align 8
  %26 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %24, i32 2, i64 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %28 = call i64 @msp_sleep(%struct.msp_state* %27, i32 -1)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i64, i64* @msp_debug, align 8
  %32 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %30, i32 2, i64 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %317, %110, %85, %22
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i64, i64* @msp_debug, align 8
  %37 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %35, i32 2, i64 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %39 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %38, i32 0, i32 14
  store i64 0, i64* %39, align 8
  %40 = call i64 (...) @kthread_should_stop()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %328

43:                                               ; preds = %33
  %44 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %45 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i64, i64* @msp_debug, align 8
  %53 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %51, i32 1, i64 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %55 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %57 = call i32 @msp_update_volume(%struct.msp_state* %56)
  br label %22

58:                                               ; preds = %43
  %59 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %60 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %62 = call i32 @msp_update_volume(%struct.msp_state* %61)
  %63 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %64 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %63, i32 0, i32 11
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 64, i32* %7, align 4
  br label %77

68:                                               ; preds = %58
  %69 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %70 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V4L2_STD_NTSC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 32, i32 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68, %67
  %78 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %79 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %78, i32 0, i32 3
  store i32 0, i32* %79, align 8
  %80 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %81 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %80, i32 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %83 = call i64 @msp_sleep(%struct.msp_state* %82, i32 200)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %33

86:                                               ; preds = %77
  %87 = load i64, i64* @msp_debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i64, i64* @msp_debug, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @msp_standard_std_name(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %91, i32 2, i64 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %86
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %5, align 4
  br label %123

102:                                              ; preds = %97
  %103 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @msp_write_dem(%struct.i2c_client* %103, i32 32, i32 %104)
  br label %106

106:                                              ; preds = %117, %102
  %107 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %108 = call i64 @msp_sleep(%struct.msp_state* %107, i32 100)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %33

111:                                              ; preds = %106
  %112 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %113 = call i32 @msp_read_dem(%struct.i2c_client* %112, i32 126)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 2047
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %122

117:                                              ; preds = %111
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i64, i64* @msp_debug, align 8
  %121 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %119, i32 2, i64 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %106

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %100
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %146

132:                                              ; preds = %124
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %146

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %124

146:                                              ; preds = %141, %124
  %147 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load i64, i64* @msp_debug, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @msp_standard_std_name(i32 %150)
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %148, i32 1, i64 %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %161 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %160, i32 0, i32 13
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %169 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %168, i32 0, i32 12
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %172 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %174 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %175 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %174, i32 0, i32 9
  store i32 %173, i32* %175, align 8
  %176 = load i64, i64* @msp_amsound, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %217

178:                                              ; preds = %146
  %179 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %180 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %179, i32 0, i32 11
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %217, label %183

183:                                              ; preds = %178
  %184 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %185 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @V4L2_STD_SECAM, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %217

190:                                              ; preds = %183
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 9
  br i1 %192, label %193, label %217

193:                                              ; preds = %190
  %194 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load i64, i64* @msp_debug, align 8
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  br label %208

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207, %202
  %209 = phi i8* [ %206, %202 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %207 ]
  %210 = load i32, i32* %5, align 4
  %211 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %195, i32 1, i64 %196, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i8* %209, i32 %210)
  store i32 9, i32* %5, align 4
  %212 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %213 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %212, i32 0, i32 5
  store i32 9, i32* %213, align 8
  %214 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @msp_write_dem(%struct.i2c_client* %214, i32 32, i32 %215)
  br label %224

217:                                              ; preds = %190, %183, %178, %146
  %218 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %219 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @msp_standard_std(i32 %220)
  %222 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %223 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %222, i32 0, i32 10
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %217, %208
  %225 = load i32, i32* %5, align 4
  switch i32 %225, label %274 [
    i32 8, label %226
    i32 10, label %226
    i32 11, label %226
    i32 9, label %242
    i32 32, label %250
    i32 64, label %254
    i32 2, label %268
    i32 3, label %268
    i32 4, label %268
    i32 5, label %268
  ]

226:                                              ; preds = %224, %224, %224
  %227 = load i32, i32* %5, align 4
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i64, i64* @MSP_MODE_FM_NICAM2, align 8
  %231 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %232 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  br label %237

233:                                              ; preds = %226
  %234 = load i64, i64* @MSP_MODE_FM_NICAM1, align 8
  %235 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %236 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %233, %229
  %238 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %239 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %238, i32 0, i32 4
  store i32 1, i32* %239, align 4
  %240 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %241 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %240, i32 0, i32 3
  store i32 1, i32* %241, align 8
  br label %274

242:                                              ; preds = %224
  %243 = load i64, i64* @MSP_MODE_AM_NICAM, align 8
  %244 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %245 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %247 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %246, i32 0, i32 4
  store i32 1, i32* %247, align 4
  %248 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %249 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %248, i32 0, i32 3
  store i32 1, i32* %249, align 8
  br label %274

250:                                              ; preds = %224
  %251 = load i64, i64* @MSP_MODE_BTSC, align 8
  %252 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %253 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %274

254:                                              ; preds = %224
  %255 = load i64, i64* @MSP_MODE_FM_RADIO, align 8
  %256 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %257 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  %258 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %259 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %260 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %259, i32 0, i32 9
  store i32 %258, i32* %260, align 8
  %261 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %262 = load i64, i64* @MSP_MODE_FM_RADIO, align 8
  %263 = call i32 @msp3400c_set_mode(%struct.i2c_client* %261, i64 %262)
  %264 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %265 = call i32 @MSP_CARRIER(double 1.070000e+01)
  %266 = call i32 @MSP_CARRIER(double 1.070000e+01)
  %267 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %264, i32 %265, i32 %266)
  br label %274

268:                                              ; preds = %224, %224, %224, %224
  %269 = load i64, i64* @MSP_MODE_FM_TERRA, align 8
  %270 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %271 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  %272 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %273 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %272, i32 0, i32 3
  store i32 1, i32* %273, align 8
  br label %274

274:                                              ; preds = %224, %268, %254, %250, %242, %237
  %275 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %276 = call i32 @msp_write_dsp(%struct.i2c_client* %275, i32 13, i32 6400)
  %277 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %278 = call i32 @msp_write_dsp(%struct.i2c_client* %277, i32 14, i32 12288)
  %279 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %280 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %279, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %274
  %284 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %285 = call i32 @msp_write_dsp(%struct.i2c_client* %284, i32 16, i32 23040)
  br label %286

286:                                              ; preds = %283, %274
  %287 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %288 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %287, i32 0, i32 7
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %286
  %292 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %293 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %294 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @msp_write_dem(%struct.i2c_client* %292, i32 64, i32 %295)
  br label %297

297:                                              ; preds = %291, %286
  %298 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %299 = call i32 @msp3400c_set_audmode(%struct.i2c_client* %298)
  %300 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %301 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %300, i32 0, i32 1
  store i32 0, i32* %301, align 8
  %302 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %303 = call i32 @msp_update_volume(%struct.msp_state* %302)
  store i32 3, i32* %8, align 4
  br label %304

304:                                              ; preds = %324, %297
  %305 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %306 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %327

309:                                              ; preds = %304
  %310 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i32 1000, i32 5000
  %315 = call i64 @msp_sleep(%struct.msp_state* %310, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %33

318:                                              ; preds = %309
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load i32, i32* %8, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %8, align 4
  br label %324

324:                                              ; preds = %321, %318
  %325 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %326 = call i32 @watch_stereo(%struct.i2c_client* %325)
  br label %304

327:                                              ; preds = %304
  br label %22

328:                                              ; preds = %42
  %329 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %330 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %329, i32 0, i32 0
  %331 = load i64, i64* @msp_debug, align 8
  %332 = call i32 (i32*, i32, i64, i8*, ...) @dev_dbg_lvl(i32* %330, i32 1, i64 %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i64, i8*, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @msp_sleep(%struct.msp_state*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp_standard_std_name(i32) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp_standard_std(i32) #1

declare dso_local i32 @msp3400c_set_mode(%struct.i2c_client*, i64) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp3400c_set_audmode(%struct.i2c_client*) #1

declare dso_local i32 @watch_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
