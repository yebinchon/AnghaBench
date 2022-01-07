; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_set_audmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_set_audmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64, i32, i32, i32 }

@msp3400c_set_audmode.strmode = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lang2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lang1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"lang1+lang2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@OPMODE_AUTOSELECT = common dso_local global i64 0, align 8
@msp_debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"set_audmode called with mode=%d instead of set_source (ignored)\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"FM set_audmode: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SAT set_audmode: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"NICAM set_audmode: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"BTSC set_audmode: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"extern set_audmode: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"FM-Radio set_audmode: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"mono set_audmode\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"set audmode %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"switching to AM mono\0A\00", align 1
@SCART_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"set_audmode final source/matrix = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @msp3400c_set_audmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp3400c_set_audmode(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i32 @i2c_get_clientdata(%struct.i2c_client* %7)
  %9 = call %struct.msp_state* @to_state(i32 %8)
  store %struct.msp_state* %9, %struct.msp_state** %3, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %16 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %21 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* @msp3400c_set_audmode.strmode, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %14, %1
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i8* [ %25, %19 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %26 ]
  store i8* %28, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %29 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %30 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %33 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OPMODE_AUTOSELECT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* @msp_debug, align 4
  %41 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %42 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %39, i32 1, i32 %40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  br label %205

45:                                               ; preds = %27
  %46 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %47 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 138
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %52 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 129, i32* %6, align 4
  br label %78

57:                                               ; preds = %50
  %58 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %59 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %64
  store i32 132, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %67
  br label %77

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 129
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 128, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %71
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %45
  %80 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %81 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %155 [
    i32 133, label %83
    i32 134, label %97
    i32 137, label %125
    i32 136, label %125
    i32 140, label %125
    i32 139, label %137
    i32 138, label %143
    i32 135, label %149
  ]

83:                                               ; preds = %79
  %84 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* @msp_debug, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %85, i32 1, i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* %6, align 4
  switch i32 %89, label %96 [
    i32 128, label %90
    i32 129, label %93
    i32 132, label %93
    i32 130, label %93
    i32 131, label %93
  ]

90:                                               ; preds = %83
  %91 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %92 = call i32 @msp_write_dsp(%struct.i2c_client* %91, i32 14, i32 12289)
  br label %96

93:                                               ; preds = %83, %83, %83, %83
  %94 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %95 = call i32 @msp_write_dsp(%struct.i2c_client* %94, i32 14, i32 12288)
  br label %96

96:                                               ; preds = %83, %93, %90
  br label %160

97:                                               ; preds = %79
  %98 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* @msp_debug, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %99, i32 1, i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* %6, align 4
  switch i32 %103, label %124 [
    i32 129, label %104
    i32 128, label %109
    i32 131, label %109
    i32 132, label %114
    i32 130, label %119
  ]

104:                                              ; preds = %97
  %105 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %106 = call i32 @MSP_CARRIER(double 6.500000e+00)
  %107 = call i32 @MSP_CARRIER(double 6.500000e+00)
  %108 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %105, i32 %106, i32 %107)
  br label %124

109:                                              ; preds = %97, %97
  %110 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %111 = call i32 @MSP_CARRIER(double 7.200000e+00)
  %112 = call i32 @MSP_CARRIER(double 0x401C147AE147AE14)
  %113 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %110, i32 %111, i32 %112)
  br label %124

114:                                              ; preds = %97
  %115 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %116 = call i32 @MSP_CARRIER(double 7.380000e+00)
  %117 = call i32 @MSP_CARRIER(double 0x401C147AE147AE14)
  %118 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %115, i32 %116, i32 %117)
  br label %124

119:                                              ; preds = %97
  %120 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %121 = call i32 @MSP_CARRIER(double 7.380000e+00)
  %122 = call i32 @MSP_CARRIER(double 0x401C147AE147AE14)
  %123 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %97, %119, %114, %109, %104
  br label %160

125:                                              ; preds = %79, %79, %79
  %126 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = load i32, i32* @msp_debug, align 4
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %127, i32 1, i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %129)
  %131 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %132 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  store i32 256, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %125
  br label %160

137:                                              ; preds = %79
  %138 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i32, i32* @msp_debug, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %139, i32 1, i32 %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %141)
  br label %160

143:                                              ; preds = %79
  %144 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* @msp_debug, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %145, i32 1, i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %147)
  store i32 512, i32* %5, align 4
  br label %160

149:                                              ; preds = %79
  %150 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 0
  %152 = load i32, i32* @msp_debug, align 4
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %151, i32 1, i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %153)
  br label %160

155:                                              ; preds = %79
  %156 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = load i32, i32* @msp_debug, align 4
  %159 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %157, i32 1, i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %205

160:                                              ; preds = %149, %143, %137, %136, %124, %96
  %161 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load i32, i32* @msp_debug, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %162, i32 1, i32 %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %6, align 4
  switch i32 %166, label %196 [
    i32 128, label %167
    i32 131, label %167
    i32 129, label %170
    i32 132, label %192
    i32 130, label %193
  ]

167:                                              ; preds = %160, %160
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, 32
  store i32 %169, i32* %5, align 4
  br label %196

170:                                              ; preds = %160
  %171 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %172 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 140
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = load i32, i32* @msp_debug, align 4
  %179 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %177, i32 1, i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %180 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %181 = load i32, i32* @SCART_MONO, align 4
  %182 = call i32 @msp_set_scart(%struct.i2c_client* %180, i32 %181, i32 0)
  store i32 512, i32* %5, align 4
  br label %196

183:                                              ; preds = %170
  %184 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %185 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  store i32 48, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %183
  br label %196

192:                                              ; preds = %160
  br label %196

193:                                              ; preds = %160
  %194 = load i32, i32* %5, align 4
  %195 = or i32 %194, 16
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %160, %193, %192, %191, %175, %167
  %197 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load i32, i32* @msp_debug, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %198, i32 1, i32 %199, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %200)
  %202 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @msp_set_source(%struct.i2c_client* %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %155, %37
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp_set_scart(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_set_source(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
