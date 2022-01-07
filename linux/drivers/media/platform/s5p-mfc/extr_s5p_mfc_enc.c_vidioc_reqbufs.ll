; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i64, i64 }
%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Freeing buffers\0A\00", align 1
@release_codec_buffers = common dso_local global i32 0, align 4
@QUEUE_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid capture state: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error in vb2_reqbufs() for E(D)\0A\00", align 1
@QUEUE_BUFS_REQUESTED = common dso_local global i8* null, align 8
@alloc_codec_buffers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate encoding buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid output state: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Minimum %d output buffers needed\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"error in vb2_reqbufs() for E(S)\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"invalid buf type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca %struct.s5p_mfc_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.s5p_mfc_dev* @video_drvdata(%struct.file* %11)
  store %struct.s5p_mfc_dev* %12, %struct.s5p_mfc_dev** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %13)
  store %struct.s5p_mfc_ctx* %14, %struct.s5p_mfc_ctx** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %201

29:                                               ; preds = %20, %3
  %30 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %29
  %36 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %42, i32 0, i32 4
  %44 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %45 = call i32 @vb2_reqbufs(i32* %43, %struct.v4l2_requestbuffers* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @release_codec_buffers, align 4
  %50 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %51 = call i32 @s5p_mfc_hw_call(i32 %48, i32 %49, %struct.s5p_mfc_ctx* %50)
  %52 = load i64, i64* @QUEUE_FREE, align 8
  %53 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %201

56:                                               ; preds = %35
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QUEUE_FREE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %201

69:                                               ; preds = %56
  %70 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %70, i32 0, i32 4
  %72 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %73 = call i32 @vb2_reqbufs(i32* %71, %struct.v4l2_requestbuffers* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %201

79:                                               ; preds = %69
  %80 = load i8*, i8** @QUEUE_BUFS_REQUESTED, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %84, i32 0, i32 5
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @alloc_codec_buffers, align 4
  %90 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %91 = call i32 @s5p_mfc_hw_call(i32 %88, i32 %89, %struct.s5p_mfc_ctx* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %79
  %95 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %98, i32 0, i32 4
  %100 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %101 = call i32 @vb2_reqbufs(i32* %99, %struct.v4l2_requestbuffers* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %201

104:                                              ; preds = %79
  br label %199

105:                                              ; preds = %29
  %106 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %194

111:                                              ; preds = %105
  %112 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %119 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %118, i32 0, i32 3
  %120 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %121 = call i32 @vb2_reqbufs(i32* %119, %struct.v4l2_requestbuffers* %120)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %123 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @release_codec_buffers, align 4
  %126 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %127 = call i32 @s5p_mfc_hw_call(i32 %124, i32 %125, %struct.s5p_mfc_ctx* %126)
  %128 = load i64, i64* @QUEUE_FREE, align 8
  %129 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %130 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  br label %201

132:                                              ; preds = %111
  %133 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %134 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @QUEUE_FREE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %140 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %201

145:                                              ; preds = %132
  %146 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %147 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %179

149:                                              ; preds = %145
  %150 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %151 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %156 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %159 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %164 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %167 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %169 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %170)
  br label %178

172:                                              ; preds = %154, %149
  %173 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %177 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %162
  br label %179

179:                                              ; preds = %178, %145
  %180 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %181 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %180, i32 0, i32 3
  %182 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %183 = call i32 @vb2_reqbufs(i32* %181, %struct.v4l2_requestbuffers* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %4, align 4
  br label %201

189:                                              ; preds = %179
  %190 = load i8*, i8** @QUEUE_BUFS_REQUESTED, align 8
  %191 = ptrtoint i8* %190 to i64
  %192 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %9, align 8
  %193 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %198

194:                                              ; preds = %105
  %195 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %201

198:                                              ; preds = %189
  br label %199

199:                                              ; preds = %198, %104
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %194, %186, %138, %116, %94, %76, %62, %40, %26
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local %struct.s5p_mfc_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @vb2_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
