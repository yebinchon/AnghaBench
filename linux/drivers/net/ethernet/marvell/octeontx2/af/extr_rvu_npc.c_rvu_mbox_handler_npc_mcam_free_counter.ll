; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_free_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_free_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i64, i64*, i32, i32, i32*, i32, i32* }
%struct.npc_mcam_oper_counter_req = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_free_counter(%struct.rvu* %0, %struct.npc_mcam_oper_counter_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_oper_counter_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_oper_counter_req* %1, %struct.npc_mcam_oper_counter_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.npc_mcam* %16, %struct.npc_mcam** %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.rvu*, %struct.rvu** %5, align 8
  %18 = load i32, i32* @BLKTYPE_NPC, align 4
  %19 = call i32 @rvu_get_blkaddr(%struct.rvu* %17, i32 %18, i32 0)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %23, i32* %4, align 4
  br label %118

24:                                               ; preds = %3
  %25 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %26 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %29 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %30 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %34 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @npc_mcam_verify_counter(%struct.npc_mcam* %28, i32 %32, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %41 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %118

44:                                               ; preds = %24
  %45 = load i32, i32* @NPC_MCAM_INVALID_MAP, align 4
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %47 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %50 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %45, i32* %52, align 4
  %53 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %54 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %53, i32 0, i32 5
  %55 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %56 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @rvu_free_rsrc(i32* %54, i64 %57)
  br label %59

59:                                               ; preds = %103, %102, %44
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %62 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %59
  %66 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %67 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %70 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %114

76:                                               ; preds = %65
  %77 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %78 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %81 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @find_next_bit(i32 %79, i64 %82, i64 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %87 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %114

91:                                               ; preds = %76
  %92 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %93 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %99 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %59

103:                                              ; preds = %91
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  %106 = load %struct.rvu*, %struct.rvu** %5, align 8
  %107 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %111 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu* %106, %struct.npc_mcam* %107, i32 %108, i64 %109, i64 %112)
  br label %59

114:                                              ; preds = %90, %75, %59
  %115 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %116 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %39, %22
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_counter(%struct.npc_mcam*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvu_free_rsrc(i32*, i64) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @npc_unmap_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
