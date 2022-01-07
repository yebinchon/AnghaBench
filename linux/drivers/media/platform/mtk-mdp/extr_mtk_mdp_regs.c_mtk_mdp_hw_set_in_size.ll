; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_in_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_in_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { %struct.TYPE_5__, %struct.mtk_mdp_frame }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mdp_config }
%struct.mdp_config = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.mtk_mdp_frame = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_hw_set_in_size(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca %struct.mtk_mdp_ctx*, align 8
  %3 = alloca %struct.mtk_mdp_frame*, align 8
  %4 = alloca %struct.mdp_config*, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %2, align 8
  %5 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %5, i32 0, i32 1
  store %struct.mtk_mdp_frame* %6, %struct.mtk_mdp_frame** %3, align 8
  %7 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.mdp_config* %11, %struct.mdp_config** %4, align 8
  %12 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %17 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %23 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %29 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %35 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %37 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %39 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %44 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %3, align 8
  %46 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mdp_config*, %struct.mdp_config** %4, align 8
  %49 = getelementptr inbounds %struct.mdp_config, %struct.mdp_config* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
