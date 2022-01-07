; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fwht_pixfmt_info* }
%struct.v4l2_fwht_pixfmt_info = type { i32, i64, i32, i32 }
%struct.fwht_cframe_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.fwht_cframe = type { i32, i32*, i32, i32 }
%struct.fwht_raw_frame = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV42 = common dso_local global i64 0, align 8
@FWHT_FRAME_PCODED = common dso_local global i32 0, align 4
@FWHT_MAGIC1 = common dso_local global i32 0, align 4
@FWHT_MAGIC2 = common dso_local global i32 0, align 4
@FWHT_VERSION = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_OFFSET = common dso_local global i32 0, align 4
@FWHT_LUMA_UNENCODED = common dso_local global i32 0, align 4
@FWHT_FL_LUMA_IS_UNCOMPRESSED = common dso_local global i32 0, align 4
@FWHT_CB_UNENCODED = common dso_local global i32 0, align 4
@FWHT_FL_CB_IS_UNCOMPRESSED = common dso_local global i32 0, align 4
@FWHT_CR_UNENCODED = common dso_local global i32 0, align 4
@FWHT_FL_CR_IS_UNCOMPRESSED = common dso_local global i32 0, align 4
@FWHT_ALPHA_UNENCODED = common dso_local global i32 0, align 4
@FWHT_FL_ALPHA_IS_UNCOMPRESSED = common dso_local global i32 0, align 4
@FWHT_FL_I_FRAME = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_HEIGHT = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_fwht_encode(%struct.v4l2_fwht_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_fwht_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %11 = alloca %struct.fwht_cframe_hdr*, align 8
  %12 = alloca %struct.fwht_cframe, align 8
  %13 = alloca %struct.fwht_raw_frame, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.v4l2_fwht_state* %0, %struct.v4l2_fwht_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %26, i32 0, i32 13
  %28 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %27, align 8
  store %struct.v4l2_fwht_pixfmt_info* %28, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %30 = icmp ne %struct.v4l2_fwht_pixfmt_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %262

34:                                               ; preds = %3
  %35 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @prepare_raw_frame(%struct.fwht_raw_frame* %13, %struct.v4l2_fwht_pixfmt_info* %35, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %262

43:                                               ; preds = %34
  %44 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = udiv i32 %49, 2
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %53 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_PIX_FMT_NV24, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_PIX_FMT_NV42, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %9, align 4
  %65 = mul i32 %64, 2
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %12, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %12, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 80
  %77 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %12, i32 0, i32 1
  store i32* %76, i32** %77, align 8
  %78 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %78, i32 0, i32 10
  %80 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp eq i32 %88, %92
  %94 = zext i1 %93 to i32
  %95 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @fwht_encode_frame(%struct.fwht_raw_frame* %13, i32* %79, %struct.fwht_cframe* %12, i32 %85, i32 %94, i32 %97, i32 %100, i32 %103, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @FWHT_FRAME_PCODED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %66
  %111 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %111, i32 0, i32 2
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %66
  %114 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %119 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %124 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %113
  %126 = load i32*, i32** %7, align 8
  %127 = bitcast i32* %126 to %struct.fwht_cframe_hdr*
  store %struct.fwht_cframe_hdr* %127, %struct.fwht_cframe_hdr** %11, align 8
  %128 = load i32, i32* @FWHT_MAGIC1, align 4
  %129 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %130 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %129, i32 0, i32 10
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @FWHT_MAGIC2, align 4
  %132 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %133 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @FWHT_VERSION, align 4
  %135 = call i8* @htonl(i32 %134)
  %136 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %137 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %136, i32 0, i32 8
  store i8* %135, i8** %137, align 8
  %138 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %139 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @htonl(i32 %140)
  %142 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %143 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  %144 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @htonl(i32 %146)
  %148 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %149 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %151 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  %154 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_OFFSET, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %15, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %15, align 4
  %158 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %159 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %15, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @FWHT_LUMA_UNENCODED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %125
  %168 = load i32, i32* @FWHT_FL_LUMA_IS_UNCOMPRESSED, align 4
  %169 = load i32, i32* %15, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %167, %125
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @FWHT_CB_UNENCODED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @FWHT_FL_CB_IS_UNCOMPRESSED, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @FWHT_CR_UNENCODED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @FWHT_FL_CR_IS_UNCOMPRESSED, align 4
  %187 = load i32, i32* %15, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @FWHT_ALPHA_UNENCODED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @FWHT_FL_ALPHA_IS_UNCOMPRESSED, align 4
  %196 = load i32, i32* %15, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @FWHT_FRAME_PCODED, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* @FWHT_FL_I_FRAME, align 4
  %205 = load i32, i32* %15, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %15, align 4
  br label %207

207:                                              ; preds = %203, %198
  %208 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %13, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i32, i32* @FWHT_FL_CHROMA_FULL_HEIGHT, align 4
  %213 = load i32, i32* %15, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %211, %207
  %216 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %13, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i32, i32* @FWHT_FL_CHROMA_FULL_WIDTH, align 4
  %221 = load i32, i32* %15, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %219, %215
  %224 = load i32, i32* %15, align 4
  %225 = call i8* @htonl(i32 %224)
  %226 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %227 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %226, i32 0, i32 5
  store i8* %225, i8** %227, align 8
  %228 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %229 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @htonl(i32 %230)
  %232 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %233 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %232, i32 0, i32 4
  store i8* %231, i8** %233, align 8
  %234 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %235 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @htonl(i32 %236)
  %238 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %239 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %238, i32 0, i32 3
  store i8* %237, i8** %239, align 8
  %240 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %241 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @htonl(i32 %242)
  %244 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %245 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %244, i32 0, i32 2
  store i8* %243, i8** %245, align 8
  %246 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %5, align 8
  %247 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @htonl(i32 %248)
  %250 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %251 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %250, i32 0, i32 1
  store i8* %249, i8** %251, align 8
  %252 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %12, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i8* @htonl(i32 %253)
  %255 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %11, align 8
  %256 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %255, i32 0, i32 0
  store i8* %254, i8** %256, align 8
  %257 = getelementptr inbounds %struct.fwht_cframe, %struct.fwht_cframe* %12, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add i64 %259, 80
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %223, %40, %31
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i64 @prepare_raw_frame(%struct.fwht_raw_frame*, %struct.v4l2_fwht_pixfmt_info*, i32*, i32) #1

declare dso_local i32 @fwht_encode_frame(%struct.fwht_raw_frame*, i32*, %struct.fwht_cframe*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
