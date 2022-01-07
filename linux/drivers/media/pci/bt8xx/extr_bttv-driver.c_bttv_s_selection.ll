; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.bttv_fh = type { i32, i64, i64, %struct.bttv* }
%struct.bttv = type { i64, %struct.TYPE_7__, %struct.bttv_crop*, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.bttv_crop = type { i64, i64, i64, i64, %struct.TYPE_6__ }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@VIDEO_RESOURCES = common dso_local global i32 0, align 4
@bttv_tvnorms = common dso_local global %struct.TYPE_8__* null, align 8
@s32 = common dso_local global i32 0, align 4
@MAX_HDELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @bttv_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bttv_crop, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.bttv_fh*
  store %struct.bttv_fh* %18, %struct.bttv_fh** %8, align 8
  %19 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %20 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %19, i32 0, i32 3
  %21 = load %struct.bttv*, %struct.bttv** %20, align 8
  store %struct.bttv* %21, %struct.bttv** %9, align 8
  %22 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %251

36:                                               ; preds = %27, %3
  %37 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %251

45:                                               ; preds = %36
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %49 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %48, i32 0, i32 3
  %50 = load %struct.bttv*, %struct.bttv** %49, align 8
  %51 = load i32, i32* @VIDEO_RESOURCES, align 4
  %52 = call i64 @locked_btres(%struct.bttv* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %251

56:                                               ; preds = %45
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvnorms, align 8
  %58 = load %struct.bttv*, %struct.bttv** %9, align 8
  %59 = getelementptr inbounds %struct.bttv, %struct.bttv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store %struct.v4l2_rect* %63, %struct.v4l2_rect** %10, align 8
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %69 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %15, align 4
  %72 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %16, align 4
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bttv*, %struct.bttv** %9, align 8
  %83 = getelementptr inbounds %struct.bttv, %struct.bttv* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @max(i32 %81, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 32
  %88 = load i32, i32* %16, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %56
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %251

92:                                               ; preds = %56
  %93 = load i32, i32* @s32, align 4
  %94 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sub nsw i32 %99, 48
  %101 = call i8* @clamp_t(i32 %93, i32 %97, i32 %98, i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* @MAX_HDELAY, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @min(i32 %107, i32 %109)
  %111 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @s32, align 4
  %114 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  %123 = call i8* @clamp_t(i32 %113, i32 %117, i32 48, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @s32, align 4
  %128 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %133, 32
  %135 = call i8* @clamp_t(i32 %127, i32 %131, i32 %132, i32 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  %143 = and i32 %142, -2
  %144 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @s32, align 4
  %147 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %151, %154
  %156 = call i8* @clamp_t(i32 %146, i32 %150, i32 32, i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = and i32 %163, -2
  %165 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = call i32 @bttv_crop_calc_limits(%struct.bttv_crop* %12)
  %168 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %169 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %171 = bitcast %struct.TYPE_6__* %169 to i8*
  %172 = bitcast %struct.TYPE_6__* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %171, i8* align 8 %172, i64 16, i1 false)
  %173 = load %struct.bttv*, %struct.bttv** %9, align 8
  %174 = getelementptr inbounds %struct.bttv, %struct.bttv* %173, i32 0, i32 2
  %175 = load %struct.bttv_crop*, %struct.bttv_crop** %174, align 8
  %176 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %175, i64 1
  %177 = bitcast %struct.bttv_crop* %176 to i8*
  %178 = bitcast %struct.bttv_crop* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 48, i1 false)
  %179 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %180 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  %181 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %182 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %92
  %188 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %191 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.bttv*, %struct.bttv** %9, align 8
  %195 = getelementptr inbounds %struct.bttv, %struct.bttv* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  br label %215

197:                                              ; preds = %92
  %198 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %199 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp sgt i64 %200, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %208 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  %209 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.bttv*, %struct.bttv** %9, align 8
  %212 = getelementptr inbounds %struct.bttv, %struct.bttv* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i64 %210, i64* %213, align 8
  br label %214

214:                                              ; preds = %204, %197
  br label %215

215:                                              ; preds = %214, %187
  %216 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %217 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %226 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %225, i32 0, i32 2
  store i64 %224, i64* %226, align 8
  %227 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.bttv*, %struct.bttv** %9, align 8
  %230 = getelementptr inbounds %struct.bttv, %struct.bttv* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  store i64 %228, i64* %231, align 8
  br label %250

232:                                              ; preds = %215
  %233 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %234 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %235, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %243 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  %244 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.bttv*, %struct.bttv** %9, align 8
  %247 = getelementptr inbounds %struct.bttv, %struct.bttv* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  store i64 %245, i64* %248, align 8
  br label %249

249:                                              ; preds = %239, %232
  br label %250

250:                                              ; preds = %249, %222
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %250, %90, %54, %42, %33
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i64 @locked_btres(%struct.bttv*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bttv_crop_calc_limits(%struct.bttv_crop*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
