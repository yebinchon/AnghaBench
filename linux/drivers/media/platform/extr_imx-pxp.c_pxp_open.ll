; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.pxp_dev = type { i32, i32, i32 }
%struct.pxp_ctx = type { %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.v4l2_ctrl_handler, %struct.pxp_dev* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxp_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@formats = common dso_local global i32* null, align 8
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Created instance: %p, m2m_ctx: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pxp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.pxp_dev*, align 8
  %5 = alloca %struct.pxp_ctx*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.pxp_dev* @video_drvdata(%struct.file* %8)
  store %struct.pxp_dev* %9, %struct.pxp_dev** %4, align 8
  store %struct.pxp_ctx* null, %struct.pxp_ctx** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %10, i32 0, i32 0
  %12 = call i64 @mutex_lock_interruptible(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ERESTARTSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %169

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pxp_ctx* @kzalloc(i32 48, i32 %18)
  store %struct.pxp_ctx* %19, %struct.pxp_ctx** %5, align 8
  %20 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %21 = icmp ne %struct.pxp_ctx* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %164

25:                                               ; preds = %17
  %26 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %26, i32 0, i32 0
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = call i32 @video_devdata(%struct.file* %28)
  %30 = call i32 @v4l2_fh_init(%struct.TYPE_6__* %27, i32 %29)
  %31 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %31, i32 0, i32 0
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %36 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %36, i32 0, i32 4
  store %struct.pxp_dev* %35, %struct.pxp_dev** %37, align 8
  %38 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %38, i32 0, i32 3
  store %struct.v4l2_ctrl_handler* %39, %struct.v4l2_ctrl_handler** %6, align 8
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %41 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %40, i32 4)
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %43 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %44 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, i32* @pxp_ctrl_ops, i32 %43, i32 0, i32 1, i32 1, i32 0)
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %46 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %47 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, i32* @pxp_ctrl_ops, i32 %46, i32 0, i32 1, i32 1, i32 0)
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %49 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %50 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %48, i32* @pxp_ctrl_ops, i32 %49, i32 0, i32 255, i32 1, i32 255)
  %51 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %25
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %60 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %59)
  %61 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %62 = call i32 @kfree(%struct.pxp_ctx* %61)
  br label %164

63:                                               ; preds = %25
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %65 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %64, %struct.v4l2_ctrl_handler** %67, align 8
  %68 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %69 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %68)
  %70 = load i32*, i32** @formats, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i64, i64* @V4L2_M2M_SRC, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  store i32* %71, i32** %77, align 8
  %78 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i64, i64* @V4L2_M2M_SRC, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 640, i32* %83, align 8
  %84 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i64, i64* @V4L2_M2M_SRC, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 480, i32* %89, align 4
  %90 = load i32*, i32** @formats, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = call i32 @pxp_bytesperline(i32* %91, i32 640)
  %93 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i64, i64* @V4L2_M2M_SRC, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i32 %92, i32* %98, align 4
  %99 = load i32*, i32** @formats, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = call i32 @pxp_sizeimage(i32* %100, i32 640, i32 480)
  %102 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* @V4L2_M2M_SRC, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i32 %101, i32* %107, align 8
  %108 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i64, i64* @V4L2_M2M_DST, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i64, i64* @V4L2_M2M_SRC, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %116
  %118 = bitcast %struct.TYPE_5__* %112 to i8*
  %119 = bitcast %struct.TYPE_5__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 24, i1 false)
  %120 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %121 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %127 = call i32 @v4l2_m2m_ctx_init(i32 %125, %struct.pxp_ctx* %126, i32* @queue_init)
  %128 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %129 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %132 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @IS_ERR(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %63
  %138 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @PTR_ERR(i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %144 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %143)
  %145 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %146 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %145, i32 0, i32 0
  %147 = call i32 @v4l2_fh_exit(%struct.TYPE_6__* %146)
  %148 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %149 = call i32 @kfree(%struct.pxp_ctx* %148)
  br label %164

150:                                              ; preds = %63
  %151 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %151, i32 0, i32 0
  %153 = call i32 @v4l2_fh_add(%struct.TYPE_6__* %152)
  %154 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %155 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %154, i32 0, i32 1
  %156 = call i32 @atomic_inc(i32* %155)
  %157 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %158 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %159 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dprintk(%struct.pxp_dev* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.pxp_ctx* %158, i32 %162)
  br label %164

164:                                              ; preds = %150, %137, %55, %22
  %165 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %166 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %165, i32 0, i32 0
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %164, %14
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.pxp_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.pxp_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @kfree(%struct.pxp_ctx*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @pxp_bytesperline(i32*, i32) #1

declare dso_local i32 @pxp_sizeimage(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.pxp_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_6__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dprintk(%struct.pxp_dev*, i8*, %struct.pxp_ctx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
