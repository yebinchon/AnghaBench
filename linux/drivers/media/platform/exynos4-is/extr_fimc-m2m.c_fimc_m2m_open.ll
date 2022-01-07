; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.fimc_dev = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.fimc_ctx = type { %struct.TYPE_15__, %struct.TYPE_13__, i8*, i8*, i64, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.fimc_dev* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pid: %d, state: %#lx\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ST_CAPT_BUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FIMC_CTX_M2M = common dso_local global i32 0, align 4
@FIMC_IO_DMA = common dso_local global i8* null, align 8
@queue_init = common dso_local global i32 0, align 4
@ST_M2M_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fimc_m2m_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_m2m_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.fimc_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.fimc_dev* @video_drvdata(%struct.file* %7)
  store %struct.fimc_dev* %8, %struct.fimc_dev** %4, align 8
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @task_pid_nr(i32 %11)
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %18 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %157

24:                                               ; preds = %1
  %25 = load i32, i32* @ST_CAPT_BUSY, align 4
  %26 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %152

31:                                               ; preds = %24
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.fimc_ctx* @kzalloc(i32 80, i32 %32)
  store %struct.fimc_ctx* %33, %struct.fimc_ctx** %5, align 8
  %34 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %35 = icmp ne %struct.fimc_ctx* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %152

39:                                               ; preds = %31
  %40 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %40, i32 0, i32 0
  %42 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %43 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = call i32 @v4l2_fh_init(%struct.TYPE_15__* %41, i32* %44)
  %46 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %47 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %47, i32 0, i32 9
  store %struct.fimc_dev* %46, %struct.fimc_dev** %48, align 8
  %49 = call i8* @fimc_get_format(i32 0)
  %50 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = call i8* @fimc_get_format(i32 0)
  %54 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %58 = call i32 @fimc_ctrls_create(%struct.fimc_ctx* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  br label %146

62:                                               ; preds = %39
  %63 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  store i32* %65, i32** %68, align 8
  %69 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %69, i32 0, i32 0
  %71 = load %struct.file*, %struct.file** %3, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %72, align 8
  %73 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %73, i32 0, i32 0
  %75 = call i32 @v4l2_fh_add(%struct.TYPE_15__* %74)
  %76 = load i32, i32* @FIMC_CTX_M2M, align 4
  %77 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** @FIMC_IO_DMA, align 8
  %82 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @FIMC_IO_DMA, align 8
  %85 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %91 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %95 = load i32, i32* @queue_init, align 4
  %96 = call i32 @v4l2_m2m_ctx_init(i32 %93, %struct.fimc_ctx* %94, i32 %95)
  %97 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %62
  %107 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR(i32 %110)
  store i32 %111, i32* %6, align 4
  br label %140

112:                                              ; preds = %62
  %113 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %114 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i32, i32* @ST_M2M_RUN, align 4
  %121 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %122 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %121, i32 0, i32 1
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %119, %112
  %125 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %126 = call i32 @fimc_m2m_set_default_format(%struct.fimc_ctx* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %134

130:                                              ; preds = %124
  %131 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %132 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  store i32 0, i32* %2, align 4
  br label %157

134:                                              ; preds = %129
  %135 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %136 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @v4l2_m2m_ctx_release(i32 %138)
  br label %140

140:                                              ; preds = %134, %106
  %141 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %142 = call i32 @fimc_ctrls_delete(%struct.fimc_ctx* %141)
  %143 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %143, i32 0, i32 0
  %145 = call i32 @v4l2_fh_del(%struct.TYPE_15__* %144)
  br label %146

146:                                              ; preds = %140, %61
  %147 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %147, i32 0, i32 0
  %149 = call i32 @v4l2_fh_exit(%struct.TYPE_15__* %148)
  %150 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %151 = call i32 @kfree(%struct.fimc_ctx* %150)
  br label %152

152:                                              ; preds = %146, %36, %30
  %153 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %154 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %152, %130, %21
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.fimc_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_15__*, i32*) #1

declare dso_local i8* @fimc_get_format(i32) #1

declare dso_local i32 @fimc_ctrls_create(%struct.fimc_ctx*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.fimc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fimc_m2m_set_default_format(%struct.fimc_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @fimc_ctrls_delete(%struct.fimc_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.fimc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
