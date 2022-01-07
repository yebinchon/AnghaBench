; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.file = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.vim2m_dev = type { i32, i32, i32 }
%struct.vim2m_ctx = type { %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.v4l2_ctrl_handler, %struct.vim2m_dev* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_12__* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vim2m_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@default_transtime = common dso_local global i32 0, align 4
@vim2m_ctrl_trans_time_msec = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@vim2m_ctrl_trans_num_bufs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@formats = common dso_local global %struct.TYPE_12__* null, align 8
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@device_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Created instance: %p, m2m_ctx: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vim2m_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vim2m_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vim2m_dev*, align 8
  %5 = alloca %struct.vim2m_ctx*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.vim2m_dev* @video_drvdata(%struct.file* %8)
  store %struct.vim2m_dev* %9, %struct.vim2m_dev** %4, align 8
  store %struct.vim2m_ctx* null, %struct.vim2m_ctx** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %10, i32 0, i32 0
  %12 = call i64 @mutex_lock_interruptible(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ERESTARTSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %195

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.vim2m_ctx* @kzalloc(i32 56, i32 %18)
  store %struct.vim2m_ctx* %19, %struct.vim2m_ctx** %5, align 8
  %20 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %21 = icmp ne %struct.vim2m_ctx* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %190

25:                                               ; preds = %17
  %26 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %26, i32 0, i32 0
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = call i32 @video_devdata(%struct.file* %28)
  %30 = call i32 @v4l2_fh_init(%struct.TYPE_11__* %27, i32 %29)
  %31 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %31, i32 0, i32 0
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %34, align 8
  %35 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %36 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %36, i32 0, i32 7
  store %struct.vim2m_dev* %35, %struct.vim2m_dev** %37, align 8
  %38 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %38, i32 0, i32 6
  store %struct.v4l2_ctrl_handler* %39, %struct.v4l2_ctrl_handler** %6, align 8
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %41 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %40, i32 4)
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %43 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %44 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, i32* @vim2m_ctrl_ops, i32 %43, i32 0, i32 1, i32 1, i32 0)
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %46 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %47 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, i32* @vim2m_ctrl_ops, i32 %46, i32 0, i32 1, i32 1, i32 0)
  %48 = load i32, i32* @default_transtime, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vim2m_ctrl_trans_time_msec, i32 0, i32 0), align 4
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %50 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %49, %struct.TYPE_10__* @vim2m_ctrl_trans_time_msec, i32* null)
  %51 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %52 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %51, %struct.TYPE_10__* @vim2m_ctrl_trans_num_bufs, i32* null)
  %53 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %25
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %62 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %61)
  %63 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %64 = call i32 @kfree(%struct.vim2m_ctx* %63)
  br label %190

65:                                               ; preds = %25
  %66 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %67 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %66, %struct.v4l2_ctrl_handler** %69, align 8
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %71 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @formats, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 0
  %74 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %74, i32 0, i32 5
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i64, i64* @V4L2_M2M_SRC, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %79, align 8
  %80 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %80, i32 0, i32 5
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i64, i64* @V4L2_M2M_SRC, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 640, i32* %85, align 8
  %86 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %86, i32 0, i32 5
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i64, i64* @V4L2_M2M_SRC, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 480, i32* %91, align 4
  %92 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %92, i32 0, i32 5
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i64, i64* @V4L2_M2M_SRC, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %99, i32 0, i32 5
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i64, i64* @V4L2_M2M_SRC, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %98, %105
  %107 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %107, i32 0, i32 5
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i64, i64* @V4L2_M2M_SRC, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 3
  %117 = mul nsw i32 %106, %116
  %118 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %118, i32 0, i32 5
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i64, i64* @V4L2_M2M_SRC, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store i32 %117, i32* %123, align 8
  %124 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %125 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %124, i32 0, i32 5
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i64, i64* @V4L2_M2M_DST, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %127
  %129 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %130 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %129, i32 0, i32 5
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i64, i64* @V4L2_M2M_SRC, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %132
  %134 = bitcast %struct.TYPE_9__* %128 to i8*
  %135 = bitcast %struct.TYPE_9__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 24, i1 false)
  %136 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %137 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %140 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %143 = call i32 @v4l2_m2m_ctx_init(i32 %141, %struct.vim2m_ctx* %142, i32* @queue_init)
  %144 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %145 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %147, i32 0, i32 3
  %149 = call i32 @mutex_init(i32* %148)
  %150 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %151 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %150, i32 0, i32 2
  %152 = call i32 @spin_lock_init(i32* %151)
  %153 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %154 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %153, i32 0, i32 1
  %155 = load i32, i32* @device_work, align 4
  %156 = call i32 @INIT_DELAYED_WORK(i32* %154, i32 %155)
  %157 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @IS_ERR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %65
  %164 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %165 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %170 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %169)
  %171 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %172 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %171, i32 0, i32 0
  %173 = call i32 @v4l2_fh_exit(%struct.TYPE_11__* %172)
  %174 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %175 = call i32 @kfree(%struct.vim2m_ctx* %174)
  br label %190

176:                                              ; preds = %65
  %177 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %178 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %177, i32 0, i32 0
  %179 = call i32 @v4l2_fh_add(%struct.TYPE_11__* %178)
  %180 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %181 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %180, i32 0, i32 1
  %182 = call i32 @atomic_inc(i32* %181)
  %183 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %184 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %185 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %5, align 8
  %186 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @dprintk(%struct.vim2m_dev* %183, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.vim2m_ctx* %184, i32 %188)
  br label %190

190:                                              ; preds = %176, %163, %57, %22
  %191 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %192 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %191, i32 0, i32 0
  %193 = call i32 @mutex_unlock(i32* %192)
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %190, %14
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.vim2m_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.vim2m_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @kfree(%struct.vim2m_ctx*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.vim2m_ctx*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_11__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dprintk(%struct.vim2m_dev*, i32, i8*, %struct.vim2m_ctx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
