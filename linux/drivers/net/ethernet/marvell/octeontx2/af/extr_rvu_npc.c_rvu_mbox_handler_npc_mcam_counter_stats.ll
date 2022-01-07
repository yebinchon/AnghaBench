; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_counter_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_counter_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.npc_mcam_oper_counter_req = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.npc_mcam_oper_counter_rsp = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_counter_stats(%struct.rvu* %0, %struct.npc_mcam_oper_counter_req* %1, %struct.npc_mcam_oper_counter_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_oper_counter_req*, align 8
  %7 = alloca %struct.npc_mcam_oper_counter_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_oper_counter_req* %1, %struct.npc_mcam_oper_counter_req** %6, align 8
  store %struct.npc_mcam_oper_counter_rsp* %2, %struct.npc_mcam_oper_counter_rsp** %7, align 8
  %11 = load %struct.rvu*, %struct.rvu** %5, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.npc_mcam* %14, %struct.npc_mcam** %8, align 8
  %15 = load %struct.rvu*, %struct.rvu** %5, align 8
  %16 = load i32, i32* @BLKTYPE_NPC, align 4
  %17 = call i32 @rvu_get_blkaddr(%struct.rvu* %15, i32 %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %24 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %27 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %28 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %32 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @npc_mcam_verify_counter(%struct.npc_mcam* %26, i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %36 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %22
  %43 = load %struct.rvu*, %struct.rvu** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.npc_mcam_oper_counter_req*, %struct.npc_mcam_oper_counter_req** %6, align 8
  %46 = getelementptr inbounds %struct.npc_mcam_oper_counter_req, %struct.npc_mcam_oper_counter_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NPC_AF_MATCH_STATX(i32 %47)
  %49 = call i32 @rvu_read64(%struct.rvu* %43, i32 %44, i32 %48)
  %50 = load %struct.npc_mcam_oper_counter_rsp*, %struct.npc_mcam_oper_counter_rsp** %7, align 8
  %51 = getelementptr inbounds %struct.npc_mcam_oper_counter_rsp, %struct.npc_mcam_oper_counter_rsp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 @BIT_ULL(i32 48)
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.npc_mcam_oper_counter_rsp*, %struct.npc_mcam_oper_counter_rsp** %7, align 8
  %55 = getelementptr inbounds %struct.npc_mcam_oper_counter_rsp, %struct.npc_mcam_oper_counter_rsp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %42, %40, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_counter(%struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NPC_AF_MATCH_STATX(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
