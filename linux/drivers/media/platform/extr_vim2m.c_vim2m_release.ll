; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vim2m_dev = type { i32, i32 }
%struct.vim2m_ctx = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Releasing instance %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vim2m_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vim2m_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vim2m_dev*, align 8
  %4 = alloca %struct.vim2m_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.vim2m_dev* @video_drvdata(%struct.file* %5)
  store %struct.vim2m_dev* %6, %struct.vim2m_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.vim2m_ctx* @file2ctx(%struct.file* %7)
  store %struct.vim2m_ctx* %8, %struct.vim2m_ctx** %4, align 8
  %9 = load %struct.vim2m_dev*, %struct.vim2m_dev** %3, align 8
  %10 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %11 = call i32 @dprintk(%struct.vim2m_dev* %9, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.vim2m_ctx* %10)
  %12 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %12, i32 0, i32 0
  %14 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %13)
  %15 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %15, i32 0, i32 0
  %17 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %16)
  %18 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %18, i32 0, i32 1
  %20 = call i32 @v4l2_ctrl_handler_free(i32* %19)
  %21 = load %struct.vim2m_dev*, %struct.vim2m_dev** %3, align 8
  %22 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l2_m2m_ctx_release(i32 %27)
  %29 = load %struct.vim2m_dev*, %struct.vim2m_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %33 = call i32 @kfree(%struct.vim2m_ctx* %32)
  %34 = load %struct.vim2m_dev*, %struct.vim2m_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %34, i32 0, i32 0
  %36 = call i32 @atomic_dec(i32* %35)
  ret i32 0
}

declare dso_local %struct.vim2m_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.vim2m_ctx* @file2ctx(%struct.file*) #1

declare dso_local i32 @dprintk(%struct.vim2m_dev*, i32, i8*, %struct.vim2m_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.vim2m_ctx*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
