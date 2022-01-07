; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.bttv_fh = type { %struct.bttv_format*, %struct.TYPE_18__, i32, %struct.bttv* }
%struct.bttv_format = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.bttv = type { %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.bttv_format* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.bttv_buffer = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FORMAT_FLAGS_PACKED = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_OVERLAY = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @bttv_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca %struct.bttv_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bttv_buffer*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.bttv_fh*
  store %struct.bttv_fh* %16, %struct.bttv_fh** %8, align 8
  %17 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %18 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %17, i32 0, i32 3
  %19 = load %struct.bttv*, %struct.bttv** %18, align 8
  store %struct.bttv* %19, %struct.bttv** %9, align 8
  %20 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %235

30:                                               ; preds = %23, %3
  %31 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.bttv_format* @format_by_fourcc(i32 %34)
  store %struct.bttv_format* %35, %struct.bttv_format** %10, align 8
  %36 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %37 = icmp eq %struct.bttv_format* null, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %235

41:                                               ; preds = %30
  %42 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %43 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FORMAT_FLAGS_PACKED, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 0, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %235

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %70 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %71 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %69, i32* %12, i32* %13, i32 %70, i32 -4, i32 2, i32 0, i32 0)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 0, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %235

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %51
  %78 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bttv*, %struct.bttv** %9, align 8
  %82 = getelementptr inbounds %struct.bttv, %struct.bttv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bttv*, %struct.bttv** %9, align 8
  %89 = getelementptr inbounds %struct.bttv, %struct.bttv* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  %92 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bttv*, %struct.bttv** %9, align 8
  %97 = getelementptr inbounds %struct.bttv, %struct.bttv* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  %100 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 0, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %77
  %106 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bttv*, %struct.bttv** %9, align 8
  %111 = getelementptr inbounds %struct.bttv, %struct.bttv* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i64 %109, i64* %113, align 8
  br label %130

114:                                              ; preds = %77
  %115 = load %struct.bttv*, %struct.bttv** %9, align 8
  %116 = getelementptr inbounds %struct.bttv, %struct.bttv* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %121 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = sdiv i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = load %struct.bttv*, %struct.bttv** %9, align 8
  %127 = getelementptr inbounds %struct.bttv, %struct.bttv* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  store i64 %125, i64* %129, align 8
  br label %130

130:                                              ; preds = %114, %105
  store i32 0, i32* %11, align 4
  %131 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %132 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %133 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %132, i32 0, i32 0
  store %struct.bttv_format* %131, %struct.bttv_format** %133, align 8
  %134 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %135 = load %struct.bttv*, %struct.bttv** %9, align 8
  %136 = getelementptr inbounds %struct.bttv, %struct.bttv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store %struct.bttv_format* %134, %struct.bttv_format** %137, align 8
  %138 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %139 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %233

144:                                              ; preds = %130
  %145 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %146 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  store i64 0, i64* %148, align 8
  %149 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %150 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %158 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  %161 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %162 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %166 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 %164, i32* %168, align 4
  %169 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %170 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.bttv*, %struct.bttv** %9, align 8
  %174 = getelementptr inbounds %struct.bttv, %struct.bttv* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store i32 %172, i32* %177, align 8
  %178 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.bttv*, %struct.bttv** %9, align 8
  %183 = getelementptr inbounds %struct.bttv, %struct.bttv* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  store i32 %181, i32* %186, align 4
  %187 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %188 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @kfree(i32* %190)
  %192 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %193 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  store i32* null, i32** %194, align 8
  %195 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %196 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %199 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %200 = call i64 @check_btres(%struct.bttv_fh* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %232

202:                                              ; preds = %144
  %203 = call %struct.bttv_buffer* @videobuf_sg_alloc(i32 4)
  store %struct.bttv_buffer* %203, %struct.bttv_buffer** %14, align 8
  %204 = load %struct.bttv*, %struct.bttv** %9, align 8
  %205 = getelementptr inbounds %struct.bttv, %struct.bttv* %204, i32 0, i32 0
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %208 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.bttv_buffer*, %struct.bttv_buffer** %14, align 8
  %219 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  %220 = load %struct.bttv*, %struct.bttv** %9, align 8
  %221 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %222 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %221, i32 0, i32 1
  %223 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %224 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %223, i32 0, i32 0
  %225 = load %struct.bttv_format*, %struct.bttv_format** %224, align 8
  %226 = load %struct.bttv_buffer*, %struct.bttv_buffer** %14, align 8
  %227 = call i32 @bttv_overlay_risc(%struct.bttv* %220, %struct.TYPE_18__* %222, %struct.bttv_format* %225, %struct.bttv_buffer* %226)
  %228 = load %struct.bttv*, %struct.bttv** %9, align 8
  %229 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %230 = load %struct.bttv_buffer*, %struct.bttv_buffer** %14, align 8
  %231 = call i32 @bttv_switch_overlay(%struct.bttv* %228, %struct.bttv_fh* %229, %struct.bttv_buffer* %230)
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %202, %144
  br label %233

233:                                              ; preds = %232, %130
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %74, %48, %38, %27
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bttv_format* @format_by_fourcc(i32) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @check_btres(%struct.bttv_fh*, i32) #1

declare dso_local %struct.bttv_buffer* @videobuf_sg_alloc(i32) #1

declare dso_local i32 @bttv_overlay_risc(%struct.bttv*, %struct.TYPE_18__*, %struct.bttv_format*, %struct.bttv_buffer*) #1

declare dso_local i32 @bttv_switch_overlay(%struct.bttv*, %struct.bttv_fh*, %struct.bttv_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
