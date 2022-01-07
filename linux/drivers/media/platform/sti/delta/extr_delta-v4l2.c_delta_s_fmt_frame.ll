; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_s_fmt_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_s_fmt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.delta_ctx = type { i64, i32, %struct.delta_frameinfo, i32, %struct.TYPE_4__, %struct.delta_dec*, %struct.delta_dev* }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.delta_dec = type { i32 }
%struct.delta_dev = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s V4L2 S_FMT (CAPTURE): queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DELTA_STATE_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"%s V4L2 S_FMT (CAPTURE): unsupported format %4.4s\0A\00", align 1
@set_frameinfo = common dso_local global i32 0, align 4
@get_frameinfo = common dso_local global i32 0, align 4
@DELTA_FLAG_FRAMEINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%s V4L2 SET_FMT (CAPTURE): frameinfo updated to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @delta_s_fmt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_s_fmt_frame(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.delta_ctx*, align 8
  %9 = alloca %struct.delta_dev*, align 8
  %10 = alloca %struct.delta_dec*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca %struct.delta_frameinfo, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca %struct.vb2_queue*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.delta_ctx* @to_ctx(i32 %18)
  store %struct.delta_ctx* %19, %struct.delta_ctx** %8, align 8
  %20 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %20, i32 0, i32 6
  %22 = load %struct.delta_dev*, %struct.delta_dev** %21, align 8
  store %struct.delta_dev* %22, %struct.delta_dev** %9, align 8
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 5
  %25 = load %struct.delta_dec*, %struct.delta_dec** %24, align 8
  store %struct.delta_dec* %25, %struct.delta_dec** %10, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.v4l2_pix_format* %28, %struct.v4l2_pix_format** %11, align 8
  %29 = bitcast [100 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 100, i1 false)
  %30 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %33, i32 %36)
  store %struct.vb2_queue* %37, %struct.vb2_queue** %14, align 8
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %14, align 8
  %39 = call i64 @vb2_is_streaming(%struct.vb2_queue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %43 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %204

51:                                               ; preds = %3
  %52 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DELTA_STATE_READY, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %61 = call i32 @delta_try_fmt_frame(%struct.file* %58, i8* %59, %struct.v4l2_format* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %66 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 6
  %73 = bitcast i64* %72 to i8*
  %74 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %73)
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %4, align 4
  br label %204

76:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %204

77:                                               ; preds = %51
  %78 = call i32 @memset(%struct.delta_frameinfo* %12, i32 0, i32 48)
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 10
  store i32 %85, i32* %86, align 4
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 9
  store i32 %89, i32* %90, align 8
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 7
  store i32 %93, i32* %94, align 4
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 6
  store i32 %97, i32* %98, align 8
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 5
  store i32 %101, i32* %102, align 4
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  %115 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = load %struct.delta_dec*, %struct.delta_dec** %10, align 8
  %124 = load i32, i32* @set_frameinfo, align 4
  %125 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %126 = call i32 @call_dec_op(%struct.delta_dec* %123, i32 %124, %struct.delta_ctx* %125, %struct.delta_frameinfo* %12)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %77
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %4, align 4
  br label %204

131:                                              ; preds = %77
  %132 = load %struct.delta_dec*, %struct.delta_dec** %10, align 8
  %133 = load i32, i32* @get_frameinfo, align 4
  %134 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %135 = call i32 @call_dec_op(%struct.delta_dec* %132, i32 %133, %struct.delta_ctx* %134, %struct.delta_frameinfo* %12)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %4, align 4
  br label %204

140:                                              ; preds = %131
  %141 = load i32, i32* @DELTA_FLAG_FRAMEINFO, align 4
  %142 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %143 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %147 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %146, i32 0, i32 2
  %148 = bitcast %struct.delta_frameinfo* %147 to i8*
  %149 = bitcast %struct.delta_frameinfo* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 48, i1 false)
  %150 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %151 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %154 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %157 = call i8* @delta_frameinfo_str(%struct.delta_frameinfo* %12, i8* %156, i32 100)
  %158 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %152, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %155, i8* %157)
  %159 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 8
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %162 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %161, i32 0, i32 6
  store i64 %160, i64* %162, align 8
  %163 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %166 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  %167 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %170 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 8
  %171 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %172 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @frame_stride(i32 %173, i64 %176)
  %178 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %179 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  %180 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %183 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %187 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %191 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %195 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %199 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %12, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %203 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %140, %138, %129, %76, %64, %41
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.delta_ctx* @to_ctx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @delta_try_fmt_frame(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @memset(%struct.delta_frameinfo*, i32, i32) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*, %struct.delta_frameinfo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @delta_frameinfo_str(%struct.delta_frameinfo*, i8*, i32) #1

declare dso_local i32 @frame_stride(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
