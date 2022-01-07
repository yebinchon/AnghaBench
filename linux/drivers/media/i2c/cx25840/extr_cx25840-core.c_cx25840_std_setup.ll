; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_std_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_std_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32, i64 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PLL regs = int: %u, frac: %u, post: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PLL = %d.%06d MHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PLL/8 = %d.%06d MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ADC Sampling freq = %d.%06d MHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Chroma sub-carrier freq = %d.%06d MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [134 x i8] c"hblank %i, hactive %i, vblank %i, vactive %i, vblank656 %i, src_dec %i, burst 0x%02x, luma_lpf %i, uv_lpf %i, comb 0x%02x, sc 0x%06x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25840_std_setup(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @i2c_get_clientdata(%struct.i2c_client* %22)
  %24 = call %struct.cx25840_state* @to_state(i32 %23)
  store %struct.cx25840_state* %24, %struct.cx25840_state** %3, align 8
  %25 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %26 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @V4L2_STD_NTSC, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = call i32 @cx25840_write(%struct.i2c_client* %34, i32 1183, i32 17)
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = call i32 @cx25840_write(%struct.i2c_client* %37, i32 1183, i32 20)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @V4L2_STD_625_50, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  store i32 132, i32* %5, align 4
  store i32 720, i32* %6, align 4
  store i32 93, i32* %7, align 4
  %45 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %46 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 34, i32* %8, align 4
  store i32 576, i32* %9, align 4
  store i32 38, i32* %11, align 4
  br label %51

50:                                               ; preds = %44
  store i32 36, i32* %8, align 4
  store i32 580, i32* %9, align 4
  store i32 40, i32* %11, align 4
  br label %51

51:                                               ; preds = %50, %49
  store i32 543, i32* %12, align 4
  store i32 2, i32* %13, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @V4L2_STD_SECAM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 672351, i32* %10, align 4
  br label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %63 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 95, i32* %7, align 4
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %61
  store i32 1, i32* %14, align 4
  store i32 32, i32* %15, align 4
  store i32 556453, i32* %10, align 4
  br label %69

68:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  store i32 32, i32* %15, align 4
  store i32 688739, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %56
  br label %103

71:                                               ; preds = %39
  store i32 720, i32* %6, align 4
  store i32 122, i32* %5, align 4
  store i32 487, i32* %9, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %72 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %73 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 20, i32* %8, align 4
  store i32 24, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %71
  store i32 543, i32* %12, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %83 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 26, i32* %8, align 4
  store i32 26, i32* %11, align 4
  store i32 91, i32* %7, align 4
  br label %88

87:                                               ; preds = %81
  store i32 89, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %86
  store i32 2, i32* %13, align 4
  store i32 32, i32* %15, align 4
  store i32 688739, i32* %10, align 4
  br label %102

89:                                               ; preds = %77
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 20, i32* %8, align 4
  store i32 24, i32* %11, align 4
  store i32 97, i32* %7, align 4
  store i32 32, i32* %15, align 4
  store i32 555452, i32* %10, align 4
  br label %101

94:                                               ; preds = %89
  %95 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %96 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 26, i32* %8, align 4
  store i32 26, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %94
  store i32 91, i32* %7, align 4
  store i32 102, i32* %15, align 4
  store i32 556063, i32* %10, align 4
  br label %101

101:                                              ; preds = %100, %93
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %105 = call i32 @is_cx231xx(%struct.cx25840_state* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %197, label %107

107:                                              ; preds = %103
  %108 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %109 = call i64 @cx25840_read(%struct.i2c_client* %108, i32 264)
  store i64 %109, i64* %16, align 8
  %110 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %111 = call i32 @cx25840_read4(%struct.i2c_client* %110, i32 268)
  %112 = and i32 %111, 33554431
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %17, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %115 = call i64 @cx25840_read(%struct.i2c_client* %114, i32 265)
  store i64 %115, i64* %18, align 8
  %116 = load i32, i32* @cx25840_debug, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %118 = load i64, i64* %16, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i64, i64* %17, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i64, i64* %18, align 8
  %123 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %116, %struct.i2c_client* %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %121, i64 %122)
  %124 = load i64, i64* %18, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %196

