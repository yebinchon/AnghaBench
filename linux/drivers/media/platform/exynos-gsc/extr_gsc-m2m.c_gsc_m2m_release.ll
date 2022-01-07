; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.gsc_ctx = type { i32, i32, %struct.gsc_dev* }
%struct.gsc_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"pid: %d, state: 0x%lx, refcnt= %d\00", align 1
@current = common dso_local global i32 0, align 4
@ST_M2M_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @gsc_m2m_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca %struct.gsc_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.gsc_ctx* @fh_to_ctx(i32 %7)
  store %struct.gsc_ctx* %8, %struct.gsc_ctx** %3, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %9, i32 0, i32 2
  %11 = load %struct.gsc_dev*, %struct.gsc_dev** %10, align 8
  store %struct.gsc_dev* %11, %struct.gsc_dev** %4, align 8
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @task_pid_nr(i32 %12)
  %14 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %15 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i64 %20)
  %22 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l2_m2m_ctx_release(i32 %27)
  %29 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %30 = call i32 @gsc_ctrls_delete(%struct.gsc_ctx* %29)
  %31 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %31, i32 0, i32 0
  %33 = call i32 @v4l2_fh_del(i32* %32)
  %34 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %34, i32 0, i32 0
  %36 = call i32 @v4l2_fh_exit(i32* %35)
  %37 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %38 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = load i32, i32* @ST_M2M_OPEN, align 4
  %45 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %46 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %1
  %49 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %50 = call i32 @kfree(%struct.gsc_ctx* %49)
  %51 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret i32 0
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @gsc_ctrls_delete(%struct.gsc_ctx*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.gsc_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
