; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_enadis_default_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_enadis_default_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.nix_rx_action = type { i64 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NIXLF_UCAST_ENTRY = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@NIXLF_BCAST_ENTRY = common dso_local global i32 0, align 4
@NIX_RX_ACTIONOP_MCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i32, i32)* @npc_enadis_default_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_enadis_default_entries(%struct.rvu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.npc_mcam*, align 8
  %10 = alloca %struct.nix_rx_action, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.npc_mcam* %17, %struct.npc_mcam** %9, align 8
  %18 = load %struct.rvu*, %struct.rvu** %5, align 8
  %19 = load i32, i32* @BLKTYPE_NPC, align 4
  %20 = call i32 @rvu_get_blkaddr(%struct.rvu* %18, i32 %19, i32 0)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %91

24:                                               ; preds = %4
  %25 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NIXLF_UCAST_ENTRY, align 4
  %29 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.rvu*, %struct.rvu** %5, align 8
  %31 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @npc_enable_mcam_entry(%struct.rvu* %30, %struct.npc_mcam* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %91

41:                                               ; preds = %24
  %42 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NIXLF_BCAST_ENTRY, align 4
  %46 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @npc_get_bank(%struct.npc_mcam* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.rvu*, %struct.rvu** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %54 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %52, %56
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %57, i32 %58)
  %60 = call i32 @rvu_read64(%struct.rvu* %50, i32 %51, i32 %59)
  %61 = bitcast %struct.nix_rx_action* %10 to i32*
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NIX_RX_ACTIONOP_MCAST, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %41
  %67 = load %struct.rvu*, %struct.rvu** %5, align 8
  %68 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @npc_enable_mcam_entry(%struct.rvu* %67, %struct.npc_mcam* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %41
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.rvu*, %struct.rvu** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @rvu_npc_enable_promisc_entry(%struct.rvu* %77, i32 %78, i32 %79)
  br label %86

81:                                               ; preds = %73
  %82 = load %struct.rvu*, %struct.rvu** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @rvu_npc_disable_promisc_entry(%struct.rvu* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.rvu*, %struct.rvu** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @rvu_npc_update_rxvlan(%struct.rvu* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %40, %23
  ret void
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam*, i32, i32, i32) #1

declare dso_local i32 @npc_enable_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32) #1

declare dso_local i32 @npc_get_bank(%struct.npc_mcam*, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32, i32) #1

declare dso_local i32 @rvu_npc_enable_promisc_entry(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_npc_disable_promisc_entry(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_npc_update_rxvlan(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
