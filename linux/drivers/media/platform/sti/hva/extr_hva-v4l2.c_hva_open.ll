; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.hva_dev = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.hva_ctx = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.hva_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hva_run_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s [x:x] failed to setup controls\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@hva_queue_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s failed to initialize m2m context (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[%3d:----]\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s encoder instance created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @hva_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.hva_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hva_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.hva_dev* @video_drvdata(%struct.file* %8)
  store %struct.hva_dev* %9, %struct.hva_dev** %4, align 8
  %10 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %11 = call %struct.device* @hva_to_dev(%struct.hva_dev* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hva_ctx* @kzalloc(i32 48, i32 %12)
  store %struct.hva_ctx* %13, %struct.hva_ctx** %6, align 8
  %14 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %15 = icmp ne %struct.hva_ctx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %126

19:                                               ; preds = %1
  %20 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %21 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %21, i32 0, i32 6
  store %struct.hva_dev* %20, %struct.hva_dev** %22, align 8
  %23 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %23, i32 0, i32 5
  %25 = load i32, i32* @hva_run_work, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %27, i32 0, i32 0
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = call i32 @video_devdata(%struct.file* %29)
  %31 = call i32 @v4l2_fh_init(%struct.TYPE_5__* %28, i32 %30)
  %32 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %32, i32 0, i32 0
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %36, i32 0, i32 0
  %38 = call i32 @v4l2_fh_add(%struct.TYPE_5__* %37)
  %39 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %40 = call i32 @hva_ctrls_setup(%struct.hva_ctx* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %19
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @HVA_PREFIX, align 4
  %46 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %117

51:                                               ; preds = %19
  %52 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %52, i32 0, i32 1
  %54 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32* %53, i32** %56, align 8
  %57 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %57, i32 0, i32 4
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %61 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %64 = call i32 @v4l2_m2m_ctx_init(i32 %62, %struct.hva_ctx* %63, i32* @hva_queue_init)
  %65 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %51
  %75 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %76 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* @HVA_PREFIX, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %85 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %113

88:                                               ; preds = %51
  %89 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %90 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %89, i32 0, i32 1
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %93 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %100 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @snprintf(i32 %98, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %104 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %107 = call i32 @set_default_params(%struct.hva_ctx* %106)
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  store i32 0, i32* %2, align 4
  br label %128

113:                                              ; preds = %74
  %114 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %114, i32 0, i32 1
  %116 = call i32 @v4l2_ctrl_handler_free(i32* %115)
  br label %117

117:                                              ; preds = %113, %43
  %118 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %119 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %118, i32 0, i32 0
  %120 = call i32 @v4l2_fh_del(%struct.TYPE_5__* %119)
  %121 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %121, i32 0, i32 0
  %123 = call i32 @v4l2_fh_exit(%struct.TYPE_5__* %122)
  %124 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %125 = call i32 @kfree(%struct.hva_ctx* %124)
  br label %126

126:                                              ; preds = %117, %16
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %88
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.hva_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.device* @hva_to_dev(%struct.hva_dev*) #1

declare dso_local %struct.hva_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_5__*) #1

declare dso_local i32 @hva_ctrls_setup(%struct.hva_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.hva_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_default_params(%struct.hva_ctx*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.hva_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
