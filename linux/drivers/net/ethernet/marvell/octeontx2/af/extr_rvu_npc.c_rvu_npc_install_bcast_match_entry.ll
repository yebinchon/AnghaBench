; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_install_bcast_match_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_install_bcast_match_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.mcam_entry = type { i32*, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nix_rx_action = type { i32, i32, i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@NIXLF_BCAST_ENTRY = common dso_local global i32 0, align 4
@NIX_RX_ACTIONOP_UCAST = common dso_local global i32 0, align 4
@NIX_INTF_RX = common dso_local global i32 0, align 4
@NIX_RX_ACTIONOP_MCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_npc_install_bcast_match_entry(%struct.rvu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.npc_mcam*, align 8
  %10 = alloca %struct.mcam_entry, align 8
  %11 = alloca %struct.nix_rx_action, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.npc_mcam* %17, %struct.npc_mcam** %9, align 8
  %18 = bitcast %struct.mcam_entry* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.rvu*, %struct.rvu** %5, align 8
  %20 = load i32, i32* @BLKTYPE_NPC, align 4
  %21 = call i32 @rvu_get_blkaddr(%struct.rvu* %19, i32 %20, i32 0)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %64

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %64

31:                                               ; preds = %25
  %32 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NIXLF_BCAST_ENTRY, align 4
  %36 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = call i32 @BIT_ULL(i32 13)
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %10, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %39, i32* %42, align 4
  %43 = call i32 @BIT_ULL(i32 13)
  %44 = sext i32 %43 to i64
  %45 = or i64 %44, 4095
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %10, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = bitcast %struct.nix_rx_action* %11 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @NIX_RX_ACTIONOP_UCAST, align 4
  %52 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %11, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %11, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.nix_rx_action* %11 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %10, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load %struct.rvu*, %struct.rvu** %5, align 8
  %59 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @NIX_INTF_RX, align 4
  %63 = call i32 @npc_config_mcam_entry(%struct.rvu* %58, %struct.npc_mcam* %59, i32 %60, i32 %61, i32 %62, %struct.mcam_entry* %10, i32 1)
  br label %64

64:                                               ; preds = %31, %30, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #2

declare dso_local i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam*, i32, i32, i32) #2

declare dso_local i32 @BIT_ULL(i32) #2

declare dso_local i32 @npc_config_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32, %struct.mcam_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
