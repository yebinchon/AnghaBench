; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32, i32 }

@CX25840_COMPOSITE1 = common dso_local global i32 0, align 4
@CX25840_COMPOSITE8 = common dso_local global i32 0, align 4
@CX25840_COMPONENT_ON = common dso_local global i32 0, align 4
@CX25840_DIF_ON = common dso_local global i32 0, align 4
@CX25840_SVIDEO_ON = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"decoder set video input %d, audio input %d\0A\00", align 1
@CX25840_VIN1_CH1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"vid_input 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mux cfg 0x%x comp=%d\0A\00", align 1
@CX25840_SVIDEO_LUMA1 = common dso_local global i32 0, align 4
@CX25840_SVIDEO_LUMA8 = common dso_local global i32 0, align 4
@CX25840_SVIDEO_CHROMA4 = common dso_local global i32 0, align 4
@CX25840_SVIDEO_CHROMA8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"0x%04x is not a valid video input!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CX25840_SVIDEO_CHROMA7 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"0x%04x is not a valid audio input!\0A\00", align 1
@AFE_CTRL = common dso_local global i32 0, align 4
@MODE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx25840_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = call i32 @i2c_get_clientdata(%struct.i2c_client* %17)
  %19 = call %struct.cx25840_state* @to_state(i32 %18)
  store %struct.cx25840_state* %19, %struct.cx25840_state** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CX25840_COMPOSITE8, align 4
  %26 = icmp ule i32 %24, %25
  br label %27

