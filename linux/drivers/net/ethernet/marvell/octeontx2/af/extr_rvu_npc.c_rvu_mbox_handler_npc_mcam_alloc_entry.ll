; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.npc_mcam_alloc_entry_req = type { i64, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.npc_mcam_alloc_entry_rsp = type { i64, i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NPC_MCAM_ENTRY_INVALID = common dso_local global i32 0, align 4
@NPC_MCAM_HIGHER_PRIO = common dso_local global i64 0, align 8
@NPC_MCAM_LOWER_PRIO = common dso_local global i64 0, align 8
@NPC_MAX_NONCONTIG_ENTRIES = common dso_local global i64 0, align 8
@NPC_MCAM_ALLOC_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_alloc_entry(%struct.rvu* %0, %struct.npc_mcam_alloc_entry_req* %1, %struct.npc_mcam_alloc_entry_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_alloc_entry_req*, align 8
  %7 = alloca %struct.npc_mcam_alloc_entry_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_alloc_entry_req* %1, %struct.npc_mcam_alloc_entry_req** %6, align 8
  store %struct.npc_mcam_alloc_entry_rsp* %2, %struct.npc_mcam_alloc_entry_rsp** %7, align 8
  %11 = load %struct.rvu*, %struct.rvu** %5, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.npc_mcam* %14, %struct.npc_mcam** %8, align 8
  %15 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %16 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rvu*, %struct.rvu** %5, align 8
  %20 = load i32, i32* @BLKTYPE_NPC, align 4
  %21 = call i32 @rvu_get_blkaddr(%struct.rvu* %19, i32 %20, i32 0)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %3
  %27 = load i32, i32* @NPC_MCAM_ENTRY_INVALID, align 4
  %28 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %7, align 8
  %29 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %7, align 8
  %31 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %33 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %38 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %41 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %45, i32* %4, align 4
  br label %100

46:                                               ; preds = %36, %26
  %47 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %48 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %53 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NPC_MCAM_HIGHER_PRIO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %59 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %62 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %68 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NPC_MCAM_LOWER_PRIO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %51
  %73 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %73, i32* %4, align 4
  br label %100

74:                                               ; preds = %66, %57
  %75 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %76 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %81 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NPC_MAX_NONCONTIG_ENTRIES, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %86, i32* %4, align 4
  br label %100

87:                                               ; preds = %79, %74
  %88 = load %struct.rvu*, %struct.rvu** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @is_nixlf_attached(%struct.rvu* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @NPC_MCAM_ALLOC_DENIED, align 4
  store i32 %93, i32* %4, align 4
  br label %100

94:                                               ; preds = %87
  %95 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %6, align 8
  %98 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %7, align 8
  %99 = call i32 @npc_mcam_alloc_entries(%struct.npc_mcam* %95, i32 %96, %struct.npc_mcam_alloc_entry_req* %97, %struct.npc_mcam_alloc_entry_rsp* %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %92, %85, %72, %44, %24
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @is_nixlf_attached(%struct.rvu*, i32) #1

declare dso_local i32 @npc_mcam_alloc_entries(%struct.npc_mcam*, i32, %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
