; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_ctx = type { %struct.TYPE_5__, %struct.fimc_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.fimc_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"pid: %d, state: 0x%lx, refcnt= %d\00", align 1
@current = common dso_local global i32 0, align 4
@ST_M2M_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fimc_m2m_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_m2m_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca %struct.fimc_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.fimc_ctx* @fh_to_ctx(i32 %7)
  store %struct.fimc_ctx* %8, %struct.fimc_ctx** %3, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 1
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %10, align 8
  store %struct.fimc_dev* %11, %struct.fimc_dev** %4, align 8
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @task_pid_nr(i32 %12)
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %15 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %18 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i64 %20)
  %22 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @v4l2_m2m_ctx_release(i32 %28)
  %30 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %31 = call i32 @fimc_ctrls_delete(%struct.fimc_ctx* %30)
  %32 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %32, i32 0, i32 0
  %34 = call i32 @v4l2_fh_del(%struct.TYPE_5__* %33)
  %35 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %35, i32 0, i32 0
  %37 = call i32 @v4l2_fh_exit(%struct.TYPE_5__* %36)
  %38 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %39 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load i32, i32* @ST_M2M_RUN, align 4
  %46 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %47 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %1
  %50 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %51 = call i32 @kfree(%struct.fimc_ctx* %50)
  %52 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %53 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret i32 0
}

declare dso_local %struct.fimc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @fimc_ctrls_delete(%struct.fimc_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.fimc_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
