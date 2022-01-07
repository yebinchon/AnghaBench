; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_parse_compress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_parse_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i8*, i32, i32, i32, i32, i32, i32, %struct.usbvision_frame* }
%struct.usbvision_frame = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@usbvision_parse_compress.Y = internal global i8* null, align 8
@usbvision_parse_compress.U = internal global i8* null, align 8
@usbvision_parse_compress.V = internal global i8* null, align 8
@V4L2_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YVU420 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@parse_state_out = common dso_local global i32 0, align 4
@parse_state_next_frame = common dso_local global i32 0, align 4
@MAX_FRAME_WIDTH = common dso_local global i32 0, align 4
@parse_state_continue = common dso_local global i32 0, align 4
@USBVISION_STRIP_HEADER_LEN = common dso_local global i32 0, align 4
@USBVISION_STRIP_LEN_MAX = common dso_local global i32 0, align 4
@USBVISION_STRIP_MAGIC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i64*)* @usbvision_parse_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_parse_compress(%struct.usb_usbvision* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_usbvision*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.usbvision_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [400 x i8], align 16
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %24 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %25 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %24, i32 0, i32 7
  %26 = load %struct.usbvision_frame*, %struct.usbvision_frame** %25, align 8
  store %struct.usbvision_frame* %26, %struct.usbvision_frame** %6, align 8
  %27 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %28 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %31 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %35 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %42 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %40, %2
  %48 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %49 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %52 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %55 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %50, i64 %58
  store i8* %59, i8** %7, align 8
  br label %73

60:                                               ; preds = %40
  %61 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %62 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %65 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %68 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %63, i64 %71
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %60, %47
  %74 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %75 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %73
  %81 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %82 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %88 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 1
  %91 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %92 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %86, i64 %95
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %20, align 4
  %99 = ashr i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8* %101, i8** %9, align 8
  br label %132

102:                                              ; preds = %73
  %103 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %104 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %102
  %110 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %111 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %117 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %120 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %118, %121
  %123 = ashr i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %115, i64 %124
  store i8* %125, i8** %9, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %20, align 4
  %128 = ashr i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8* %130, i8** %8, align 8
  br label %131

131:                                              ; preds = %109, %102
  br label %132

132:                                              ; preds = %131, %80
  %133 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %134 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %139 = call i32 @usbvision_adjust_compression(%struct.usb_usbvision* %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %142 = call i32 @scratch_len(%struct.usb_usbvision* %141)
  %143 = icmp slt i32 %142, 3
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @parse_state_out, align 4
  store i32 %145, i32* %3, align 4
  br label %615

146:                                              ; preds = %140
  %147 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %148 = call i32 @scratch_set_extra_ptr(%struct.usb_usbvision* %147, i32* %15, i32 0)
  %149 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %150 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %151 = call i32 @scratch_get_extra(%struct.usb_usbvision* %149, i8* %150, i32* %15, i32 3)
  %152 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp ne i32 %154, 90
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %158 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %161, i32* %3, align 4
  br label %615

162:                                              ; preds = %146
  %163 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %164 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %172 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %170, %162
  %176 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = mul i32 2, %178
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp sgt i32 %180, 400
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %184 = call i32 @usbvision_request_intra(%struct.usb_usbvision* %183)
  br label %185

185:                                              ; preds = %182, %175
  %186 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %187 = call i32 @scratch_len(%struct.usb_usbvision* %186)
  %188 = load i32, i32* %14, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @parse_state_out, align 4
  store i32 %191, i32* %3, align 4
  br label %615

192:                                              ; preds = %185
  %193 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %194 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %246

197:                                              ; preds = %192
  %198 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %199 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %202 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %205 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %200, i64 %208
  store i8* %209, i8** @usbvision_parse_compress.Y, align 8
  %210 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %211 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %217 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sdiv i32 %218, 2
  %220 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %221 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = sdiv i32 %222, 2
  %224 = mul nsw i32 %219, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %215, i64 %225
  store i8* %226, i8** @usbvision_parse_compress.U, align 8
  %227 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %228 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %20, align 4
  %231 = sdiv i32 %230, 4
  %232 = mul nsw i32 %231, 5
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %229, i64 %233
  %235 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %236 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sdiv i32 %237, 2
  %239 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %240 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = sdiv i32 %241, 2
  %243 = mul nsw i32 %238, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %234, i64 %244
  store i8* %245, i8** @usbvision_parse_compress.V, align 8
  br label %248

246:                                              ; preds = %192
  %247 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %247, i32* %3, align 4
  br label %615

248:                                              ; preds = %197
  %249 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %250 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @MAX_FRAME_WIDTH, align 4
  %253 = mul nsw i32 %251, %252
  store i32 %253, i32* %19, align 4
  %254 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %255 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %256 = load i32, i32* %14, align 4
  %257 = call i32 @scratch_get(%struct.usb_usbvision* %254, i8* %255, i32 %256)
  %258 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %259 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %13, align 4
  store i32 3, i32* %18, align 4
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %13, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sdiv i32 %263, 96
  %265 = add nsw i32 %261, %264
  %266 = load i32, i32* %13, align 4
  %267 = sdiv i32 %266, 2
  %268 = sub nsw i32 %267, 1
  %269 = sdiv i32 %268, 96
  %270 = add nsw i32 %265, %269
  %271 = add nsw i32 %270, 2
  store i32 %271, i32* %16, align 4
  %272 = load i32, i32* %16, align 4
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %275 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 8
  %276 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %277 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %278 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @usbvision_decompress(%struct.usb_usbvision* %276, i8* %277, i8* %278, i32* %17, i32* %18, i32 %279)
  %281 = load i32, i32* %14, align 4
  %282 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %283 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp sgt i32 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %248
  %287 = load i32, i32* %14, align 4
  %288 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %289 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 4
  br label %290

290:                                              ; preds = %286, %248
  %291 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %292 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = srem i32 %293, 2
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %298 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %299 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sdiv i32 %300, 2
  %302 = call i32 @usbvision_decompress(%struct.usb_usbvision* %297, i8* %298, i8* %299, i32* %17, i32* %18, i32 %301)
  br label %310

303:                                              ; preds = %290
  %304 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %305 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %306 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %307 = load i32, i32* %13, align 4
  %308 = sdiv i32 %307, 2
  %309 = call i32 @usbvision_decompress(%struct.usb_usbvision* %304, i8* %305, i8* %306, i32* %17, i32* %18, i32 %308)
  br label %310

310:                                              ; preds = %303, %296
  %311 = load i32, i32* %17, align 4
  %312 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %313 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = icmp sgt i32 %311, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load i32, i32* %17, align 4
  %318 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %319 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %316, %310
  %321 = load i32, i32* %17, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp sgt i32 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %326 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  br label %329

329:                                              ; preds = %324, %320
  store i32 0, i32* %12, align 4
  br label %330

330:                                              ; preds = %560, %329
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %13, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %563

334:                                              ; preds = %330
  %335 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %336 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %335, i32 0, i32 6
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %373

341:                                              ; preds = %334
  %342 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = load i8*, i8** %7, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %7, align 8
  store i8 %346, i8* %347, align 1
  %349 = load i32, i32* %12, align 4
  %350 = and i32 %349, 1
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %341
  %353 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %354 = load i32, i32* %12, align 4
  %355 = sdiv i32 %354, 2
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  br label %368

360:                                              ; preds = %341
  %361 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %362 = load i32, i32* %12, align 4
  %363 = sdiv i32 %362, 2
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  br label %368

368:                                              ; preds = %360, %352
  %369 = phi i32 [ %359, %352 ], [ %367, %360 ]
  %370 = trunc i32 %369 to i8
  %371 = load i8*, i8** %7, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %7, align 8
  store i8 %370, i8* %371, align 1
  br label %557

373:                                              ; preds = %334
  %374 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %375 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %374, i32 0, i32 6
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %410

380:                                              ; preds = %373
  %381 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = load i8*, i8** %7, align 8
  %387 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %387, i8** %7, align 8
  store i8 %385, i8* %386, align 1
  %388 = load i32, i32* %12, align 4
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %380
  %392 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %393 = load i32, i32* %12, align 4
  %394 = ashr i32 %393, 1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* %392, i64 %395
  %397 = load i8, i8* %396, align 1
  %398 = load i8*, i8** %8, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %8, align 8
  store i8 %397, i8* %398, align 1
  br label %409

400:                                              ; preds = %380
  %401 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %402 = load i32, i32* %12, align 4
  %403 = ashr i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %401, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = load i8*, i8** %9, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %9, align 8
  store i8 %406, i8* %407, align 1
  br label %409

409:                                              ; preds = %400, %391
  br label %556

410:                                              ; preds = %373
  %411 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %412 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %411, i32 0, i32 6
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %451

417:                                              ; preds = %410
  %418 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %419 = load i32, i32* %12, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %418, i64 %420
  %422 = load i8, i8* %421, align 1
  %423 = load i8*, i8** %7, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %7, align 8
  store i8 %422, i8* %423, align 1
  %425 = load i32, i32* %12, align 4
  %426 = and i32 %425, 1
  %427 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %428 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = and i32 %429, 1
  %431 = or i32 %426, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %450, label %433

433:                                              ; preds = %417
  %434 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %435 = load i32, i32* %12, align 4
  %436 = ashr i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %434, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = load i8*, i8** %8, align 8
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %8, align 8
  store i8 %439, i8* %440, align 1
  %442 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %443 = load i32, i32* %12, align 4
  %444 = ashr i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %442, i64 %445
  %447 = load i8, i8* %446, align 1
  %448 = load i8*, i8** %9, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %9, align 8
  store i8 %447, i8* %448, align 1
  br label %450

450:                                              ; preds = %433, %417
  br label %555

451:                                              ; preds = %410
  %452 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %453 = load i32, i32* %12, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8, i8* %452, i64 %454
  %456 = load i8, i8* %455, align 1
  %457 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sdiv i32 %458, 2
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %457, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %464 = load i32, i32* %12, align 4
  %465 = sdiv i32 %464, 2
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, i8* %463, i64 %466
  %468 = load i8, i8* %467, align 1
  %469 = load i8, i8* %21, align 1
  %470 = load i8, i8* %22, align 1
  %471 = load i8, i8* %23, align 1
  %472 = call i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext %456, i8 zeroext %462, i8 zeroext %468, i8 zeroext %469, i8 zeroext %470, i8 zeroext %471)
  %473 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %474 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %473, i32 0, i32 6
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  switch i32 %476, label %554 [
    i32 132, label %477
    i32 129, label %485
    i32 128, label %509
    i32 131, label %532
    i32 130, label %542
  ]

477:                                              ; preds = %451
  %478 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %479 = load i32, i32* %12, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8, i8* %478, i64 %480
  %482 = load i8, i8* %481, align 1
  %483 = load i8*, i8** %7, align 8
  %484 = getelementptr inbounds i8, i8* %483, i32 1
  store i8* %484, i8** %7, align 8
  store i8 %482, i8* %483, align 1
  br label %554

485:                                              ; preds = %451
  %486 = load i8, i8* %21, align 1
  %487 = zext i8 %486 to i32
  %488 = and i32 31, %487
  %489 = load i8, i8* %22, align 1
  %490 = zext i8 %489 to i32
  %491 = shl i32 %490, 5
  %492 = and i32 224, %491
  %493 = or i32 %488, %492
  %494 = trunc i32 %493 to i8
  %495 = load i8*, i8** %7, align 8
  %496 = getelementptr inbounds i8, i8* %495, i32 1
  store i8* %496, i8** %7, align 8
  store i8 %494, i8* %495, align 1
  %497 = load i8, i8* %22, align 1
  %498 = zext i8 %497 to i32
  %499 = ashr i32 %498, 3
  %500 = and i32 3, %499
  %501 = load i8, i8* %23, align 1
  %502 = zext i8 %501 to i32
  %503 = shl i32 %502, 2
  %504 = and i32 124, %503
  %505 = or i32 %500, %504
  %506 = trunc i32 %505 to i8
  %507 = load i8*, i8** %7, align 8
  %508 = getelementptr inbounds i8, i8* %507, i32 1
  store i8* %508, i8** %7, align 8
  store i8 %506, i8* %507, align 1
  br label %554

509:                                              ; preds = %451
  %510 = load i8, i8* %21, align 1
  %511 = zext i8 %510 to i32
  %512 = and i32 31, %511
  %513 = load i8, i8* %22, align 1
  %514 = zext i8 %513 to i32
  %515 = shl i32 %514, 5
  %516 = and i32 224, %515
  %517 = or i32 %512, %516
  %518 = trunc i32 %517 to i8
  %519 = load i8*, i8** %7, align 8
  %520 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %520, i8** %7, align 8
  store i8 %518, i8* %519, align 1
  %521 = load i8, i8* %22, align 1
  %522 = zext i8 %521 to i32
  %523 = ashr i32 %522, 3
  %524 = and i32 7, %523
  %525 = load i8, i8* %23, align 1
  %526 = zext i8 %525 to i32
  %527 = and i32 248, %526
  %528 = or i32 %524, %527
  %529 = trunc i32 %528 to i8
  %530 = load i8*, i8** %7, align 8
  %531 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %531, i8** %7, align 8
  store i8 %529, i8* %530, align 1
  br label %554

532:                                              ; preds = %451
  %533 = load i8, i8* %21, align 1
  %534 = load i8*, i8** %7, align 8
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %7, align 8
  store i8 %533, i8* %534, align 1
  %536 = load i8, i8* %22, align 1
  %537 = load i8*, i8** %7, align 8
  %538 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %538, i8** %7, align 8
  store i8 %536, i8* %537, align 1
  %539 = load i8, i8* %23, align 1
  %540 = load i8*, i8** %7, align 8
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %7, align 8
  store i8 %539, i8* %540, align 1
  br label %554

542:                                              ; preds = %451
  %543 = load i8, i8* %21, align 1
  %544 = load i8*, i8** %7, align 8
  %545 = getelementptr inbounds i8, i8* %544, i32 1
  store i8* %545, i8** %7, align 8
  store i8 %543, i8* %544, align 1
  %546 = load i8, i8* %22, align 1
  %547 = load i8*, i8** %7, align 8
  %548 = getelementptr inbounds i8, i8* %547, i32 1
  store i8* %548, i8** %7, align 8
  store i8 %546, i8* %547, align 1
  %549 = load i8, i8* %23, align 1
  %550 = load i8*, i8** %7, align 8
  %551 = getelementptr inbounds i8, i8* %550, i32 1
  store i8* %551, i8** %7, align 8
  store i8 %549, i8* %550, align 1
  %552 = load i8*, i8** %7, align 8
  %553 = getelementptr inbounds i8, i8* %552, i32 1
  store i8* %553, i8** %7, align 8
  br label %554

554:                                              ; preds = %451, %542, %532, %509, %485, %477
  br label %555

555:                                              ; preds = %554, %450
  br label %556

556:                                              ; preds = %555, %409
  br label %557

557:                                              ; preds = %556, %368
  %558 = load i32, i32* %19, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %19, align 4
  br label %560

560:                                              ; preds = %557
  %561 = load i32, i32* %12, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %12, align 4
  br label %330

563:                                              ; preds = %330
  %564 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %565 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %564, i32 0, i32 6
  %566 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %569 = icmp ne i32 %567, %568
  br i1 %569, label %570, label %578

570:                                              ; preds = %563
  %571 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %572 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %571, i32 0, i32 5
  %573 = load i32, i32* %572, align 8
  %574 = sext i32 %573 to i64
  %575 = load i64*, i64** %5, align 8
  %576 = load i64, i64* %575, align 8
  %577 = add nsw i64 %576, %574
  store i64 %577, i64* %575, align 8
  br label %599

578:                                              ; preds = %563
  %579 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %580 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %579, i32 0, i32 4
  %581 = load i32, i32* %580, align 4
  %582 = and i32 %581, 1
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %578
  %585 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %586 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %585, i32 0, i32 5
  %587 = load i32, i32* %586, align 8
  br label %593

588:                                              ; preds = %578
  %589 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %590 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %589, i32 0, i32 5
  %591 = load i32, i32* %590, align 8
  %592 = shl i32 %591, 1
  br label %593

593:                                              ; preds = %588, %584
  %594 = phi i32 [ %587, %584 ], [ %592, %588 ]
  %595 = sext i32 %594 to i64
  %596 = load i64*, i64** %5, align 8
  %597 = load i64, i64* %596, align 8
  %598 = add nsw i64 %597, %595
  store i64 %598, i64* %596, align 8
  br label %599

599:                                              ; preds = %593, %570
  %600 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %601 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %600, i32 0, i32 4
  %602 = load i32, i32* %601, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %601, align 4
  %604 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %605 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %608 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 4
  %610 = icmp sge i32 %606, %609
  br i1 %610, label %611, label %613

611:                                              ; preds = %599
  %612 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %612, i32* %3, align 4
  br label %615

613:                                              ; preds = %599
  %614 = load i32, i32* @parse_state_continue, align 4
  store i32 %614, i32* %3, align 4
  br label %615

615:                                              ; preds = %613, %611, %246, %190, %156, %144
  %616 = load i32, i32* %3, align 4
  ret i32 %616
}

declare dso_local i32 @usbvision_adjust_compression(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_len(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_set_extra_ptr(%struct.usb_usbvision*, i32*, i32) #1

declare dso_local i32 @scratch_get_extra(%struct.usb_usbvision*, i8*, i32*, i32) #1

declare dso_local i32 @usbvision_request_intra(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_get(%struct.usb_usbvision*, i8*, i32) #1

declare dso_local i32 @usbvision_decompress(%struct.usb_usbvision*, i8*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
