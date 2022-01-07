; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mtk_mdp_ctx = type { i32, i32, i32, i32, i32, i32, %struct.mtk_mdp_dev* }
%struct.mtk_mdp_dev = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s [%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mtk_mdp_m2m_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.mtk_mdp_ctx*, align 8
  %4 = alloca %struct.mtk_mdp_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mtk_mdp_ctx* @fh_to_ctx(i32 %7)
  store %struct.mtk_mdp_ctx* %8, %struct.mtk_mdp_ctx** %3, align 8
  %9 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %9, i32 0, i32 6
  %11 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %10, align 8
  store %struct.mtk_mdp_dev* %11, %struct.mtk_mdp_dev** %4, align 8
  %12 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @flush_workqueue(i32 %14)
  %16 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @v4l2_m2m_ctx_release(i32 %21)
  %23 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %23, i32 0, i32 4
  %25 = call i32 @v4l2_ctrl_handler_free(i32* %24)
  %26 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %26, i32 0, i32 3
  %28 = call i32 @v4l2_fh_del(i32* %27)
  %29 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %29, i32 0, i32 3
  %31 = call i32 @v4l2_fh_exit(i32* %30)
  %32 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %32, i32 0, i32 2
  %34 = call i32 @mtk_mdp_vpu_deinit(i32* %33)
  %35 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %39, i32 0, i32 1
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_name(i32* %45)
  %47 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mtk_mdp_dbg(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %55 = call i32 @kfree(%struct.mtk_mdp_ctx* %54)
  ret i32 0
}

declare dso_local %struct.mtk_mdp_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @mtk_mdp_vpu_deinit(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mtk_mdp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
