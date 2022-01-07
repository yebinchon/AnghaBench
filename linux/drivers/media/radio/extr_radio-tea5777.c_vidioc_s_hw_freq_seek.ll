; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_vidioc_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i64, i64, i64, i64, i64 }
%struct.radio_tea5777 = type { i32, i64, i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_3__* null, align 8
@BAND_AM = common dso_local global i32 0, align 4
@TEA5777_W_PROGBLIM_MASK = common dso_local global i32 0, align 4
@TEA5777_W_UPDWN_MASK = common dso_local global i32 0, align 4
@TEA5777_W_SEARCH_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@TEA5777_R_FM_PLL_MASK = common dso_local global i32 0, align 4
@TEA5777_R_SFOUND_MASK = common dso_local global i32 0, align 4
@TEA5777_R_BLIM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @vidioc_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca %struct.radio_tea5777*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.radio_tea5777* @video_drvdata(%struct.file* %16)
  store %struct.radio_tea5777* %17, %struct.radio_tea5777** %8, align 8
  %18 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %341

36:                                               ; preds = %28
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @O_NONBLOCK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EWOULDBLOCK, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %341

46:                                               ; preds = %36
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %131

52:                                               ; preds = %49, %46
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @BAND_AM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %64 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %88

68:                                               ; preds = %62, %58
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %91

87:                                               ; preds = %77, %68
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %53

91:                                               ; preds = %86, %53
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %93)
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %341

99:                                               ; preds = %91
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %102 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %104 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %110 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %108, %99
  %115 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %116 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @clamp(i64 %117, i64 %118, i64 %119)
  %121 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %122 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %124 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %4, align 4
  br label %341

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %108
  br label %148

131:                                              ; preds = %49
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %133 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %134 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %10, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %141 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %142 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %11, align 8
  br label %148

148:                                              ; preds = %131, %130
  %149 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %150 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @BAND_AM, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 80, i32 3200
  store i32 %155, i32* %14, align 4
  %156 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %157 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %15, align 8
  %159 = load i32, i32* @TEA5777_W_PROGBLIM_MASK, align 4
  %160 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %161 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %165 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %10, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %148
  %170 = load i32, i32* @TEA5777_W_UPDWN_MASK, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %173 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %178 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %180 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %322

184:                                              ; preds = %169
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %187 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %184, %148
  %189 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %190 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %188
  %195 = load i32, i32* @TEA5777_W_UPDWN_MASK, align 4
  %196 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %197 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i64, i64* %11, align 8
  %201 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %202 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %204 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %194
  br label %322

208:                                              ; preds = %194
  %209 = load i64, i64* %11, align 8
  %210 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %211 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %210, i32 0, i32 3
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %208, %188
  %213 = load i32, i32* @TEA5777_W_PROGBLIM_MASK, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %216 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* @TEA5777_W_SEARCH_MASK, align 4
  %220 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %221 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %225 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %212
  %229 = load i32, i32* @TEA5777_W_UPDWN_MASK, align 4
  %230 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %231 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load i64, i64* %15, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %239 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  br label %253

240:                                              ; preds = %212
  %241 = load i32, i32* @TEA5777_W_UPDWN_MASK, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %244 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load i64, i64* %15, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = sub nsw i64 %247, %249
  %251 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %252 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %251, i32 0, i32 1
  store i64 %250, i64* %252, align 8
  br label %253

253:                                              ; preds = %240, %228
  %254 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %255 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %254)
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %322

259:                                              ; preds = %253
  %260 = load i64, i64* @jiffies, align 8
  %261 = call i64 @msecs_to_jiffies(i32 5000)
  %262 = add i64 %260, %261
  store i64 %262, i64* %9, align 8
  br label %263

263:                                              ; preds = %318, %259
  %264 = load i64, i64* @jiffies, align 8
  %265 = load i64, i64* %9, align 8
  %266 = call i64 @time_after(i64 %264, i64 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load i32, i32* @ENODATA, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %13, align 4
  br label %321

271:                                              ; preds = %263
  %272 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %273 = call i32 @radio_tea5777_update_read_reg(%struct.radio_tea5777* %272, i32 100)
  store i32 %273, i32* %13, align 4
  %274 = load i32, i32* %13, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %321

277:                                              ; preds = %271
  %278 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %279 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @TEA5777_R_FM_PLL_MASK, align 4
  %282 = and i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %285 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %284, i32 0, i32 1
  store i64 %283, i64* %285, align 8
  %286 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %287 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %288 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @tea5777_freq_to_v4l2_freq(%struct.radio_tea5777* %286, i32 %290)
  %292 = sext i32 %291 to i64
  %293 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %294 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %293, i32 0, i32 1
  store i64 %292, i64* %294, align 8
  %295 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %296 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @TEA5777_R_SFOUND_MASK, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %277
  %302 = load i32, i32* @TEA5777_W_SEARCH_MASK, align 4
  %303 = xor i32 %302, -1
  %304 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %305 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, %303
  store i32 %307, i32* %305, align 4
  store i32 0, i32* %4, align 4
  br label %341

308:                                              ; preds = %277
  %309 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %310 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @TEA5777_R_BLIM_MASK, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  %316 = load i32, i32* @ENODATA, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %13, align 4
  br label %321

318:                                              ; preds = %308
  %319 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %320 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %319, i32 0, i32 4
  store i32 -1, i32* %320, align 8
  br label %263

321:                                              ; preds = %315, %276, %268
  br label %322

322:                                              ; preds = %321, %258, %207, %183
  %323 = load i32, i32* @TEA5777_W_PROGBLIM_MASK, align 4
  %324 = xor i32 %323, -1
  %325 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %326 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, %324
  store i32 %328, i32* %326, align 4
  %329 = load i32, i32* @TEA5777_W_SEARCH_MASK, align 4
  %330 = xor i32 %329, -1
  %331 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %332 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load i64, i64* %15, align 8
  %336 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %337 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %336, i32 0, i32 1
  store i64 %335, i64* %337, align 8
  %338 = load %struct.radio_tea5777*, %struct.radio_tea5777** %8, align 8
  %339 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %338)
  %340 = load i32, i32* %13, align 4
  store i32 %340, i32* %4, align 4
  br label %341

341:                                              ; preds = %322, %301, %127, %96, %43, %33
  %342 = load i32, i32* %4, align 4
  ret i32 %342
}

declare dso_local %struct.radio_tea5777* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i32 @radio_tea5777_set_freq(%struct.radio_tea5777*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @radio_tea5777_update_read_reg(%struct.radio_tea5777*, i32) #1

declare dso_local i32 @tea5777_freq_to_v4l2_freq(%struct.radio_tea5777*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
