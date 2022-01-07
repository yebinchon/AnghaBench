; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_update_rxvlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_update_rxvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.rvu_pfvf = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@NIXLF_UCAST_ENTRY = common dso_local global i32 0, align 4
@NIX_INTF_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_npc_update_rxvlan(%struct.rvu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvu_pfvf*, align 8
  %9 = alloca %struct.npc_mcam*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %13, i32 %14)
  store %struct.rvu_pfvf* %15, %struct.rvu_pfvf** %8, align 8
  %16 = load %struct.rvu*, %struct.rvu** %5, align 8
  %17 = getelementptr inbounds %struct.rvu, %struct.rvu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.npc_mcam* %19, %struct.npc_mcam** %9, align 8
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = load i32, i32* @BLKTYPE_NPC, align 4
  %22 = call i32 @rvu_get_blkaddr(%struct.rvu* %20, i32 %21, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %29 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %63

33:                                               ; preds = %27
  %34 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NIXLF_UCAST_ENTRY, align 4
  %38 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.rvu*, %struct.rvu** %5, align 8
  %40 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @npc_get_mcam_action(%struct.rvu* %39, %struct.npc_mcam* %40, i32 %41, i32 %42)
  %44 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %45 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.rvu*, %struct.rvu** %5, align 8
  %48 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @is_mcam_entry_enabled(%struct.rvu* %47, %struct.npc_mcam* %48, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.rvu*, %struct.rvu** %5, align 8
  %53 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %56 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NIX_INTF_RX, align 4
  %59 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %60 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %59, i32 0, i32 0
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @npc_config_mcam_entry(%struct.rvu* %52, %struct.npc_mcam* %53, i32 %54, i32 %57, i32 %58, %struct.TYPE_4__* %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %33, %32, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam*, i32, i32, i32) #1

declare dso_local i32 @npc_get_mcam_action(%struct.rvu*, %struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @is_mcam_entry_enabled(%struct.rvu*, %struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @npc_config_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
