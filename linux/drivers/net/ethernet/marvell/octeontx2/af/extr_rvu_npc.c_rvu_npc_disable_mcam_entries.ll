; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_disable_mcam_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_disable_mcam_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_npc_disable_mcam_entries(%struct.rvu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.npc_mcam*, align 8
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rvu*, %struct.rvu** %4, align 8
  %10 = getelementptr inbounds %struct.rvu, %struct.rvu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.npc_mcam* %12, %struct.npc_mcam** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %4, align 8
  %14 = load i32, i32* @BLKTYPE_NPC, align 4
  %15 = call i32 @rvu_get_blkaddr(%struct.rvu* %13, i32 %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %21 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.rvu*, %struct.rvu** %4, align 8
  %24 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @npc_mcam_free_all_entries(%struct.rvu* %23, %struct.npc_mcam* %24, i32 %25, i32 %26)
  %28 = load %struct.rvu*, %struct.rvu** %4, align 8
  %29 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @npc_mcam_free_all_counters(%struct.rvu* %28, %struct.npc_mcam* %29, i32 %30)
  %32 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %33 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.rvu*, %struct.rvu** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rvu_npc_disable_default_entries(%struct.rvu* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_free_all_entries(%struct.rvu*, %struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @npc_mcam_free_all_counters(%struct.rvu*, %struct.npc_mcam*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvu_npc_disable_default_entries(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
