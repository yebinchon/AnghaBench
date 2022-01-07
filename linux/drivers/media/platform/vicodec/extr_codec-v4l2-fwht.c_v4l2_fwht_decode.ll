; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_state = type { i32, i32, i32, i8*, i8*, %struct.fwht_raw_frame, %struct.TYPE_2__, i8*, i8*, i8*, i8*, %struct.v4l2_fwht_pixfmt_info* }
%struct.fwht_raw_frame = type { i32* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i32, i32, i32, i64 }
%struct.fwht_cframe = type { i8*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@FWHT_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"version %d is not supported, current version is %d\0A\00", align 1
@FWHT_MAGIC1 = common dso_local global i64 0, align 8
@FWHT_MAGIC2 = common dso_local global i64 0, align 8
@FWHT_FL_PIXENC_MSK = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_MSK = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_OFFSET = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_WIDTH = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_HEIGHT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV42 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_fwht_decode(%struct.v4l2_fwht_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_fwht_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fwht_cframe, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fwht_raw_frame, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.v4l2_fwht_state* %0, %struct.v4l2_fwht_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 3, i32* %10, align 4
  %20 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %28, %31
  store i32 %32, i32* %18, align 4
  %33 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %33, i32 0, i32 11
  %35 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %34, align 8
  %36 = icmp ne %struct.v4l2_fwht_pixfmt_info* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %283

40:                                               ; preds = %3
  %41 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %41, i32 0, i32 11
  %43 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %42, align 8
  store %struct.v4l2_fwht_pixfmt_info* %43, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %44 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @ntohl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @FWHT_VERSION, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %40
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @FWHT_VERSION, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %283

62:                                               ; preds = %52
  %63 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FWHT_MAGIC1, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FWHT_MAGIC2, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69, %62
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %283

79:                                               ; preds = %69
  %80 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @ntohl(i32 %83)
  %85 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %84, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %79
  %90 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @ntohl(i32 %93)
  %95 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %89, %79
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %283

102:                                              ; preds = %89
  %103 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @ntohl(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp uge i32 %109, 2
  br i1 %110, label %111, label %129

111:                                              ; preds = %102
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @FWHT_FL_PIXENC_MSK, align 4
  %114 = and i32 %112, %113
  %115 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %116 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %283

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_MSK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_OFFSET, align 4
  %127 = ashr i32 %125, %126
  %128 = add nsw i32 1, %127
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %122, %102
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %132 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %283

138:                                              ; preds = %129
  %139 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %140 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @ntohl(i32 %142)
  %144 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %144, i32 0, i32 10
  store i8* %143, i8** %145, align 8
  %146 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @ntohl(i32 %149)
  %151 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %152 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %154 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @ntohl(i32 %156)
  %158 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %159 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %158, i32 0, i32 8
  store i8* %157, i8** %159, align 8
  %160 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @ntohl(i32 %163)
  %165 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %166 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %9, i32 0, i32 1
  store i32* %167, i32** %168, align 8
  %169 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %170 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @ntohl(i32 %172)
  %174 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %9, i32 0, i32 0
  store i8* %173, i8** %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @FWHT_FL_CHROMA_FULL_WIDTH, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 1, i32 2
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @FWHT_FL_CHROMA_FULL_HEIGHT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 1, i32 2
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %189 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %187, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %138
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %195 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %138
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %283

201:                                              ; preds = %192
  %202 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %18, align 4
  %205 = call i64 @prepare_raw_frame(%struct.fwht_raw_frame* %15, %struct.v4l2_fwht_pixfmt_info* %202, i32* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %4, align 4
  br label %283

210:                                              ; preds = %201
  %211 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %212 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 3
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i32, i32* %16, align 4
  %217 = udiv i32 %216, 2
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = udiv i32 %218, 2
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %215, %210
  %221 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %222 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @V4L2_PIX_FMT_NV24, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %228 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @V4L2_PIX_FMT_NV42, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %226, %220
  %233 = load i32, i32* %16, align 4
  %234 = mul i32 %233, 2
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %17, align 4
  %236 = mul i32 %235, 2
  store i32 %236, i32* %17, align 4
  br label %237

237:                                              ; preds = %232, %226
  %238 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %239 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %242 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = mul i32 %240, %243
  store i32 %244, i32* %19, align 4
  %245 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %246 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %245, i32 0, i32 5
  %247 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %12, align 8
  %248 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %249 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %19, align 4
  %253 = call i64 @prepare_raw_frame(%struct.fwht_raw_frame* %246, %struct.v4l2_fwht_pixfmt_info* %247, i32* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %237
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %4, align 4
  br label %283

258:                                              ; preds = %237
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %10, align 4
  %261 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %262 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %261, i32 0, i32 3
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %265 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %264, i32 0, i32 4
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %268 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %267, i32 0, i32 5
  %269 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %270 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %274 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %16, align 4
  %277 = call i32 @fwht_decode_frame(%struct.fwht_cframe* %9, i32 %259, i32 %260, i8* %263, i8* %266, %struct.fwht_raw_frame* %268, i32 %271, i32 %272, %struct.fwht_raw_frame* %15, i32 %275, i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %258
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %4, align 4
  br label %283

282:                                              ; preds = %258
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %282, %279, %255, %207, %198, %135, %119, %99, %76, %56, %37
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i64 @prepare_raw_frame(%struct.fwht_raw_frame*, %struct.v4l2_fwht_pixfmt_info*, i32*, i32) #1

declare dso_local i32 @fwht_decode_frame(%struct.fwht_cframe*, i32, i32, i8*, i8*, %struct.fwht_raw_frame*, i32, i32, %struct.fwht_raw_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
