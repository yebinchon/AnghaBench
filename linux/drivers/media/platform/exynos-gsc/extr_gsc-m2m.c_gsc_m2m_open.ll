; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.gsc_dev = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.gsc_ctx = type { %struct.TYPE_11__, i32, i8*, i8*, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.gsc_dev*, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"pid: %d, state: 0x%lx\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GSC_CTX_M2M = common dso_local global i32 0, align 4
@GSC_DMA = common dso_local global i8* null, align 8
@queue_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialize m2m context\00", align 1
@ST_M2M_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"gsc m2m driver is opened, ctx(0x%p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @gsc_m2m_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.gsc_dev*, align 8
  %5 = alloca %struct.gsc_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.gsc_dev* @video_drvdata(%struct.file* %7)
  store %struct.gsc_dev* %8, %struct.gsc_dev** %4, align 8
  store %struct.gsc_ctx* null, %struct.gsc_ctx** %5, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @task_pid_nr(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.gsc_ctx*
  %13 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, %struct.gsc_ctx*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.gsc_ctx* %12, i32 %15)
  %17 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %135

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.gsc_ctx* @kzalloc(i32 80, i32 %25)
  store %struct.gsc_ctx* %26, %struct.gsc_ctx** %5, align 8
  %27 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %28 = icmp ne %struct.gsc_ctx* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %130

32:                                               ; preds = %24
  %33 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %33, i32 0, i32 0
  %35 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %36 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @v4l2_fh_init(%struct.TYPE_11__* %34, i32 %38)
  %40 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %41 = call i32 @gsc_ctrls_create(%struct.gsc_ctx* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %124

45:                                               ; preds = %32
  %46 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %46, i32 0, i32 9
  %48 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %51, i32 0, i32 0
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  %55 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %55, i32 0, i32 0
  %57 = call i32 @v4l2_fh_add(%struct.TYPE_11__* %56)
  %58 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %59 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %59, i32 0, i32 8
  store %struct.gsc_dev* %58, %struct.gsc_dev** %60, align 8
  %61 = call i8* @get_format(i32 0)
  %62 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = call i8* @get_format(i32 0)
  %66 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load i32, i32* @GSC_CTX_M2M, align 4
  %70 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load i8*, i8** @GSC_DMA, align 8
  %75 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %76 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @GSC_DMA, align 8
  %78 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %81 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %85 = load i32, i32* @queue_init, align 4
  %86 = call i32 @v4l2_m2m_ctx_init(i32 %83, %struct.gsc_ctx* %84, i32 %85)
  %87 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %45
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %6, align 4
  br label %118

100:                                              ; preds = %45
  %101 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %102 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i32, i32* @ST_M2M_OPEN, align 4
  %109 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %110 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %107, %100
  %113 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %114 = call i32 (i8*, %struct.gsc_ctx*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.gsc_ctx* %113)
  %115 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %116 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  store i32 0, i32* %2, align 4
  br label %135

118:                                              ; preds = %94
  %119 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %120 = call i32 @gsc_ctrls_delete(%struct.gsc_ctx* %119)
  %121 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %121, i32 0, i32 0
  %123 = call i32 @v4l2_fh_del(%struct.TYPE_11__* %122)
  br label %124

124:                                              ; preds = %118, %44
  %125 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %126 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %125, i32 0, i32 0
  %127 = call i32 @v4l2_fh_exit(%struct.TYPE_11__* %126)
  %128 = load %struct.gsc_ctx*, %struct.gsc_ctx** %5, align 8
  %129 = call i32 @kfree(%struct.gsc_ctx* %128)
  br label %130

130:                                              ; preds = %124, %29
  %131 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %132 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %130, %112, %21
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.gsc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, %struct.gsc_ctx*, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.gsc_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gsc_ctrls_create(%struct.gsc_ctx*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_11__*) #1

declare dso_local i8* @get_format(i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.gsc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gsc_ctrls_delete(%struct.gsc_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.gsc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