27:                                               ; preds = %23, %3
  %28 = phi i1 [ false, %3 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CX25840_COMPONENT_ON, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @CX25840_COMPONENT_ON, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CX25840_DIF_ON, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CX25840_DIF_ON, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CX25840_SVIDEO_ON, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CX25840_SVIDEO_ON, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 240
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 3840
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @cx25840_debug, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %52, %struct.i2c_client* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CX25840_VIN1_CH1, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %27
  %61 = load i32, i32* @cx25840_debug, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %61, %struct.i2c_client* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 255
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CX25840_SVIDEO_ON, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @CX25840_SVIDEO_ON, align 4
  %74 = icmp ne i32 %72, %73
  br label %75

75:                                               ; preds = %69, %60
  %76 = phi i1 [ false, %60 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @cx25840_debug, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %78, %struct.i2c_client* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  br label %146

83:                                               ; preds = %27
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %89 = sub i32 %87, %88
  %90 = add i32 240, %89
  store i32 %90, i32* %15, align 4
  br label %145

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, -4081
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @CX25840_SVIDEO_LUMA1, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @CX25840_SVIDEO_LUMA8, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @CX25840_SVIDEO_CHROMA4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @CX25840_SVIDEO_CHROMA8, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107, %103, %99, %95, %91
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @v4l_err(%struct.i2c_client* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %481

117:                                              ; preds = %107
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @CX25840_SVIDEO_LUMA1, align 4
  %120 = sub nsw i32 %118, %119
  %121 = ashr i32 %120, 4
  %122 = add nsw i32 240, %121
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @CX25840_SVIDEO_CHROMA7, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %117
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, 63
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @CX25840_SVIDEO_CHROMA7, align 4
  %131 = sub nsw i32 %129, %130
  %132 = ashr i32 %131, 2
  %133 = load i32, i32* %15, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %15, align 4
  br label %144

135:                                              ; preds = %117
  %136 = load i32, i32* %15, align 4
  %137 = and i32 %136, 207
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @CX25840_SVIDEO_CHROMA4, align 4
  %140 = sub nsw i32 %138, %139
  %141 = ashr i32 %140, 4
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %135, %126
  br label %145

145:                                              ; preds = %144, %86
  br label %146

146:                                              ; preds = %145, %75
  %147 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %148 = call i64 @is_cx2388x(%struct.cx25840_state* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %185, label %150

150:                                              ; preds = %146
  %151 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %152 = call i64 @is_cx231xx(%struct.cx25840_state* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %185, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4
  switch i32 %155, label %178 [
    i32 128, label %156
    i32 133, label %157
    i32 132, label %160
    i32 131, label %165
    i32 130, label %170
    i32 129, label %173
  ]

156:                                              ; preds = %154
  br label %184

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = and i32 %158, -49
  store i32 %159, i32* %15, align 4
  br label %184

160:                                              ; preds = %154
  %161 = load i32, i32* %15, align 4
  %162 = and i32 %161, -49
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = or i32 %163, 16
  store i32 %164, i32* %15, align 4
  br label %184

165:                                              ; preds = %154
  %166 = load i32, i32* %15, align 4
  %167 = and i32 %166, -49
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = or i32 %168, 32
  store i32 %169, i32* %15, align 4
  br label %184

170:                                              ; preds = %154
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, -193
  store i32 %172, i32* %15, align 4
  br label %184

173:                                              ; preds = %154
  %174 = load i32, i32* %15, align 4
  %175 = and i32 %174, -193
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = or i32 %176, 64
  store i32 %177, i32* %15, align 4
  br label %184

178:                                              ; preds = %154
  %179 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @v4l_err(%struct.i2c_client* %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %481

184:                                              ; preds = %173, %170, %165, %160, %157, %156
  br label %185

185:                                              ; preds = %184, %150, %146
  %186 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @cx25840_write(%struct.i2c_client* %186, i32 259, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %193 = call i32 @cx25840_and_or(%struct.i2c_client* %192, i32 1025, i32 -7, i32 6)
  br label %201

194:                                              ; preds = %185
  %195 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 0, i32 2
  %200 = call i32 @cx25840_and_or(%struct.i2c_client* %195, i32 1025, i32 -7, i32 %199)
  br label %201

201:                                              ; preds = %194, %191
  %202 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %203 = call i64 @is_cx2388x(%struct.cx25840_state* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %309

205:                                              ; preds = %201
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %205
  %209 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %210 = call i32 @cx25840_and_or(%struct.i2c_client* %209, i32 258, i32 -129, i32 128)
  %211 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %212 = call i32 @cx25840_write4(%struct.i2c_client* %211, i32 796, i32 -1037687296)
  %213 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %214 = call i32 @cx25840_write4(%struct.i2c_client* %213, i32 800, i32 -1037687296)
  %215 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %216 = call i32 @cx25840_write4(%struct.i2c_client* %215, i32 792, i32 -635034112)
  %217 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %218 = call i32 @cx25840_write4(%struct.i2c_client* %217, i32 828, i32 707053568)
  %219 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %220 = call i32 @cx25840_write4(%struct.i2c_client* %219, i32 260, i32 117759232)
  br label %306

221:                                              ; preds = %205
  %222 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %223 = call i32 @cx25840_write4(%struct.i2c_client* %222, i32 768, i32 22817013)
  %224 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %225 = call i32 @cx25840_and_or(%struct.i2c_client* %224, i32 258, i32 -129, i32 0)
  %226 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %227 = call i32 @cx25840_write4(%struct.i2c_client* %226, i32 832, i32 234348419)
  %228 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %229 = call i32 @cx25840_write4(%struct.i2c_client* %228, i32 260, i32 117759360)
  %230 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %231 = call i32 @cx25840_write4(%struct.i2c_client* %230, i32 788, i32 574621184)
  %232 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %233 = call i32 @cx25840_write4(%struct.i2c_client* %232, i32 792, i32 1073751552)
  %234 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %235 = call i32 @cx25840_write4(%struct.i2c_client* %234, i32 804, i32 1073751552)
  %236 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %237 = call i32 @cx25840_write4(%struct.i2c_client* %236, i32 812, i32 38856224)
  %238 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %239 = call i32 @cx25840_write4(%struct.i2c_client* %238, i32 924, i32 33491712)
  %240 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %241 = call i32 @cx25840_write4(%struct.i2c_client* %240, i32 1040, i32 -62017)
  %242 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %243 = call i32 @cx25840_write4(%struct.i2c_client* %242, i32 1044, i32 1277187)
  %244 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %245 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %246 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1068
  %249 = call i32 @cx25840_write4(%struct.i2c_client* %244, i32 %248, i32 1113587712)
  %250 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %251 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %252 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1072
  %255 = call i32 @cx25840_write4(%struct.i2c_client* %250, i32 %254, i32 923)
  %256 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %257 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %258 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1080
  %261 = call i32 @cx25840_write4(%struct.i2c_client* %256, i32 %260, i32 0)
  %262 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %263 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %264 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1088
  %267 = call i32 @cx25840_write4(%struct.i2c_client* %262, i32 %266, i32 -119281628)
  %268 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %269 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %270 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1092
  %273 = call i32 @cx25840_write4(%struct.i2c_client* %268, i32 %272, i32 1074807004)
  %274 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %275 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %276 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1096
  %279 = call i32 @cx25840_write4(%struct.i2c_client* %274, i32 %278, i32 -851508576)
  %280 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %281 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %282 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1100
  %285 = call i32 @cx25840_write4(%struct.i2c_client* %280, i32 %284, i32 371134464)
  %286 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %287 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %288 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1104
  %291 = call i32 @cx25840_write4(%struct.i2c_client* %286, i32 %290, i32 2050)
  %292 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %293 = call i32 @cx25840_write4(%struct.i2c_client* %292, i32 2332, i32 16777216)
  %294 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %295 = call i32 @cx25840_write4(%struct.i2c_client* %294, i32 2272, i32 50739312)
  %296 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %297 = call i32 @cx25840_write4(%struct.i2c_client* %296, i32 2260, i32 2147418148)
  %298 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %299 = call i32 @cx25840_write4(%struct.i2c_client* %298, i32 2256, i32 405619)
  %300 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %301 = call i32 @cx25840_write4(%struct.i2c_client* %300, i32 2248, i32 65536)
  %302 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %303 = call i32 @cx25840_write4(%struct.i2c_client* %302, i32 2252, i32 524323)
  %304 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %305 = call i32 @cx25840_write4(%struct.i2c_client* %304, i32 828, i32 704956416)
  br label %306

306:                                              ; preds = %221, %208
  %307 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %308 = call i32 @cx25840_write4(%struct.i2c_client* %307, i32 920, i32 0)
  br label %309

309:                                              ; preds = %306, %201
  %310 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %311 = call i64 @is_cx2388x(%struct.cx25840_state* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %339, label %313

313:                                              ; preds = %309
  %314 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %315 = call i64 @is_cx231xx(%struct.cx25840_state* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %339, label %317

317:                                              ; preds = %313
  %318 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %319 = load i32, i32* %15, align 4
  %320 = and i32 %319, 128
  %321 = icmp eq i32 %320, 0
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 2, i32 0
  %324 = call i32 @cx25840_and_or(%struct.i2c_client* %318, i32 258, i32 -3, i32 %323)
  %325 = load i32, i32* %15, align 4
  %326 = and i32 %325, 192
  %327 = icmp ne i32 %326, 192
  br i1 %327, label %328, label %335

328:                                              ; preds = %317
  %329 = load i32, i32* %15, align 4
  %330 = and i32 %329, 48
  %331 = icmp ne i32 %330, 48
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %334 = call i32 @cx25840_and_or(%struct.i2c_client* %333, i32 258, i32 -5, i32 4)
  br label %338

335:                                              ; preds = %328, %317
  %336 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %337 = call i32 @cx25840_and_or(%struct.i2c_client* %336, i32 258, i32 -5, i32 0)
  br label %338

338:                                              ; preds = %335, %332
  br label %400

339:                                              ; preds = %313, %309
  %340 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %341 = load i32, i32* %10, align 4
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i32 4, i32 0
  %345 = call i32 @cx25840_and_or(%struct.i2c_client* %340, i32 258, i32 -5, i32 %344)
  %346 = load i32, i32* %9, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %339
  %349 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %350 = call i32 @cx25840_and_or(%struct.i2c_client* %349, i32 258, i32 -3, i32 0)
  br label %366

351:                                              ; preds = %339
  %352 = load i32, i32* %10, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %365, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* @CX25840_SVIDEO_CHROMA7, align 4
  %357 = icmp sge i32 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %360 = call i32 @cx25840_and_or(%struct.i2c_client* %359, i32 258, i32 -3, i32 2)
  br label %364

361:                                              ; preds = %354
  %362 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %363 = call i32 @cx25840_and_or(%struct.i2c_client* %362, i32 258, i32 -3, i32 0)
  br label %364

364:                                              ; preds = %361, %358
  br label %365

365:                                              ; preds = %364, %351
  br label %366

366:                                              ; preds = %365, %348
  %367 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %368 = call i64 @is_cx2388x(%struct.cx25840_state* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %396

370:                                              ; preds = %366
  %371 = load i32, i32* %12, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %396

373:                                              ; preds = %370
  %374 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %375 = call i32 @cx25840_and_or(%struct.i2c_client* %374, i32 258, i32 -3, i32 2)
  %376 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %377 = call i32 @cx25840_read4(%struct.i2c_client* %376, i32 1024)
  store i32 %377, i32* %16, align 4
  %378 = load i32, i32* %16, align 4
  %379 = and i32 %378, -1537
  store i32 %379, i32* %16, align 4
  %380 = load i32, i32* %16, align 4
  %381 = or i32 %380, 512
  store i32 %381, i32* %16, align 4
  %382 = load i32, i32* %16, align 4
  %383 = and i32 %382, -8193
  store i32 %383, i32* %16, align 4
  %384 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %385 = load i32, i32* %16, align 4
  %386 = call i32 @cx25840_write4(%struct.i2c_client* %384, i32 1024, i32 %385)
  %387 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %388 = call i32 @cx25840_read4(%struct.i2c_client* %387, i32 260)
  store i32 %388, i32* %16, align 4
  %389 = load i32, i32* %16, align 4
  %390 = or i32 %389, 4096
  store i32 %390, i32* %16, align 4
  %391 = load i32, i32* %16, align 4
  %392 = and i32 %391, -385
  store i32 %392, i32* %16, align 4
  %393 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %394 = load i32, i32* %16, align 4
  %395 = call i32 @cx25840_write4(%struct.i2c_client* %393, i32 260, i32 %394)
  br label %399

396:                                              ; preds = %370, %366
  %397 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %398 = call i32 @cx25840_and_or(%struct.i2c_client* %397, i32 258, i32 -3, i32 0)
  br label %399

399:                                              ; preds = %396, %373
  br label %400

400:                                              ; preds = %399, %338
  %401 = load i32, i32* %6, align 4
  %402 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %403 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* %7, align 4
  %405 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %406 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %405, i32 0, i32 2
  store i32 %404, i32* %406, align 4
  %407 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %408 = call i32 @cx25840_audio_set_path(%struct.i2c_client* %407)
  %409 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %410 = call i32 @input_change(%struct.i2c_client* %409)
  %411 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %412 = call i64 @is_cx2388x(%struct.cx25840_state* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %425

414:                                              ; preds = %400
  %415 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %416 = call i32 @cx25840_write(%struct.i2c_client* %415, i32 292, i32 3)
  %417 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %418 = call i32 @cx25840_write(%struct.i2c_client* %417, i32 324, i32 5)
  %419 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %420 = call i32 @cx25840_write(%struct.i2c_client* %419, i32 2324, i32 160)
  %421 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %422 = call i32 @cx25840_write(%struct.i2c_client* %421, i32 2328, i32 160)
  %423 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %424 = call i32 @cx25840_write(%struct.i2c_client* %423, i32 2329, i32 1)
  br label %439

425:                                              ; preds = %400
  %426 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %427 = call i64 @is_cx231xx(%struct.cx25840_state* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %438

429:                                              ; preds = %425
  %430 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %431 = call i32 @cx25840_write(%struct.i2c_client* %430, i32 292, i32 3)
  %432 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %433 = call i32 @cx25840_write(%struct.i2c_client* %432, i32 2324, i32 160)
  %434 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %435 = call i32 @cx25840_write(%struct.i2c_client* %434, i32 2328, i32 160)
  %436 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %437 = call i32 @cx25840_write(%struct.i2c_client* %436, i32 2329, i32 1)
  br label %438

438:                                              ; preds = %429, %425
  br label %439

439:                                              ; preds = %438, %414
  %440 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %441 = call i64 @is_cx2388x(%struct.cx25840_state* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %454

443:                                              ; preds = %439
  %444 = load i32, i32* %7, align 4
  %445 = icmp eq i32 %444, 130
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %7, align 4
  %448 = icmp eq i32 %447, 131
  br i1 %448, label %449, label %454

449:                                              ; preds = %446, %443
  %450 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %451 = call i32 @cx25840_write4(%struct.i2c_client* %450, i32 2320, i32 0)
  %452 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %453 = call i32 @cx25840_write4(%struct.i2c_client* %452, i32 2256, i32 405619)
  br label %467

454:                                              ; preds = %446, %439
  %455 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %456 = call i64 @is_cx2388x(%struct.cx25840_state* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %466

458:                                              ; preds = %454
  %459 = load i32, i32* %7, align 4
  %460 = icmp eq i32 %459, 129
  br i1 %460, label %461, label %466

461:                                              ; preds = %458
  %462 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %463 = call i32 @cx25840_write4(%struct.i2c_client* %462, i32 2320, i32 313524425)
  %464 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %465 = call i32 @cx25840_write4(%struct.i2c_client* %464, i32 2256, i32 520501360)
  br label %466

466:                                              ; preds = %461, %458, %454
  br label %467

467:                                              ; preds = %466, %449
  %468 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %469 = call i64 @is_cx23888(%struct.cx25840_state* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %480

471:                                              ; preds = %467
  %472 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %473 = call i32 @cx25840_write4(%struct.i2c_client* %472, i32 292, i32 256)
  %474 = load i32, i32* %11, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %471
  %477 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %478 = call i32 @cx25840_and_or(%struct.i2c_client* %477, i32 2051, i32 -17, i32 0)
  br label %479

479:                                              ; preds = %476, %471
  br label %480

480:                                              ; preds = %479, %467
  store i32 0, i32* %4, align 4
  br label %481

481:                                              ; preds = %480, %178, %111
  %482 = load i32, i32* %4, align 4
  ret i32 %482
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, ...) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_audio_set_path(%struct.i2c_client*) #1

declare dso_local i32 @input_change(%struct.i2c_client*) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
