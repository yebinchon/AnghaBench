; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_free_all_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_free_all_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam = type { i64*, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i64 }

@NPC_MCAM_INVALID_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.npc_mcam*, i64)* @npc_mcam_free_all_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_mcam_free_all_counters(%struct.rvu* %0, %struct.npc_mcam* %1, i64 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.npc_mcam*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.npc_mcam* %1, %struct.npc_mcam** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %41, %3
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %11 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %8
  %16 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %17 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load i64, i64* @NPC_MCAM_INVALID_MAP, align 8
  %26 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %27 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %25, i64* %30, align 8
  %31 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %32 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %37 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %36, i32 0, i32 1
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @rvu_free_rsrc(%struct.TYPE_2__* %37, i64 %38)
  br label %40

40:                                               ; preds = %24, %15
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rvu_free_rsrc(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
