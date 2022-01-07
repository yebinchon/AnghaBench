; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_7__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.mdp_config_misc }
%struct.mdp_config_misc = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_hw_set_rotation(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca %struct.mtk_mdp_ctx*, align 8
  %3 = alloca %struct.mdp_config_misc*, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %2, align 8
  %4 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.mdp_config_misc* %8, %struct.mdp_config_misc** %3, align 8
  %9 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mdp_config_misc*, %struct.mdp_config_misc** %3, align 8
  %16 = getelementptr inbounds %struct.mdp_config_misc, %struct.mdp_config_misc* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mdp_config_misc*, %struct.mdp_config_misc** %3, align 8
  %24 = getelementptr inbounds %struct.mdp_config_misc, %struct.mdp_config_misc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mdp_config_misc*, %struct.mdp_config_misc** %3, align 8
  %32 = getelementptr inbounds %struct.mdp_config_misc, %struct.mdp_config_misc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
