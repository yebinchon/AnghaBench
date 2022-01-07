; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-debugifc.c_pvr2_debugifc_do1cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-debugifc.c_pvr2_debugifc_do1cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

@PVR2_TRACE_DEBUGIFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"debugifc cmd: \22%.*s\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"deep\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"worker\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"usbstats\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"cpufw\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"prom\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ram8k\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ram16k\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"debugifc failed to recognize cmd: \22%.*s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i8*, i32)* @pvr2_debugifc_do1cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_debugifc_do1cmd(%struct.pvr2_hdw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_hdw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @debugifc_isolate_word(i8* %15, i32 %16, i8** %8, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %345

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %345

32:                                               ; preds = %21
  %33 = load i32, i32* @PVR2_TRACE_DEBUGIFC, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @pvr2_trace(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @debugifc_match_keyword(i8* %37, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %140

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @debugifc_isolate_word(i8* %42, i32 %43, i8** %8, i32* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %345

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %345

63:                                               ; preds = %50
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @debugifc_match_keyword(i8* %64, i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %70 = call i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw* %69, i32 1)
  %71 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %72 = call i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw* %71, i32 0)
  store i32 0, i32* %4, align 4
  br label %345

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @debugifc_match_keyword(i8* %74, i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %80 = call i32 @pvr2_hdw_device_reset(%struct.pvr2_hdw* %79)
  br label %136

81:                                               ; preds = %73
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @debugifc_match_keyword(i8* %82, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %88 = call i32 @pvr2_hdw_cmd_powerup(%struct.pvr2_hdw* %87)
  store i32 %88, i32* %4, align 4
  br label %345

89:                                               ; preds = %81
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @debugifc_match_keyword(i8* %90, i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %96 = call i32 @pvr2_hdw_cmd_deep_reset(%struct.pvr2_hdw* %95)
  store i32 %96, i32* %4, align 4
  br label %345

97:                                               ; preds = %89
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @debugifc_match_keyword(i8* %98, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %104 = call i32 @pvr2_upload_firmware2(%struct.pvr2_hdw* %103)
  store i32 %104, i32* %4, align 4
  br label %345

105:                                              ; preds = %97
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @debugifc_match_keyword(i8* %106, i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %112 = call i32 @pvr2_hdw_cmd_decoder_reset(%struct.pvr2_hdw* %111)
  store i32 %112, i32* %4, align 4
  br label %345

113:                                              ; preds = %105
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @debugifc_match_keyword(i8* %114, i32 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %120 = call i32 @pvr2_hdw_untrip(%struct.pvr2_hdw* %119)
  store i32 %120, i32* %4, align 4
  br label %345

121:                                              ; preds = %113
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @debugifc_match_keyword(i8* %122, i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %128 = call i32 @pvr2_hdw_get_video_stream(%struct.pvr2_hdw* %127)
  %129 = call i32 @pvr2_stream_get_stats(i32 %128, i32* null, i32 1)
  store i32 0, i32* %4, align 4
  br label %345

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %78
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %345

140:                                              ; preds = %32
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i64 @debugifc_match_keyword(i8* %141, i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %232

145:                                              ; preds = %140
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @debugifc_isolate_word(i8* %146, i32 %147, i8** %8, i32* %9)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %345

154:                                              ; preds = %145
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sub i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i8*, i8** %6, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %6, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %154
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %345

167:                                              ; preds = %154
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i64 @debugifc_match_keyword(i8* %168, i32 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %221

172:                                              ; preds = %167
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @debugifc_isolate_word(i8* %173, i32 %174, i8** %8, i32* %9)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %218

178:                                              ; preds = %172
  %179 = load i8*, i8** %8, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %218

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %7, align 4
  %184 = sub i32 %183, %182
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %6, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i64 @debugifc_match_keyword(i8* %189, i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %195 = call i32 @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw* %194, i32 2, i32 1)
  br label %217

196:                                              ; preds = %181
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i64 @debugifc_match_keyword(i8* %197, i32 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %203 = call i32 @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw* %202, i32 0, i32 1)
  br label %216

204:                                              ; preds = %196
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i64 @debugifc_match_keyword(i8* %205, i32 %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %211 = call i32 @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw* %210, i32 1, i32 1)
  br label %215

212:                                              ; preds = %204
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %345

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %215, %201
  br label %217

217:                                              ; preds = %216, %193
  br label %218

218:                                              ; preds = %217, %178, %172
  %219 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %220 = call i32 @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw* %219, i32 0, i32 1)
  store i32 0, i32* %4, align 4
  br label %345

221:                                              ; preds = %167
  %222 = load i8*, i8** %8, align 8
  %223 = load i32, i32* %9, align 4
  %224 = call i64 @debugifc_match_keyword(i8* %222, i32 %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %228 = call i32 @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw* %227, i32 0, i32 0)
  store i32 0, i32* %4, align 4
  br label %345

229:                                              ; preds = %221
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %4, align 4
  br label %345

232:                                              ; preds = %140
  %233 = load i8*, i8** %8, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i64 @debugifc_match_keyword(i8* %233, i32 %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %336

237:                                              ; preds = %232
  store i32 0, i32* %11, align 4
  %238 = load i8*, i8** %6, align 8
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @debugifc_isolate_word(i8* %238, i32 %239, i8** %8, i32* %9)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %237
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %4, align 4
  br label %345

246:                                              ; preds = %237
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %7, align 4
  %249 = sub i32 %248, %247
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load i8*, i8** %6, align 8
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8* %253, i8** %6, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %246
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %4, align 4
  br label %345

259:                                              ; preds = %246
  %260 = load i8*, i8** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = call i64 @debugifc_match_keyword(i8* %260, i32 %261, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  store i32 1, i32* %11, align 4
  br label %274

265:                                              ; preds = %259
  %266 = load i8*, i8** %8, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i64 @debugifc_match_keyword(i8* %266, i32 %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %4, align 4
  br label %345

273:                                              ; preds = %265
  br label %274

274:                                              ; preds = %273, %264
  %275 = load i8*, i8** %6, align 8
  %276 = load i32, i32* %7, align 4
  %277 = call i32 @debugifc_isolate_word(i8* %275, i32 %276, i8** %8, i32* %9)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %274
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %4, align 4
  br label %345

283:                                              ; preds = %274
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %7, align 4
  %286 = sub i32 %285, %284
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load i8*, i8** %6, align 8
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  store i8* %290, i8** %6, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %283
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  br label %345

296:                                              ; preds = %283
  %297 = load i8*, i8** %8, align 8
  %298 = load i32, i32* %9, align 4
  %299 = call i32 @debugifc_parse_unsigned_number(i8* %297, i32 %298, i32* %13)
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = load i32, i32* %12, align 4
  store i32 %303, i32* %4, align 4
  br label %345

304:                                              ; preds = %296
  %305 = load i8*, i8** %6, align 8
  %306 = load i32, i32* %7, align 4
  %307 = call i32 @debugifc_isolate_word(i8* %305, i32 %306, i8** %8, i32* %9)
  store i32 %307, i32* %10, align 4
  %308 = load i8*, i8** %8, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %319

310:                                              ; preds = %304
  %311 = load i8*, i8** %8, align 8
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @debugifc_parse_unsigned_number(i8* %311, i32 %312, i32* %14)
  store i32 %313, i32* %12, align 4
  %314 = load i32, i32* %12, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load i32, i32* %12, align 4
  store i32 %317, i32* %4, align 4
  br label %345

318:                                              ; preds = %310
  br label %321

319:                                              ; preds = %304
  %320 = load i32, i32* %13, align 4
  store i32 %320, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  br label %321

321:                                              ; preds = %319, %318
  %322 = load i32, i32* %11, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %14, align 4
  %328 = call i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw* %325, i32 %326, i32 %327)
  store i32 %328, i32* %12, align 4
  br label %334

329:                                              ; preds = %321
  %330 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %14, align 4
  %333 = call i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %330, i32 %331, i32 %332)
  store i32 %333, i32* %12, align 4
  br label %334

334:                                              ; preds = %329, %324
  %335 = load i32, i32* %12, align 4
  store i32 %335, i32* %4, align 4
  br label %345

336:                                              ; preds = %232
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* @PVR2_TRACE_DEBUGIFC, align 4
  %340 = load i32, i32* %9, align 4
  %341 = load i8*, i8** %8, align 8
  %342 = call i32 @pvr2_trace(i32 %339, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %340, i8* %341)
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %338, %334, %316, %302, %293, %280, %270, %256, %243, %229, %226, %218, %212, %164, %151, %137, %126, %118, %110, %102, %94, %86, %68, %60, %47, %31, %20
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local i32 @debugifc_isolate_word(i8*, i32, i8**, i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i8*) #1

declare dso_local i64 @debugifc_match_keyword(i8*, i32, i8*) #1

declare dso_local i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_device_reset(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_cmd_powerup(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_cmd_deep_reset(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_upload_firmware2(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_cmd_decoder_reset(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_untrip(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_stream_get_stats(i32, i32*, i32) #1

declare dso_local i32 @pvr2_hdw_get_video_stream(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @debugifc_parse_unsigned_number(i8*, i32, i32*) #1

declare dso_local i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
