; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_install_promisc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_install_promisc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i32 }
%struct.mcam_entry = type { i32*, i8*, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nix_rx_action = type { i64, i32 }

@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@BLKTYPE_NPC = common dso_local global i32 0, align 4
@NIXLF_PROMISC_ENTRY = common dso_local global i32 0, align 4
@NPC_PARSE_RESULT_DMAC_OFFSET = common dso_local global i32 0, align 4
@NIXLF_UCAST_ENTRY = common dso_local global i32 0, align 4
@NIX_RX_ACTIONOP_RSS = common dso_local global i64 0, align 8
@NIX_RX_ACTIONOP_UCAST = common dso_local global i64 0, align 8
@NIX_INTF_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_npc_install_promisc_entry(%struct.rvu* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.npc_mcam*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mcam_entry, align 8
  %17 = alloca %struct.nix_rx_action, align 8
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.rvu*, %struct.rvu** %6, align 8
  %19 = getelementptr inbounds %struct.rvu, %struct.rvu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.npc_mcam* %21, %struct.npc_mcam** %11, align 8
  %22 = bitcast %struct.mcam_entry* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = bitcast %struct.nix_rx_action* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @is_afvf(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %113

33:                                               ; preds = %28, %5
  %34 = load %struct.rvu*, %struct.rvu** %6, align 8
  %35 = load i32, i32* @BLKTYPE_NPC, align 4
  %36 = call i32 @rvu_get_blkaddr(%struct.rvu* %34, i32 %35, i32 0)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %113

40:                                               ; preds = %33
  %41 = load %struct.npc_mcam*, %struct.npc_mcam** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NIXLF_PROMISC_ENTRY, align 4
  %45 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %16, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %46, i8** %49, align 8
  %50 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %16, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 4095, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %40
  %56 = load i32, i32* @NPC_PARSE_RESULT_DMAC_OFFSET, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %15, align 4
  %60 = call i8* @BIT_ULL(i32 40)
  %61 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %16, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %60, i8** %65, align 8
  %66 = call i8* @BIT_ULL(i32 40)
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %16, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %55, %40
  %74 = load %struct.npc_mcam*, %struct.npc_mcam** %11, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @NIXLF_UCAST_ENTRY, align 4
  %78 = call i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.rvu*, %struct.rvu** %6, align 8
  %80 = load %struct.npc_mcam*, %struct.npc_mcam** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @is_mcam_entry_enabled(%struct.rvu* %79, %struct.npc_mcam* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.rvu*, %struct.rvu** %6, align 8
  %87 = load %struct.npc_mcam*, %struct.npc_mcam** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i8* @npc_get_mcam_action(%struct.rvu* %86, %struct.npc_mcam* %87, i32 %88, i32 %89)
  %91 = bitcast %struct.nix_rx_action* %17 to i8**
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %73
  %93 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %17, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NIX_RX_ACTIONOP_RSS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = bitcast %struct.nix_rx_action* %17 to i8**
  store i8* null, i8** %98, align 8
  %99 = load i64, i64* @NIX_RX_ACTIONOP_UCAST, align 8
  %100 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %17, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds %struct.nix_rx_action, %struct.nix_rx_action* %17, i32 0, i32 1
  store i32 %101, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %92
  %104 = bitcast %struct.nix_rx_action* %17 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %16, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = load %struct.rvu*, %struct.rvu** %6, align 8
  %108 = load %struct.npc_mcam*, %struct.npc_mcam** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @NIX_INTF_RX, align 4
  %112 = call i32 @npc_config_mcam_entry(%struct.rvu* %107, %struct.npc_mcam* %108, i32 %109, i32 %110, i32 %111, %struct.mcam_entry* %16, i32 1)
  br label %113

113:                                              ; preds = %103, %39, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_afvf(i32) #2

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #2

declare dso_local i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam*, i32, i32, i32) #2

declare dso_local i8* @BIT_ULL(i32) #2

declare dso_local i64 @is_mcam_entry_enabled(%struct.rvu*, %struct.npc_mcam*, i32, i32) #2

declare dso_local i8* @npc_get_mcam_action(%struct.rvu*, %struct.npc_mcam*, i32, i32) #2

declare dso_local i32 @npc_config_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32, %struct.mcam_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