126:                                              ; preds = %107
  %127 = load i64, i64* %16, align 8
  %128 = shl i64 %127, 25
  %129 = load i64, i64* %17, align 8
  %130 = add nsw i64 %128, %129
  %131 = mul nsw i64 28636363, %130
  %132 = ashr i64 %131, 25
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %21, align 4
  %134 = load i64, i64* %18, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = sdiv i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* @cx25840_debug, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sdiv i32 %141, 1000000
  %143 = load i32, i32* %21, align 4
  %144 = srem i32 %143, 1000000
  %145 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %139, %struct.i2c_client* %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %144)
  %146 = load i32, i32* @cx25840_debug, align 4
  %147 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sdiv i32 %148, 8000000
  %150 = load i32, i32* %21, align 4
  %151 = sdiv i32 %150, 8
  %152 = srem i32 %151, 1000000
  %153 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %146, %struct.i2c_client* %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %155, %157
  %159 = ashr i64 %158, 12
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* @cx25840_debug, align 4
  %162 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sdiv i32 %163, 1000000
  %165 = load i32, i32* %19, align 4
  %166 = srem i32 %165, 1000000
  %167 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %161, %struct.i2c_client* %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = load i32, i32* %21, align 4
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %169, %171
  %173 = ashr i64 %172, 24
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %20, align 4
  %175 = load i32, i32* @cx25840_debug, align 4
  %176 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sdiv i32 %177, 1000000
  %179 = load i32, i32* %20, align 4
  %180 = srem i32 %179, 1000000
  %181 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %175, %struct.i2c_client* %176, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %180)
  %182 = load i32, i32* @cx25840_debug, align 4
  %183 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %182, %struct.i2c_client* %183, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %126, %107
  br label %197

197:                                              ; preds = %196, %103
  %198 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @cx25840_write(%struct.i2c_client* %198, i32 1136, i32 %199)
  %201 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %202 = load i32, i32* %5, align 4
  %203 = ashr i32 %202, 8
  %204 = and i32 %203, 3
  %205 = load i32, i32* %6, align 4
  %206 = shl i32 %205, 4
  %207 = or i32 %204, %206
  %208 = and i32 %207, 255
  %209 = call i32 @cx25840_write(%struct.i2c_client* %201, i32 1137, i32 %208)
  %210 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %211 = load i32, i32* %6, align 4
  %212 = ashr i32 %211, 4
  %213 = call i32 @cx25840_write(%struct.i2c_client* %210, i32 1138, i32 %212)
  %214 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @cx25840_write(%struct.i2c_client* %214, i32 1139, i32 %215)
  %217 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @cx25840_write(%struct.i2c_client* %217, i32 1140, i32 %218)
  %220 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %221 = load i32, i32* %8, align 4
  %222 = ashr i32 %221, 8
  %223 = and i32 %222, 3
  %224 = load i32, i32* %9, align 4
  %225 = shl i32 %224, 4
  %226 = or i32 %223, %225
  %227 = and i32 %226, 255
  %228 = call i32 @cx25840_write(%struct.i2c_client* %220, i32 1141, i32 %227)
  %229 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %230 = load i32, i32* %9, align 4
  %231 = ashr i32 %230, 4
  %232 = call i32 @cx25840_write(%struct.i2c_client* %229, i32 1142, i32 %231)
  %233 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @cx25840_write(%struct.i2c_client* %233, i32 1143, i32 %234)
  %236 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %237 = load i32, i32* %12, align 4
  %238 = and i32 %237, 255
  %239 = call i32 @cx25840_write(%struct.i2c_client* %236, i32 1144, i32 %238)
  %240 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %241 = load i32, i32* %12, align 4
  %242 = ashr i32 %241, 8
  %243 = and i32 %242, 255
  %244 = call i32 @cx25840_write(%struct.i2c_client* %240, i32 1145, i32 %243)
  %245 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %246 = load i32, i32* %13, align 4
  %247 = shl i32 %246, 6
  %248 = load i32, i32* %14, align 4
  %249 = shl i32 %248, 4
  %250 = and i32 %249, 48
  %251 = or i32 %247, %250
  %252 = call i32 @cx25840_write(%struct.i2c_client* %245, i32 1146, i32 %251)
  %253 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %254 = load i32, i32* %15, align 4
  %255 = call i32 @cx25840_write(%struct.i2c_client* %253, i32 1147, i32 %254)
  %256 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %257 = load i32, i32* %10, align 4
  %258 = call i32 @cx25840_write(%struct.i2c_client* %256, i32 1148, i32 %257)
  %259 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %260 = load i32, i32* %10, align 4
  %261 = ashr i32 %260, 8
  %262 = and i32 %261, 255
  %263 = call i32 @cx25840_write(%struct.i2c_client* %259, i32 1149, i32 %262)
  %264 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %265 = load i32, i32* %10, align 4
  %266 = ashr i32 %265, 16
  %267 = and i32 %266, 255
  %268 = call i32 @cx25840_write(%struct.i2c_client* %264, i32 1150, i32 %267)
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* @V4L2_STD_625_50, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %197
  %274 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %275 = call i32 @cx25840_write(%struct.i2c_client* %274, i32 1151, i32 1)
  %276 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %277 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %276, i32 0, i32 1
  store i32 5, i32* %277, align 4
  br label %283

278:                                              ; preds = %197
  %279 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %280 = call i32 @cx25840_write(%struct.i2c_client* %279, i32 1151, i32 0)
  %281 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %282 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %281, i32 0, i32 1
  store i32 8, i32* %282, align 4
  br label %283

283:                                              ; preds = %278, %273
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i64 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
