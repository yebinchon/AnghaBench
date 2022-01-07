; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_update_flowkey_alg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_update_flowkey_alg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32, i32 }
%struct.nix_rx_action = type { i32, i32, i32, i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@DEFAULT_RSS_CONTEXT_GROUP = common dso_local global i32 0, align 4
@NIXLF_UCAST_ENTRY = common dso_local global i32 0, align 4
@NIX_RX_ACTIONOP_RSS = common dso_local global i32 0, align 4
@NIXLF_PROMISC_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_npc_update_flowkey_alg_idx(%struct.rvu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rvu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.npc_mcam*, align 8
  %14 = alloca %struct.nix_rx_action, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.rvu*, %struct.rvu** %7, align 8
  %19 = getelementptr inbounds %struct.rvu, %struct.rvu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.npc_mcam* %21, %struct.npc_mcam** %13, align 8
  %22 = load %struct.rvu*, %struct.rvu** %7, align 8
  %23 = load i32, i32* @BLKTYPE_NPC, align 4
  %24 = call i32 @rvu_get_blkaddr(%struct.rvu* %22, i32 %23, i32 0)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %123

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @DEFAULT_RSS_CONTEXT_GROUP, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %123

36:                                               ; preds = %31
  %37 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NIXLF_UCAST_ENTRY, align 4
  %41 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %47 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %123

51:                                               ; preds = %44
  %52 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @npc_get_bank(%struct.npc_mcam* %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %56 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %16, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load %struct.rvu*, %struct.rvu** %7, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %63, i32 %64)
  %66 = call i32 @rvu_read64(%struct.rvu* %61, i32 %62, i32 %65)
  %67 = bitcast %struct.nix_rx_action* %14 to i32*
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.nix_rx_action* %14 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %51
  br label %123

72:                                               ; preds = %51
  %73 = load i32, i32* @NIX_RX_ACTIONOP_RSS, align 4
  %74 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %14, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %14, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %14, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.rvu*, %struct.rvu** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %83, i32 %84)
  %86 = bitcast %struct.nix_rx_action* %14 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rvu_write64(%struct.rvu* %81, i32 %82, i32 %85, i32 %87)
  %89 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @NIXLF_PROMISC_ENTRY, align 4
  %93 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load %struct.rvu*, %struct.rvu** %7, align 8
  %95 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i64 @is_mcam_entry_enabled(%struct.rvu* %94, %struct.npc_mcam* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %72
  %101 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @npc_get_bank(%struct.npc_mcam* %101, i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load %struct.npc_mcam*, %struct.npc_mcam** %13, align 8
  %105 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %16, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %16, align 4
  %110 = load %struct.rvu*, %struct.rvu** %7, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %112, i32 %113)
  %115 = bitcast %struct.nix_rx_action* %14 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rvu_write64(%struct.rvu* %110, i32 %111, i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %100, %72
  %119 = load %struct.rvu*, %struct.rvu** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @rvu_npc_update_rxvlan(%struct.rvu* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %71, %50, %35, %27
  ret void
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam*, i32, i32, i32) #1

declare dso_local i32 @npc_get_bank(%struct.npc_mcam*, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i64 @is_mcam_entry_enabled(%struct.rvu*, %struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @rvu_npc_update_rxvlan(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
