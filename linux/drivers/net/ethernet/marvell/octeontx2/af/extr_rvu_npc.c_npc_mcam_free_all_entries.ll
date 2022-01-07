; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_free_all_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_free_all_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam = type { i64, i64*, i64* }

@NPC_MCAM_INVALID_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.npc_mcam*, i32, i64)* @npc_mcam_free_all_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_mcam_free_all_entries(%struct.rvu* %0, %struct.npc_mcam* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam* %1, %struct.npc_mcam** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %59, %4
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %14 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %11
  %18 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %19 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %17
  %27 = load i64, i64* @NPC_MCAM_INVALID_MAP, align 8
  %28 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %29 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %27, i64* %32, align 8
  %33 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @npc_mcam_clear_bit(%struct.npc_mcam* %33, i64 %34)
  %36 = load %struct.rvu*, %struct.rvu** %5, align 8
  %37 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @npc_enable_mcam_entry(%struct.rvu* %36, %struct.npc_mcam* %37, i32 %38, i64 %39, i32 0)
  %41 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %42 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @NPC_MCAM_INVALID_MAP, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %26
  %51 = load %struct.rvu*, %struct.rvu** %5, align 8
  %52 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu* %51, %struct.npc_mcam* %52, i32 %53, i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %50, %26
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %11

62:                                               ; preds = %11
  ret void
}

declare dso_local i32 @npc_mcam_clear_bit(%struct.npc_mcam*, i64) #1

declare dso_local i32 @npc_enable_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i64, i32) #1

declare dso_local i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
