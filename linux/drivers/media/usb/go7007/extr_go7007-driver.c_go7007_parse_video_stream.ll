; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_parse_video_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_parse_video_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, %struct.go7007_buffer*, i32 }
%struct.go7007_buffer = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GO7007_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dropping oversized frame\0A\00", align 1
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @go7007_parse_video_stream(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.go7007_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.go7007*, %struct.go7007** %4, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 7
  %14 = load %struct.go7007_buffer*, %struct.go7007_buffer** %13, align 8
  store %struct.go7007_buffer* %14, %struct.go7007_buffer** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %15 = load %struct.go7007*, %struct.go7007** %4, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %20 [
    i32 128, label %18
    i32 130, label %19
    i32 129, label %19
  ]

18:                                               ; preds = %3
  store i32 176, i32* %9, align 4
  store i32 179, i32* %10, align 4
  store i32 182, i32* %11, align 4
  br label %20

19:                                               ; preds = %3, %3
  store i32 179, i32* %9, align 4
  store i32 184, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %3, %19, %18
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %437, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %440

25:                                               ; preds = %21
  %26 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %27 = icmp ne %struct.go7007_buffer* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %38 = sub nsw i32 %37, 3
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %28
  %41 = load %struct.go7007*, %struct.go7007** %4, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 8
  %43 = call i32 @v4l2_info(i32* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.go7007*, %struct.go7007** %4, align 8
  %56 = getelementptr inbounds %struct.go7007, %struct.go7007* %55, i32 0, i32 7
  store %struct.go7007_buffer* null, %struct.go7007_buffer** %56, align 8
  store %struct.go7007_buffer* null, %struct.go7007_buffer** %7, align 8
  br label %57

57:                                               ; preds = %40, %28, %25
  %58 = load %struct.go7007*, %struct.go7007** %4, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %436 [
    i32 136, label %61
    i32 139, label %82
    i32 138, label %109
    i32 137, label %143
    i32 135, label %296
    i32 132, label %334
    i32 131, label %345
    i32 134, label %366
    i32 133, label %426
  ]

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %73 [
    i32 0, label %67
    i32 255, label %70
  ]

67:                                               ; preds = %61
  %68 = load %struct.go7007*, %struct.go7007** %4, align 8
  %69 = getelementptr inbounds %struct.go7007, %struct.go7007* %68, i32 0, i32 1
  store i32 139, i32* %69, align 4
  br label %81

70:                                               ; preds = %61
  %71 = load %struct.go7007*, %struct.go7007** %4, align 8
  %72 = getelementptr inbounds %struct.go7007, %struct.go7007* %71, i32 0, i32 1
  store i32 135, i32* %72, align 4
  br label %81

73:                                               ; preds = %61
  %74 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @store_byte(%struct.go7007_buffer* %74, i32 %79)
  br label %81

81:                                               ; preds = %73, %70, %67
  br label %436

82:                                               ; preds = %57
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %96 [
    i32 0, label %88
    i32 255, label %91
  ]

88:                                               ; preds = %82
  %89 = load %struct.go7007*, %struct.go7007** %4, align 8
  %90 = getelementptr inbounds %struct.go7007, %struct.go7007* %89, i32 0, i32 1
  store i32 138, i32* %90, align 4
  br label %108

91:                                               ; preds = %82
  %92 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %93 = call i32 @store_byte(%struct.go7007_buffer* %92, i32 0)
  %94 = load %struct.go7007*, %struct.go7007** %4, align 8
  %95 = getelementptr inbounds %struct.go7007, %struct.go7007* %94, i32 0, i32 1
  store i32 135, i32* %95, align 4
  br label %108

96:                                               ; preds = %82
  %97 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %98 = call i32 @store_byte(%struct.go7007_buffer* %97, i32 0)
  %99 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @store_byte(%struct.go7007_buffer* %99, i32 %104)
  %106 = load %struct.go7007*, %struct.go7007** %4, align 8
  %107 = getelementptr inbounds %struct.go7007, %struct.go7007* %106, i32 0, i32 1
  store i32 136, i32* %107, align 4
  br label %108

108:                                              ; preds = %96, %91, %88
  br label %436

109:                                              ; preds = %57
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %128 [
    i32 0, label %115
    i32 1, label %118
    i32 255, label %121
  ]

115:                                              ; preds = %109
  %116 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %117 = call i32 @store_byte(%struct.go7007_buffer* %116, i32 0)
  br label %142

118:                                              ; preds = %109
  %119 = load %struct.go7007*, %struct.go7007** %4, align 8
  %120 = getelementptr inbounds %struct.go7007, %struct.go7007* %119, i32 0, i32 1
  store i32 137, i32* %120, align 4
  br label %142

121:                                              ; preds = %109
  %122 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %123 = call i32 @store_byte(%struct.go7007_buffer* %122, i32 0)
  %124 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %125 = call i32 @store_byte(%struct.go7007_buffer* %124, i32 0)
  %126 = load %struct.go7007*, %struct.go7007** %4, align 8
  %127 = getelementptr inbounds %struct.go7007, %struct.go7007* %126, i32 0, i32 1
  store i32 135, i32* %127, align 4
  br label %142

128:                                              ; preds = %109
  %129 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %130 = call i32 @store_byte(%struct.go7007_buffer* %129, i32 0)
  %131 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %132 = call i32 @store_byte(%struct.go7007_buffer* %131, i32 0)
  %133 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @store_byte(%struct.go7007_buffer* %133, i32 %138)
  %140 = load %struct.go7007*, %struct.go7007** %4, align 8
  %141 = getelementptr inbounds %struct.go7007, %struct.go7007* %140, i32 0, i32 1
  store i32 136, i32* %141, align 4
  br label %142

142:                                              ; preds = %128, %121, %118, %115
  br label %436

143:                                              ; preds = %57
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 248
  br i1 %149, label %150, label %166

150:                                              ; preds = %143
  %151 = load %struct.go7007*, %struct.go7007** %4, align 8
  %152 = getelementptr inbounds %struct.go7007, %struct.go7007* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %157 = call i32 @store_byte(%struct.go7007_buffer* %156, i32 0)
  %158 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %159 = call i32 @store_byte(%struct.go7007_buffer* %158, i32 0)
  %160 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %161 = call i32 @store_byte(%struct.go7007_buffer* %160, i32 1)
  %162 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %163 = call i32 @store_byte(%struct.go7007_buffer* %162, i32 248)
  %164 = load %struct.go7007*, %struct.go7007** %4, align 8
  %165 = getelementptr inbounds %struct.go7007, %struct.go7007* %164, i32 0, i32 1
  store i32 136, i32* %165, align 4
  br label %436

166:                                              ; preds = %150, %143
  %167 = load %struct.go7007*, %struct.go7007** %4, align 8
  %168 = getelementptr inbounds %struct.go7007, %struct.go7007* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 130
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = load %struct.go7007*, %struct.go7007** %4, align 8
  %173 = getelementptr inbounds %struct.go7007, %struct.go7007* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 129
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load %struct.go7007*, %struct.go7007** %4, align 8
  %178 = getelementptr inbounds %struct.go7007, %struct.go7007* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 128
  br i1 %180, label %181, label %247

181:                                              ; preds = %176, %171, %166
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %205, label %189

189:                                              ; preds = %181
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %189
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %247

205:                                              ; preds = %197, %189, %181
  %206 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %207 = icmp eq %struct.go7007_buffer* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  %209 = load %struct.go7007*, %struct.go7007** %4, align 8
  %210 = getelementptr inbounds %struct.go7007, %struct.go7007* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208, %205
  %214 = load %struct.go7007*, %struct.go7007** %4, align 8
  %215 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %216 = call %struct.go7007_buffer* @frame_boundary(%struct.go7007* %214, %struct.go7007_buffer* %215)
  store %struct.go7007_buffer* %216, %struct.go7007_buffer** %7, align 8
  br label %217

217:                                              ; preds = %213, %208
  %218 = load i32*, i32** %5, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load %struct.go7007*, %struct.go7007** %4, align 8
  %227 = getelementptr inbounds %struct.go7007, %struct.go7007* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %229 = icmp ne %struct.go7007_buffer* %228, null
  br i1 %229, label %230, label %246

230:                                              ; preds = %217
  %231 = load %struct.go7007*, %struct.go7007** %4, align 8
  %232 = getelementptr inbounds %struct.go7007, %struct.go7007* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %237 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %245 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %235, %230, %217
  br label %247

247:                                              ; preds = %246, %197, %176
  %248 = load i32*, i32** %5, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  switch i32 %252, label %279 [
    i32 245, label %253
    i32 246, label %258
    i32 248, label %261
    i32 255, label %270
  ]

253:                                              ; preds = %247
  %254 = load %struct.go7007*, %struct.go7007** %4, align 8
  %255 = getelementptr inbounds %struct.go7007, %struct.go7007* %254, i32 0, i32 3
  store i32 12, i32* %255, align 4
  %256 = load %struct.go7007*, %struct.go7007** %4, align 8
  %257 = getelementptr inbounds %struct.go7007, %struct.go7007* %256, i32 0, i32 1
  store i32 133, i32* %257, align 4
  br label %295

258:                                              ; preds = %247
  %259 = load %struct.go7007*, %struct.go7007** %4, align 8
  %260 = getelementptr inbounds %struct.go7007, %struct.go7007* %259, i32 0, i32 1
  store i32 132, i32* %260, align 4
  br label %295

261:                                              ; preds = %247
  %262 = load %struct.go7007*, %struct.go7007** %4, align 8
  %263 = getelementptr inbounds %struct.go7007, %struct.go7007* %262, i32 0, i32 3
  store i32 0, i32* %263, align 4
  %264 = load %struct.go7007*, %struct.go7007** %4, align 8
  %265 = getelementptr inbounds %struct.go7007, %struct.go7007* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @memset(i32 %266, i32 0, i32 4)
  %268 = load %struct.go7007*, %struct.go7007** %4, align 8
  %269 = getelementptr inbounds %struct.go7007, %struct.go7007* %268, i32 0, i32 1
  store i32 134, i32* %269, align 4
  br label %295

270:                                              ; preds = %247
  %271 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %272 = call i32 @store_byte(%struct.go7007_buffer* %271, i32 0)
  %273 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %274 = call i32 @store_byte(%struct.go7007_buffer* %273, i32 0)
  %275 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %276 = call i32 @store_byte(%struct.go7007_buffer* %275, i32 1)
  %277 = load %struct.go7007*, %struct.go7007** %4, align 8
  %278 = getelementptr inbounds %struct.go7007, %struct.go7007* %277, i32 0, i32 1
  store i32 135, i32* %278, align 4
  br label %295

279:                                              ; preds = %247
  %280 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %281 = call i32 @store_byte(%struct.go7007_buffer* %280, i32 0)
  %282 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %283 = call i32 @store_byte(%struct.go7007_buffer* %282, i32 0)
  %284 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %285 = call i32 @store_byte(%struct.go7007_buffer* %284, i32 1)
  %286 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %287 = load i32*, i32** %5, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @store_byte(%struct.go7007_buffer* %286, i32 %291)
  %293 = load %struct.go7007*, %struct.go7007** %4, align 8
  %294 = getelementptr inbounds %struct.go7007, %struct.go7007* %293, i32 0, i32 1
  store i32 136, i32* %294, align 4
  br label %295

295:                                              ; preds = %279, %270, %261, %258, %253
  br label %436

296:                                              ; preds = %57
  %297 = load i32*, i32** %5, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  switch i32 %301, label %321 [
    i32 0, label %302
    i32 255, label %307
    i32 216, label %310
  ]

302:                                              ; preds = %296
  %303 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %304 = call i32 @store_byte(%struct.go7007_buffer* %303, i32 255)
  %305 = load %struct.go7007*, %struct.go7007** %4, align 8
  %306 = getelementptr inbounds %struct.go7007, %struct.go7007* %305, i32 0, i32 1
  store i32 139, i32* %306, align 4
  br label %333

307:                                              ; preds = %296
  %308 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %309 = call i32 @store_byte(%struct.go7007_buffer* %308, i32 255)
  br label %333

310:                                              ; preds = %296
  %311 = load %struct.go7007*, %struct.go7007** %4, align 8
  %312 = getelementptr inbounds %struct.go7007, %struct.go7007* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load %struct.go7007*, %struct.go7007** %4, align 8
  %318 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %319 = call %struct.go7007_buffer* @frame_boundary(%struct.go7007* %317, %struct.go7007_buffer* %318)
  store %struct.go7007_buffer* %319, %struct.go7007_buffer** %7, align 8
  br label %320

320:                                              ; preds = %316, %310
  br label %321

321:                                              ; preds = %296, %320
  %322 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %323 = call i32 @store_byte(%struct.go7007_buffer* %322, i32 255)
  %324 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %325 = load i32*, i32** %5, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @store_byte(%struct.go7007_buffer* %324, i32 %329)
  %331 = load %struct.go7007*, %struct.go7007** %4, align 8
  %332 = getelementptr inbounds %struct.go7007, %struct.go7007* %331, i32 0, i32 1
  store i32 136, i32* %332, align 4
  br label %333

333:                                              ; preds = %321, %307, %302
  br label %436

334:                                              ; preds = %57
  %335 = load i32*, i32** %5, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = shl i32 %339, 8
  %341 = load %struct.go7007*, %struct.go7007** %4, align 8
  %342 = getelementptr inbounds %struct.go7007, %struct.go7007* %341, i32 0, i32 3
  store i32 %340, i32* %342, align 4
  %343 = load %struct.go7007*, %struct.go7007** %4, align 8
  %344 = getelementptr inbounds %struct.go7007, %struct.go7007* %343, i32 0, i32 1
  store i32 131, i32* %344, align 4
  br label %436

345:                                              ; preds = %57
  %346 = load i32*, i32** %5, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.go7007*, %struct.go7007** %4, align 8
  %352 = getelementptr inbounds %struct.go7007, %struct.go7007* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 4
  %355 = load %struct.go7007*, %struct.go7007** %4, align 8
  %356 = getelementptr inbounds %struct.go7007, %struct.go7007* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %345
  %360 = load %struct.go7007*, %struct.go7007** %4, align 8
  %361 = getelementptr inbounds %struct.go7007, %struct.go7007* %360, i32 0, i32 1
  store i32 133, i32* %361, align 4
  br label %365

362:                                              ; preds = %345
  %363 = load %struct.go7007*, %struct.go7007** %4, align 8
  %364 = getelementptr inbounds %struct.go7007, %struct.go7007* %363, i32 0, i32 1
  store i32 136, i32* %364, align 4
  br label %365

365:                                              ; preds = %362, %359
  br label %436

366:                                              ; preds = %57
  %367 = load %struct.go7007*, %struct.go7007** %4, align 8
  %368 = getelementptr inbounds %struct.go7007, %struct.go7007* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = icmp slt i32 %369, 204
  br i1 %370, label %371, label %399

371:                                              ; preds = %366
  %372 = load %struct.go7007*, %struct.go7007** %4, align 8
  %373 = getelementptr inbounds %struct.go7007, %struct.go7007* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 1
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %389

377:                                              ; preds = %371
  %378 = load i32*, i32** %5, align 8
  %379 = load i32, i32* %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.go7007*, %struct.go7007** %4, align 8
  %384 = getelementptr inbounds %struct.go7007, %struct.go7007* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 8
  %387 = load %struct.go7007*, %struct.go7007** %4, align 8
  %388 = call i32 @write_bitmap_word(%struct.go7007* %387)
  br label %398

389:                                              ; preds = %371
  %390 = load i32*, i32** %5, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = shl i32 %394, 8
  %396 = load %struct.go7007*, %struct.go7007** %4, align 8
  %397 = getelementptr inbounds %struct.go7007, %struct.go7007* %396, i32 0, i32 4
  store i32 %395, i32* %397, align 8
  br label %398

398:                                              ; preds = %389, %377
  br label %416

399:                                              ; preds = %366
  %400 = load %struct.go7007*, %struct.go7007** %4, align 8
  %401 = getelementptr inbounds %struct.go7007, %struct.go7007* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 207
  br i1 %403, label %404, label %415

404:                                              ; preds = %399
  %405 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %406 = icmp ne %struct.go7007_buffer* %405, null
  br i1 %406, label %407, label %415

407:                                              ; preds = %404
  %408 = load i32*, i32** %5, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.go7007_buffer*, %struct.go7007_buffer** %7, align 8
  %414 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  br label %415

415:                                              ; preds = %407, %404, %399
  br label %416

416:                                              ; preds = %415, %398
  %417 = load %struct.go7007*, %struct.go7007** %4, align 8
  %418 = getelementptr inbounds %struct.go7007, %struct.go7007* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 4
  %421 = icmp eq i32 %420, 208
  br i1 %421, label %422, label %425

422:                                              ; preds = %416
  %423 = load %struct.go7007*, %struct.go7007** %4, align 8
  %424 = getelementptr inbounds %struct.go7007, %struct.go7007* %423, i32 0, i32 1
  store i32 136, i32* %424, align 4
  br label %425

425:                                              ; preds = %422, %416
  br label %436

426:                                              ; preds = %57
  %427 = load %struct.go7007*, %struct.go7007** %4, align 8
  %428 = getelementptr inbounds %struct.go7007, %struct.go7007* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, -1
  store i32 %430, i32* %428, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = load %struct.go7007*, %struct.go7007** %4, align 8
  %434 = getelementptr inbounds %struct.go7007, %struct.go7007* %433, i32 0, i32 1
  store i32 136, i32* %434, align 4
  br label %435

435:                                              ; preds = %432, %426
  br label %436

436:                                              ; preds = %57, %435, %425, %365, %334, %333, %295, %155, %142, %108, %81
  br label %437

437:                                              ; preds = %436
  %438 = load i32, i32* %8, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %8, align 4
  br label %21

440:                                              ; preds = %21
  ret void
}

declare dso_local i32 @v4l2_info(i32*, i8*) #1

declare dso_local i32 @store_byte(%struct.go7007_buffer*, i32) #1

declare dso_local %struct.go7007_buffer* @frame_boundary(%struct.go7007*, %struct.go7007_buffer*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @write_bitmap_word(%struct.go7007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
