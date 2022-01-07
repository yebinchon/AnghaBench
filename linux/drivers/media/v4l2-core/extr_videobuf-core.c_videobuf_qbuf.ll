; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.videobuf_queue = type { i64, i32, i32, %struct.TYPE_8__*, i64, i32, %struct.videobuf_buffer**, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)* }
%struct.videobuf_buffer = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_buffer = type { i32, i64, i64, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"qbuf: Reading running...\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"qbuf: Wrong type.\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"qbuf: index out of range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"qbuf: buffer is null.\0A\00", align 1
@MAGIC_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"qbuf: memory type is wrong.\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_IDLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"qbuf: buffer is already queued or active.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"qbuf: mmap requested but buffer addr is zero!\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_SDR_OUTPUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"qbuf: buffer length is not enough\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"qbuf: wrong memory type\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"qbuf: requesting next field\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"qbuf: buffer_prepare returned %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"qbuf: succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_qbuf(%struct.videobuf_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %15 = call i32 @MAGIC_CHECK(i32 %13, i32 %14)
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %28 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %32 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %253

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %44 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %253

49:                                               ; preds = %37
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VIDEO_MAX_FRAME, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %253

57:                                               ; preds = %49
  %58 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %59 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %58, i32 0, i32 6
  %60 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %59, align 8
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %60, i64 %63
  %65 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %64, align 8
  store %struct.videobuf_buffer* %65, %struct.videobuf_buffer** %5, align 8
  %66 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %67 = icmp eq %struct.videobuf_buffer* null, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %253

70:                                               ; preds = %57
  %71 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAGIC_BUFFER, align 4
  %75 = call i32 @MAGIC_CHECK(i32 %73, i32 %74)
  %76 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %80 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %253

85:                                               ; preds = %70
  %86 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %87 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %93 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VIDEOBUF_IDLE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %253

99:                                               ; preds = %91, %85
  %100 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %101 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %199 [
    i32 130, label %103
    i32 128, label %151
    i32 129, label %192
  ]

103:                                              ; preds = %99
  %104 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %105 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 0, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %253

110:                                              ; preds = %103
  %111 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %112 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %134, label %116

116:                                              ; preds = %110
  %117 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %118 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @V4L2_BUF_TYPE_VBI_OUTPUT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %116
  %123 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %124 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %130 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @V4L2_BUF_TYPE_SDR_OUTPUT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %128, %122, %116, %110
  %135 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %136 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %139 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %141 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %144 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %146 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %145, i32 0, i32 5
  %147 = call i32 @v4l2_timeval_to_ns(i32* %146)
  %148 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %149 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %134, %128
  br label %201

151:                                              ; preds = %99
  %152 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %153 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %156 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %253

161:                                              ; preds = %151
  %162 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %163 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %164 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %161
  %168 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %169 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %172 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %170, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %167
  %177 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %178 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %177, i32 0, i32 3
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)** %180, align 8
  %182 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %183 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %184 = call i32 %181(%struct.videobuf_queue* %182, %struct.videobuf_buffer* %183)
  br label %185

185:                                              ; preds = %176, %167, %161
  %186 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %187 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %191 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  br label %201

192:                                              ; preds = %99
  %193 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %194 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %198 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  br label %201

199:                                              ; preds = %99
  %200 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %253

201:                                              ; preds = %192, %185, %150
  %202 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %203 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %204 = call i32 @videobuf_next_field(%struct.videobuf_queue* %203)
  store i32 %204, i32* %6, align 4
  %205 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %206 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %205, i32 0, i32 3
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)** %208, align 8
  %210 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %211 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 %209(%struct.videobuf_queue* %210, %struct.videobuf_buffer* %211, i32 %212)
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 0, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %201
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %217)
  br label %253

219:                                              ; preds = %201
  %220 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %221 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %220, i32 0, i32 2
  %222 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %223 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %222, i32 0, i32 5
  %224 = call i32 @list_add_tail(i32* %221, i32* %223)
  %225 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %226 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %219
  %230 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %231 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* %7, align 8
  %234 = call i32 @spin_lock_irqsave(i32 %232, i64 %233)
  %235 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %236 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %235, i32 0, i32 3
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)** %238, align 8
  %240 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %241 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %242 = call i32 %239(%struct.videobuf_queue* %240, %struct.videobuf_buffer* %241)
  %243 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %244 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i64, i64* %7, align 8
  %247 = call i32 @spin_unlock_irqrestore(i32 %245, i64 %246)
  br label %248

248:                                              ; preds = %229, %219
  %249 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %250 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %251 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %250, i32 0, i32 1
  %252 = call i32 @wake_up_interruptible_sync(i32* %251)
  br label %253

253:                                              ; preds = %248, %216, %199, %159, %108, %97, %83, %68, %55, %47, %35
  %254 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %255 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %254)
  %256 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %257 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 130
  br i1 %259, label %260, label %266

260:                                              ; preds = %253
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = call i32 @up_read(i32* %264)
  br label %266

266:                                              ; preds = %260, %253
  %267 = load i32, i32* %8, align 4
  ret i32 %267
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @v4l2_timeval_to_ns(i32*) #1

declare dso_local i32 @videobuf_next_field(%struct.videobuf_queue*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
