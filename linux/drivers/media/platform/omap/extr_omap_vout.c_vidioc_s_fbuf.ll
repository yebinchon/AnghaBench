; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32 }
%struct.omap_overlay = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32, i32, i32, i32 }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_vout_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.omapvideo_info }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@OMAP_DSS_COLOR_KEY_GFX_DST = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_SRC_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_CHROMAKEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_ALPHA = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_KEY_VID_SRC = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_ZORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @vidioc_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_overlay*, align 8
  %10 = alloca %struct.omapvideo_info*, align 8
  %11 = alloca %struct.omap_vout_device*, align 8
  %12 = alloca %struct.omap_overlay_manager_info, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %14)
  store %struct.omap_vout_device* %15, %struct.omap_vout_device** %11, align 8
  %16 = load i32, i32* @OMAP_DSS_COLOR_KEY_GFX_DST, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %18 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %17, i32 0, i32 2
  store %struct.omapvideo_info* %18, %struct.omapvideo_info** %10, align 8
  %19 = load %struct.omapvideo_info*, %struct.omapvideo_info** %10, align 8
  %20 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %19, i32 0, i32 0
  %21 = load %struct.omap_overlay**, %struct.omap_overlay*** %20, align 8
  %22 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %21, i64 0
  %23 = load %struct.omap_overlay*, %struct.omap_overlay** %22, align 8
  store %struct.omap_overlay* %23, %struct.omap_overlay** %9, align 8
  %24 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %242

40:                                               ; preds = %30, %3
  %41 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %242

57:                                               ; preds = %47, %40
  %58 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %66 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %67 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @OMAP_DSS_COLOR_KEY_VID_SRC, align 4
  store i32 %71, i32* %13, align 4
  br label %80

72:                                               ; preds = %57
  %73 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %76 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %74
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %72, %64
  %81 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %89 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %90 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @OMAP_DSS_COLOR_KEY_GFX_DST, align 4
  store i32 %94, i32* %13, align 4
  br label %103

95:                                               ; preds = %80
  %96 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %99 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %97
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %95, %87
  %104 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %108 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 1, i32* %8, align 4
  br label %114

113:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %116 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = icmp ne %struct.TYPE_9__* %117, null
  br i1 %118, label %119, label %166

119:                                              ; preds = %114
  %120 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %121 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %123, align 8
  %125 = icmp ne i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)* %124, null
  br i1 %125, label %126, label %166

126:                                              ; preds = %119
  %127 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %128 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %130, align 8
  %132 = icmp ne i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)* %131, null
  br i1 %132, label %133, label %166

133:                                              ; preds = %126
  %134 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %135 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %137, align 8
  %139 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %140 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = call i32 %138(%struct.TYPE_9__* %141, %struct.omap_overlay_manager_info* %12)
  %143 = load i32, i32* %8, align 4
  %144 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %12, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %13, align 4
  %146 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %12, i32 0, i32 1
  store i32 %145, i32* %146, align 4
  %147 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %148 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %12, i32 0, i32 3
  store i32 %150, i32* %151, align 4
  %152 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %153 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %155, align 8
  %157 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %158 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = call i64 %156(%struct.TYPE_9__* %159, %struct.omap_overlay_manager_info* %12)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %133
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %242

165:                                              ; preds = %133
  br label %166

166:                                              ; preds = %165, %126, %119, %114
  %167 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %175 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %176 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 8
  store i32 1, i32* %8, align 4
  br label %188

180:                                              ; preds = %166
  %181 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %182 = xor i32 %181, -1
  %183 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %184 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %182
  store i32 %187, i32* %185, align 8
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %180, %173
  %189 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %190 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %189, i32 0, i32 1
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = icmp ne %struct.TYPE_9__* %191, null
  br i1 %192, label %193, label %241

193:                                              ; preds = %188
  %194 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %195 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %194, i32 0, i32 1
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %197, align 8
  %199 = icmp ne i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)* %198, null
  br i1 %199, label %200, label %241

200:                                              ; preds = %193
  %201 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %202 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %204, align 8
  %206 = icmp ne i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)* %205, null
  br i1 %206, label %207, label %241

207:                                              ; preds = %200
  %208 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %209 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %208, i32 0, i32 1
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %211, align 8
  %213 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %214 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %213, i32 0, i32 1
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = call i32 %212(%struct.TYPE_9__* %215, %struct.omap_overlay_manager_info* %12)
  %217 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %218 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @OMAP_DSS_OVL_CAP_ZORDER, align 4
  %221 = and i32 %219, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %207
  %224 = load i32, i32* %8, align 4
  %225 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %12, i32 0, i32 2
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %223, %207
  %227 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %228 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %227, i32 0, i32 1
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)*, i64 (%struct.TYPE_9__*, %struct.omap_overlay_manager_info*)** %230, align 8
  %232 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %233 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %232, i32 0, i32 1
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = call i64 %231(%struct.TYPE_9__* %234, %struct.omap_overlay_manager_info* %12)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %226
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %242

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %240, %200, %193, %188
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %241, %237, %162, %54, %37
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
