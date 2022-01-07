; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_try_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_try_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i64, %struct.osd_window_state* }
%struct.osd_window_state = type { %struct.osd_layer_config }
%struct.osd_layer_config = type { i32, i32, i32, i32, i32, i32, i32 }

@VPBE_VERSION_1 = common dso_local global i64 0, align 8
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@VPBE_VERSION_2 = common dso_local global i64 0, align 8
@WIN_OSD1 = common dso_local global i32 0, align 4
@WIN_OSD0 = common dso_local global i32 0, align 4
@WIN_VID0 = common dso_local global i32 0, align 4
@WIN_VID1 = common dso_local global i64 0, align 8
@MAX_LINE_LENGTH = common dso_local global i64 0, align 8
@MAX_WIN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)* @try_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_layer_config(%struct.osd_state* %0, i32 %1, %struct.osd_layer_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.osd_layer_config*, align 8
  %8 = alloca %struct.osd_state*, align 8
  %9 = alloca %struct.osd_window_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.osd_layer_config* %2, %struct.osd_layer_config** %7, align 8
  %13 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  store %struct.osd_state* %13, %struct.osd_state** %8, align 8
  %14 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %15 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %14, i32 0, i32 1
  %16 = load %struct.osd_window_state*, %struct.osd_window_state** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %16, i64 %18
  store %struct.osd_window_state* %19, %struct.osd_window_state** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %21 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %90 [
    i32 137, label %23
    i32 136, label %23
    i32 135, label %23
    i32 134, label %23
    i32 131, label %23
    i32 129, label %36
    i32 128, label %36
    i32 130, label %42
    i32 133, label %74
    i32 132, label %85
  ]

23:                                               ; preds = %3, %3, %3, %3, %3
  %24 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %25 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VPBE_VERSION_1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @is_vid_win(i32 %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %23
  br label %91

36:                                               ; preds = %3, %3
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @is_vid_win(i32 %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  br label %91

42:                                               ; preds = %3
  %43 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %44 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VPBE_VERSION_1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @is_vid_win(i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  br label %73

54:                                               ; preds = %42
  %55 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %56 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VPBE_VERSION_3, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %62 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VPBE_VERSION_2, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60, %54
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @is_osd_win(i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %48
  br label %91

74:                                               ; preds = %3
  %75 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %76 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VPBE_VERSION_2, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @is_osd_win(i32 %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %80
  br label %91

85:                                               ; preds = %3
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @WIN_OSD1, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %10, align 4
  br label %91

90:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %91

91:                                               ; preds = %90, %85, %84, %73, %36, %35
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %96 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %97 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %96, i32 0, i32 0
  %98 = bitcast %struct.osd_layer_config* %95 to i8*
  %99 = bitcast %struct.osd_layer_config* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 28, i1 false)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %296

101:                                              ; preds = %91
  %102 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %103 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VPBE_VERSION_1, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %152

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @is_osd_win(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %152

111:                                              ; preds = %107
  %112 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %113 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @is_rgb_pixfmt(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %152

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @WIN_OSD0, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %123 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %122, i32 0, i32 1
  %124 = load %struct.osd_window_state*, %struct.osd_window_state** %123, align 8
  %125 = load i32, i32* @WIN_OSD1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %124, i64 %126
  %128 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %11, align 4
  br label %141

131:                                              ; preds = %117
  %132 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %133 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %132, i32 0, i32 1
  %134 = load %struct.osd_window_state*, %struct.osd_window_state** %133, align 8
  %135 = load i32, i32* @WIN_OSD0, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %134, i64 %136
  %138 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %131, %121
  %142 = load i32, i32* %11, align 4
  %143 = call i64 @is_rgb_pixfmt(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %147 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %148 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %147, i32 0, i32 0
  %149 = bitcast %struct.osd_layer_config* %146 to i8*
  %150 = bitcast %struct.osd_layer_config* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 28, i1 false)
  store i32 1, i32* %4, align 4
  br label %296

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %111, %107, %101
  %153 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %154 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @VPBE_VERSION_1, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %200

158:                                              ; preds = %152
  %159 = load i32, i32* %6, align 4
  %160 = call i64 @is_vid_win(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %200

162:                                              ; preds = %158
  %163 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %164 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 130
  br i1 %166, label %167, label %200

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @WIN_VID0, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %173 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %172, i32 0, i32 1
  %174 = load %struct.osd_window_state*, %struct.osd_window_state** %173, align 8
  %175 = load i64, i64* @WIN_VID1, align 8
  %176 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %174, i64 %175
  %177 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %12, align 4
  br label %190

180:                                              ; preds = %167
  %181 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %182 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %181, i32 0, i32 1
  %183 = load %struct.osd_window_state*, %struct.osd_window_state** %182, align 8
  %184 = load i32, i32* @WIN_VID0, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %183, i64 %185
  %187 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %180, %171
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 130
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %195 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %196 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %195, i32 0, i32 0
  %197 = bitcast %struct.osd_layer_config* %194 to i8*
  %198 = bitcast %struct.osd_layer_config* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 28, i1 false)
  store i32 1, i32* %4, align 4
  br label %296

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199, %162, %158, %152
  %201 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %202 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %207 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %212 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %210, %205, %200
  %216 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %217 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %218 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %217, i32 0, i32 0
  %219 = bitcast %struct.osd_layer_config* %216 to i8*
  %220 = bitcast %struct.osd_layer_config* %218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 %220, i64 28, i1 false)
  store i32 1, i32* %4, align 4
  br label %296

221:                                              ; preds = %210
  %222 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %223 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 31
  %226 = sdiv i32 %225, 32
  %227 = mul nsw i32 %226, 32
  %228 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %229 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %231 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* @MAX_LINE_LENGTH, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i8* @min(i32 %232, i32 %234)
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %238 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %240 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i64, i64* @MAX_WIN_SIZE, align 8
  %243 = trunc i64 %242 to i32
  %244 = call i8* @min(i32 %241, i32 %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %247 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %249 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* @MAX_WIN_SIZE, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i8* @min(i32 %250, i32 %252)
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %256 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  %257 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %258 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load i64, i64* @MAX_WIN_SIZE, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i8* @min(i32 %259, i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %265 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 4
  %266 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %267 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load i64, i64* @MAX_WIN_SIZE, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i8* @min(i32 %268, i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %274 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %273, i32 0, i32 5
  store i32 %272, i32* %274, align 4
  %275 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %276 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i32
  %280 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %281 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %280, i32 0, i32 6
  store i32 %279, i32* %281, align 4
  %282 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %283 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %221
  %287 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %288 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, -2
  store i32 %290, i32* %288, align 4
  %291 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %292 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, -2
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %286, %221
  store i32 0, i32* %4, align 4
  br label %296

296:                                              ; preds = %295, %215, %193, %145, %94
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i64 @is_vid_win(i32) #1

declare dso_local i32 @is_osd_win(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_rgb_pixfmt(i32) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
