; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fdp1_dev = type { i32, i32 }
%struct.fdp1_ctx = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Releasing instance %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fdp1_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fdp1_dev*, align 8
  %4 = alloca %struct.fdp1_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.fdp1_dev* @video_drvdata(%struct.file* %5)
  store %struct.fdp1_dev* %6, %struct.fdp1_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fdp1_ctx* @fh_to_ctx(i32 %9)
  store %struct.fdp1_ctx* %10, %struct.fdp1_ctx** %4, align 8
  %11 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %12 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %13 = call i32 @dprintk(%struct.fdp1_dev* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.fdp1_ctx* %12)
  %14 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %14, i32 0, i32 0
  %16 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %15)
  %17 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %17, i32 0, i32 0
  %19 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %18)
  %20 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %20, i32 0, i32 1
  %22 = call i32 @v4l2_ctrl_handler_free(i32* %21)
  %23 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %24 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l2_m2m_ctx_release(i32 %29)
  %31 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %32 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %35 = call i32 @kfree(%struct.fdp1_ctx* %34)
  %36 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %37 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_put(i32 %38)
  ret i32 0
}

declare dso_local %struct.fdp1_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.fdp1_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, %struct.fdp1_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.fdp1_ctx*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
