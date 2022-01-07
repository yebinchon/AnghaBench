; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_ena_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_ena_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.npc_mcam_ena_dis_entry_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_ena_entry(%struct.rvu* %0, %struct.npc_mcam_ena_dis_entry_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_ena_dis_entry_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_ena_dis_entry_req* %1, %struct.npc_mcam_ena_dis_entry_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %12 = load %struct.rvu*, %struct.rvu** %5, align 8
  %13 = getelementptr inbounds %struct.rvu, %struct.rvu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.npc_mcam* %15, %struct.npc_mcam** %8, align 8
  %16 = load %struct.npc_mcam_ena_dis_entry_req*, %struct.npc_mcam_ena_dis_entry_req** %6, align 8
  %17 = getelementptr inbounds %struct.npc_mcam_ena_dis_entry_req, %struct.npc_mcam_ena_dis_entry_req* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = load i32, i32* @BLKTYPE_NPC, align 4
  %22 = call i32 @rvu_get_blkaddr(%struct.rvu* %20, i32 %21, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %3
  %28 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %29 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.npc_mcam_ena_dis_entry_req*, %struct.npc_mcam_ena_dis_entry_req** %6, align 8
  %34 = getelementptr inbounds %struct.npc_mcam_ena_dis_entry_req, %struct.npc_mcam_ena_dis_entry_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @npc_mcam_verify_entry(%struct.npc_mcam* %31, i32 %32, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %38 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %27
  %45 = load %struct.rvu*, %struct.rvu** %5, align 8
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.npc_mcam_ena_dis_entry_req*, %struct.npc_mcam_ena_dis_entry_req** %6, align 8
  %49 = getelementptr inbounds %struct.npc_mcam_ena_dis_entry_req, %struct.npc_mcam_ena_dis_entry_req* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @npc_enable_mcam_entry(%struct.rvu* %45, %struct.npc_mcam* %46, i32 %47, i32 %50, i32 1)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %42, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_entry(%struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @npc_enable_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
