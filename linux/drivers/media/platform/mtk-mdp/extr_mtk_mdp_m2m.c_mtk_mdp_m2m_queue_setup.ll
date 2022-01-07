; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.mtk_mdp_ctx = type { i32 }
%struct.mtk_mdp_frame = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"[%d] type:%d, planes:%d, buffers:%d, size:%u,%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @mtk_mdp_m2m_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.mtk_mdp_ctx*, align 8
  %12 = alloca %struct.mtk_mdp_frame*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %15 = call %struct.mtk_mdp_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.mtk_mdp_ctx* %15, %struct.mtk_mdp_ctx** %11, align 8
  %16 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %11, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %16, i32 %19)
  store %struct.mtk_mdp_frame* %20, %struct.mtk_mdp_frame** %12, align 8
  %21 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %12, align 8
  %22 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %47, %5
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %12, align 8
  %30 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %28, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %12, align 8
  %37 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %11, align 8
  %52 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %55 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %58, i32 %60, i32 %63, i32 %66)
  ret i32 0
}

declare dso_local %struct.mtk_mdp_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx*, i32) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
