; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_free_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i64*, i32, i64* }
%struct.npc_mcam_free_entry_req = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_free_entry(%struct.rvu* %0, %struct.npc_mcam_free_entry_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_free_entry_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_free_entry_req* %1, %struct.npc_mcam_free_entry_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.npc_mcam* %16, %struct.npc_mcam** %8, align 8
  %17 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %18 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.rvu*, %struct.rvu** %5, align 8
  %22 = load i32, i32* @BLKTYPE_NPC, align 4
  %23 = call i32 @rvu_get_blkaddr(%struct.rvu* %21, i32 %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %27, i32* %4, align 4
  br label %106

28:                                               ; preds = %3
  %29 = load %struct.rvu*, %struct.rvu** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @is_nixlf_attached(%struct.rvu* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %34, i32* %4, align 4
  br label %106

35:                                               ; preds = %28
  %36 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %37 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %40 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %95

44:                                               ; preds = %35
  %45 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %48 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @npc_mcam_verify_entry(%struct.npc_mcam* %45, i64 %46, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %101

54:                                               ; preds = %44
  %55 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %56 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %59 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %63 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %64 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @npc_mcam_clear_bit(%struct.npc_mcam* %62, i64 %65)
  %67 = load %struct.rvu*, %struct.rvu** %5, align 8
  %68 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %71 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @npc_enable_mcam_entry(%struct.rvu* %67, %struct.npc_mcam* %68, i32 %69, i64 %72, i32 0)
  %74 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %75 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %78 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @NPC_MCAM_INVALID_MAP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %54
  %86 = load %struct.rvu*, %struct.rvu** %5, align 8
  %87 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.npc_mcam_free_entry_req*, %struct.npc_mcam_free_entry_req** %6, align 8
  %90 = getelementptr inbounds %struct.npc_mcam_free_entry_req, %struct.npc_mcam_free_entry_req* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu* %86, %struct.npc_mcam* %87, i32 %88, i64 %91, i64 %92)
  br label %94

94:                                               ; preds = %85, %54
  br label %101

95:                                               ; preds = %43
  %96 = load %struct.rvu*, %struct.rvu** %5, align 8
  %97 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @npc_mcam_free_all_entries(%struct.rvu* %96, %struct.npc_mcam* %97, i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %94, %53
  %102 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %103 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %101, %33, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @is_nixlf_attached(%struct.rvu*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_entry(%struct.npc_mcam*, i64, i64) #1

declare dso_local i32 @npc_mcam_clear_bit(%struct.npc_mcam*, i64) #1

declare dso_local i32 @npc_enable_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i64, i32) #1

declare dso_local i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

declare dso_local i32 @npc_mcam_free_all_entries(%struct.rvu*, %struct.npc_mcam*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
