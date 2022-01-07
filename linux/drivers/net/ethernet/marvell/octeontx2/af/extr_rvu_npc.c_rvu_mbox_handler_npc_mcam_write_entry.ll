; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_write_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_mbox_handler_npc_mcam_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.npc_mcam_write_entry_req = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NIX_INTF_RX = common dso_local global i32 0, align 4
@NIX_INTF_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npc_mcam_write_entry(%struct.rvu* %0, %struct.npc_mcam_write_entry_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam_write_entry_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.npc_mcam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam_write_entry_req* %1, %struct.npc_mcam_write_entry_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %12 = load %struct.rvu*, %struct.rvu** %5, align 8
  %13 = getelementptr inbounds %struct.rvu, %struct.rvu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.npc_mcam* %15, %struct.npc_mcam** %8, align 8
  %16 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %17 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %16, i32 0, i32 6
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
  br label %106

27:                                               ; preds = %3
  %28 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %29 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %34 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @npc_mcam_verify_entry(%struct.npc_mcam* %31, i32 %32, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %101

40:                                               ; preds = %27
  %41 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %42 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %49 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @npc_mcam_verify_counter(%struct.npc_mcam* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %54, i32* %11, align 4
  br label %101

55:                                               ; preds = %45, %40
  %56 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %57 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NIX_INTF_RX, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %63 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NIX_INTF_TX, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %68, i32* %11, align 4
  br label %101

69:                                               ; preds = %61, %55
  %70 = load %struct.rvu*, %struct.rvu** %5, align 8
  %71 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %74 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %77 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %80 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %79, i32 0, i32 4
  %81 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %82 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @npc_config_mcam_entry(%struct.rvu* %70, %struct.npc_mcam* %71, i32 %72, i32 %75, i32 %78, i32* %80, i32 %83)
  %85 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %86 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %69
  %90 = load %struct.rvu*, %struct.rvu** %5, align 8
  %91 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %94 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.npc_mcam_write_entry_req*, %struct.npc_mcam_write_entry_req** %6, align 8
  %97 = getelementptr inbounds %struct.npc_mcam_write_entry_req, %struct.npc_mcam_write_entry_req* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @npc_map_mcam_entry_and_cntr(%struct.rvu* %90, %struct.npc_mcam* %91, i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %89, %69
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %67, %53, %39
  %102 = load %struct.npc_mcam*, %struct.npc_mcam** %8, align 8
  %103 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %101, %25
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npc_mcam_verify_entry(%struct.npc_mcam*, i32, i32) #1

declare dso_local i64 @npc_mcam_verify_counter(%struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @npc_config_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @npc_map_mcam_entry_and_cntr(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
