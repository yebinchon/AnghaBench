; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_get_mcam_search_range_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_get_mcam_search_range_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npc_mcam = type { i64, i64, i64, i32 }
%struct.npc_mcam_alloc_entry_req = type { i64, i64, i64 }

@NPC_MCAM_HIGHER_PRIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npc_mcam*, %struct.npc_mcam_alloc_entry_req*, i64*, i64*, i32*)* @npc_get_mcam_search_range_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_get_mcam_search_range_priority(%struct.npc_mcam* %0, %struct.npc_mcam_alloc_entry_req* %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.npc_mcam*, align 8
  %7 = alloca %struct.npc_mcam_alloc_entry_req*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.npc_mcam* %0, %struct.npc_mcam** %6, align 8
  store %struct.npc_mcam_alloc_entry_req* %1, %struct.npc_mcam_alloc_entry_req** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %13 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NPC_MCAM_HIGHER_PRIO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %61

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %21 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load i64*, i64** %8, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %26 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %30 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %33 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %102

37:                                               ; preds = %18
  %38 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %39 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %42 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %45 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @npc_mcam_get_free_count(i32 %40, i64 %43, i64 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %50 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %37
  %54 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %55 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %8, align 8
  store i64 %56, i64* %57, align 8
  br label %60

58:                                               ; preds = %37
  %59 = load i32*, i32** %10, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %53
  br label %102

61:                                               ; preds = %17
  %62 = load i32*, i32** %10, align 8
  store i32 1, i32* %62, align 4
  %63 = load i64*, i64** %8, align 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %65 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %69 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %72 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %102

76:                                               ; preds = %61
  %77 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %78 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %81 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %84 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @npc_mcam_get_free_count(i32 %79, i64 %82, i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %7, align 8
  %89 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %102

93:                                               ; preds = %76
  %94 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %95 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  %98 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %99 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %92, %75, %60, %36
  ret void
}

declare dso_local i64 @npc_mcam_get_free_count(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
