; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_install_ucast_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_install_ucast_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.rvu_pfvf = type { i32 }
%struct.mcam_entry = type { i32*, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nix_rx_action = type { i32, i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NIXLF_UCAST_ENTRY = common dso_local global i32 0, align 4
@NPC_PARSE_RESULT_DMAC_OFFSET = common dso_local global i32 0, align 4
@NIX_RX_ACTIONOP_UCAST = common dso_local global i32 0, align 4
@NIX_INTF_RX = common dso_local global i32 0, align 4
@NPC_LT_LB_STAG = common dso_local global i32 0, align 4
@NPC_LT_LB_CTAG = common dso_local global i32 0, align 4
@VTAG0_VALID_BIT = common dso_local global i32 0, align 4
@VTAG0_TYPE_MASK = common dso_local global i32 0, align 4
@VTAG0_LID_MASK = common dso_local global i32 0, align 4
@NPC_LID_LA = common dso_local global i32 0, align 4
@VTAG0_RELPTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_npc_install_ucast_entry(%struct.rvu* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rvu_pfvf*, align 8
  %12 = alloca %struct.npc_mcam*, align 8
  %13 = alloca %struct.mcam_entry, align 8
  %14 = alloca %struct.nix_rx_action, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load %struct.rvu*, %struct.rvu** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %19, i32 %20)
  store %struct.rvu_pfvf* %21, %struct.rvu_pfvf** %11, align 8
  %22 = load %struct.rvu*, %struct.rvu** %6, align 8
  %23 = getelementptr inbounds %struct.rvu, %struct.rvu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.npc_mcam* %25, %struct.npc_mcam** %12, align 8
  %26 = bitcast %struct.mcam_entry* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @is_afvf(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %148

31:                                               ; preds = %5
  %32 = load %struct.rvu*, %struct.rvu** %6, align 8
  %33 = load i32, i32* @BLKTYPE_NPC, align 4
  %34 = call i32 @rvu_get_blkaddr(%struct.rvu* %32, i32 %33, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %148

38:                                               ; preds = %31
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %53, %38
  %42 = load i32, i32* %16, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 8, %48
  %50 = shl i32 %47, %49
  %51 = load i32, i32* %18, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %16, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NIXLF_UCAST_ENTRY, align 4
  %61 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 4095, i32* %68, align 4
  %69 = load i32, i32* @NPC_PARSE_RESULT_DMAC_OFFSET, align 4
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = call i32 @BIT_ULL(i32 48)
  %80 = sub nsw i32 %79, 1
  %81 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load %struct.rvu*, %struct.rvu** %6, align 8
  %87 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i64 @is_mcam_entry_enabled(%struct.rvu* %86, %struct.npc_mcam* %87, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %56
  %93 = load %struct.rvu*, %struct.rvu** %6, align 8
  %94 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @npc_get_mcam_action(%struct.rvu* %93, %struct.npc_mcam* %94, i32 %95, i32 %96)
  %98 = bitcast %struct.nix_rx_action* %14 to i32*
  store i32 %97, i32* %98, align 4
  br label %105

99:                                               ; preds = %56
  %100 = bitcast %struct.nix_rx_action* %14 to i32*
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* @NIX_RX_ACTIONOP_UCAST, align 4
  %102 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %14, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %14, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = bitcast %struct.nix_rx_action* %14 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = load %struct.rvu*, %struct.rvu** %6, align 8
  %110 = load %struct.npc_mcam*, %struct.npc_mcam** %12, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @NIX_INTF_RX, align 4
  %114 = call i32 @npc_config_mcam_entry(%struct.rvu* %109, %struct.npc_mcam* %110, i32 %111, i32 %112, i32 %113, %struct.mcam_entry* %13, i32 1)
  %115 = load i32, i32* @NPC_LT_LB_STAG, align 4
  %116 = load i32, i32* @NPC_LT_LB_CTAG, align 4
  %117 = or i32 %115, %116
  %118 = shl i32 %117, 20
  %119 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @NPC_LT_LB_STAG, align 4
  %125 = load i32, i32* @NPC_LT_LB_CTAG, align 4
  %126 = and i32 %124, %125
  %127 = shl i32 %126, 20
  %128 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @VTAG0_VALID_BIT, align 4
  %134 = load i32, i32* @VTAG0_TYPE_MASK, align 4
  %135 = call i32 @FIELD_PREP(i32 %134, i32 0)
  %136 = or i32 %133, %135
  %137 = load i32, i32* @VTAG0_LID_MASK, align 4
  %138 = load i32, i32* @NPC_LID_LA, align 4
  %139 = call i32 @FIELD_PREP(i32 %137, i32 %138)
  %140 = or i32 %136, %139
  %141 = load i32, i32* @VTAG0_RELPTR_MASK, align 4
  %142 = call i32 @FIELD_PREP(i32 %141, i32 12)
  %143 = or i32 %140, %142
  %144 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %13, i32 0, i32 3
  store i32 %143, i32* %144, align 4
  %145 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %11, align 8
  %146 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %145, i32 0, i32 0
  %147 = call i32 @memcpy(i32* %146, %struct.mcam_entry* %13, i32 32)
  br label %148

148:                                              ; preds = %105, %37, %30
  ret void
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @is_afvf(i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @is_mcam_entry_enabled(%struct.rvu*, %struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @npc_get_mcam_action(%struct.rvu*, %struct.npc_mcam*, i32, i32) #1

declare dso_local i32 @npc_config_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32, %struct.mcam_entry*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mcam_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
