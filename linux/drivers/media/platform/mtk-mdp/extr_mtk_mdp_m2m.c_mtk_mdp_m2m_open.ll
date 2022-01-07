; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.mtk_mdp_dev = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.video_device = type { i32 }
%struct.mtk_mdp_ctx = type { %struct.TYPE_6__, i32, i32, i64, i32, i32, %struct.mtk_mdp_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@mtk_mdp_m2m_worker = common dso_local global i32 0, align 4
@mtk_mdp_m2m_queue_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize m2m context\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vpu_load_firmware failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"mdp_vpu register failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s [%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mtk_mdp_m2m_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.mtk_mdp_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.mtk_mdp_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.mtk_mdp_dev* @video_drvdata(%struct.file* %8)
  store %struct.mtk_mdp_dev* %9, %struct.mtk_mdp_dev** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %5, align 8
  store %struct.mtk_mdp_ctx* null, %struct.mtk_mdp_ctx** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_mdp_ctx* @kzalloc(i32 56, i32 %12)
  store %struct.mtk_mdp_ctx* %13, %struct.mtk_mdp_ctx** %6, align 8
  %14 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %15 = icmp ne %struct.mtk_mdp_ctx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %181

19:                                               ; preds = %1
  %20 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %177

27:                                               ; preds = %19
  %28 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %28, i32 0, i32 7
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %33 to i64
  %36 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %38, i32 0, i32 0
  %40 = load %struct.video_device*, %struct.video_device** %5, align 8
  %41 = call i32 @v4l2_fh_init(%struct.TYPE_6__* %39, %struct.video_device* %40)
  %42 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %42, i32 0, i32 0
  %44 = load %struct.file*, %struct.file** %3, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %47 = call i32 @mtk_mdp_ctrls_create(%struct.mtk_mdp_ctx* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  br label %167

51:                                               ; preds = %27
  %52 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %52, i32 0, i32 1
  %54 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32* %53, i32** %56, align 8
  %57 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %57, i32 0, i32 0
  %59 = call i32 @v4l2_fh_add(%struct.TYPE_6__* %58)
  %60 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %60, i32 0, i32 4
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %64 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %64, i32 0, i32 6
  store %struct.mtk_mdp_dev* %63, %struct.mtk_mdp_dev** %65, align 8
  %66 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %67 = call i32 @mtk_mdp_set_default_params(%struct.mtk_mdp_ctx* %66)
  %68 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %68, i32 0, i32 5
  %70 = load i32, i32* @mtk_mdp_m2m_worker, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %76 = load i32, i32* @mtk_mdp_m2m_queue_init, align 4
  %77 = call i32 @v4l2_m2m_ctx_init(i32 %74, %struct.mtk_mdp_ctx* %75, i32 %76)
  %78 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %51
  %86 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %7, align 4
  br label %163

95:                                               ; preds = %51
  %96 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %100 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %103 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %95
  %108 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @vpu_load_firmware(i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %116 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %154

121:                                              ; preds = %107
  %122 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %123 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = call i32 @mtk_mdp_vpu_register(%struct.TYPE_7__* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %130 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %154

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %95
  %137 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %137, i32 0, i32 4
  %139 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %140 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %139, i32 0, i32 3
  %141 = call i32 @list_add(i32* %138, i32* %140)
  %142 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %143 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %146 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %145, i32 0, i32 2
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = call i32 @dev_name(i32* %148)
  %150 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %151 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @mtk_mdp_dbg(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %149, i64 %152)
  store i32 0, i32* %2, align 4
  br label %181

154:                                              ; preds = %128, %114
  %155 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %156 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %160 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @v4l2_m2m_ctx_release(i32 %161)
  br label %163

163:                                              ; preds = %154, %85
  %164 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %165 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %164, i32 0, i32 1
  %166 = call i32 @v4l2_ctrl_handler_free(i32* %165)
  br label %167

167:                                              ; preds = %163, %50
  %168 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %169 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %168, i32 0, i32 0
  %170 = call i32 @v4l2_fh_del(%struct.TYPE_6__* %169)
  %171 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %172 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %171, i32 0, i32 0
  %173 = call i32 @v4l2_fh_exit(%struct.TYPE_6__* %172)
  %174 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %175 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %174, i32 0, i32 0
  %176 = call i32 @mutex_unlock(i32* %175)
  br label %177

177:                                              ; preds = %167, %24
  %178 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %6, align 8
  %179 = call i32 @kfree(%struct.mtk_mdp_ctx* %178)
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %136, %16
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.mtk_mdp_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.mtk_mdp_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_6__*, %struct.video_device*) #1

declare dso_local i32 @mtk_mdp_ctrls_create(%struct.mtk_mdp_ctx*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtk_mdp_set_default_params(%struct.mtk_mdp_ctx*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.mtk_mdp_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @vpu_load_firmware(i32) #1

declare dso_local i32 @mtk_mdp_vpu_register(%struct.TYPE_7__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mtk_mdp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
