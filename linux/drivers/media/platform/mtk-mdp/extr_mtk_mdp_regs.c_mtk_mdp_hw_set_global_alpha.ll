; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_global_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_global_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mdp_config_misc }
%struct.mdp_config_misc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_hw_set_global_alpha(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca %struct.mtk_mdp_ctx*, align 8
  %3 = alloca %struct.mdp_config_misc*, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %2, align 8
  %4 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.mdp_config_misc* %8, %struct.mdp_config_misc** %3, align 8
  %9 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mdp_config_misc*, %struct.mdp_config_misc** %3, align 8
  %16 = getelementptr inbounds %struct.mdp_config_misc, %struct.mdp_config_misc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
