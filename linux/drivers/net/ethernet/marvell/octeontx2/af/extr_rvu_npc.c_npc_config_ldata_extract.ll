; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_ldata_extract.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_ldata_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.npc_mcam }
%struct.npc_mcam = type { i64 }

@NPC_AF_CONST = common dso_local global i32 0, align 4
@NIX_INTF_RX = common dso_local global i32 0, align 4
@NIX_INTF_TX = common dso_local global i32 0, align 4
@NPC_MCAM_KEY_X2 = common dso_local global i64 0, align 8
@NPC_PARSE_RESULT_DMAC_OFFSET = common dso_local global i32 0, align 4
@NPC_LID_LA = common dso_local global i32 0, align 4
@NPC_LT_LA_ETHER = common dso_local global i32 0, align 4
@NPC_LID_LB = common dso_local global i32 0, align 4
@NPC_LT_LB_CTAG = common dso_local global i32 0, align 4
@NPC_LT_LB_STAG = common dso_local global i32 0, align 4
@NPC_LT_LB_QINQ = common dso_local global i32 0, align 4
@NPC_LID_LC = common dso_local global i32 0, align 4
@NPC_LT_LC_IP = common dso_local global i32 0, align 4
@NPC_LID_LD = common dso_local global i32 0, align 4
@NPC_LT_LD_UDP = common dso_local global i32 0, align 4
@NPC_LT_LD_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32)* @npc_config_ldata_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_config_ldata_extract(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.npc_mcam*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rvu*, %struct.rvu** %3, align 8
  %11 = getelementptr inbounds %struct.rvu, %struct.rvu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.npc_mcam* %13, %struct.npc_mcam** %5, align 8
  %14 = load %struct.rvu*, %struct.rvu** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NPC_AF_CONST, align 4
  %17 = call i32 @rvu_read64(%struct.rvu* %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %62, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load i32, i32* @NIX_INTF_RX, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @SET_KEX_LD(i32 %30, i32 %31, i32 %32, i32 0, i32 0)
  %34 = load i32, i32* @NIX_INTF_RX, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @SET_KEX_LD(i32 %34, i32 %35, i32 %36, i32 1, i32 0)
  %38 = load i32, i32* @NIX_INTF_TX, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @SET_KEX_LD(i32 %38, i32 %39, i32 %40, i32 0, i32 0)
  %42 = load i32, i32* @NIX_INTF_TX, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @SET_KEX_LD(i32 %42, i32 %43, i32 %44, i32 1, i32 0)
  %46 = load i32, i32* @NIX_INTF_RX, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @SET_KEX_LDFLAGS(i32 %46, i32 0, i32 %47, i64 0)
  %49 = load i32, i32* @NIX_INTF_RX, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @SET_KEX_LDFLAGS(i32 %49, i32 1, i32 %50, i64 0)
  %52 = load i32, i32* @NIX_INTF_TX, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @SET_KEX_LDFLAGS(i32 %52, i32 0, i32 %53, i64 0)
  %55 = load i32, i32* @NIX_INTF_TX, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @SET_KEX_LDFLAGS(i32 %55, i32 1, i32 %56, i64 0)
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %26

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %21

65:                                               ; preds = %21
  %66 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %67 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NPC_MCAM_KEY_X2, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %139

72:                                               ; preds = %65
  %73 = load i32, i32* @NPC_PARSE_RESULT_DMAC_OFFSET, align 4
  %74 = call i32 @KEX_LD_CFG(i32 5, i32 0, i32 1, i32 0, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @NIX_INTF_RX, align 4
  %76 = load i32, i32* @NPC_LID_LA, align 4
  %77 = load i32, i32* @NPC_LT_LA_ETHER, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @SET_KEX_LD(i32 %75, i32 %76, i32 %77, i32 0, i32 %78)
  %80 = call i32 @KEX_LD_CFG(i32 1, i32 12, i32 1, i32 0, i32 4)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @NIX_INTF_RX, align 4
  %82 = load i32, i32* @NPC_LID_LA, align 4
  %83 = load i32, i32* @NPC_LT_LA_ETHER, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @SET_KEX_LD(i32 %81, i32 %82, i32 %83, i32 1, i32 %84)
  %86 = call i32 @KEX_LD_CFG(i32 3, i32 0, i32 1, i32 0, i32 4)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @NIX_INTF_RX, align 4
  %88 = load i32, i32* @NPC_LID_LB, align 4
  %89 = load i32, i32* @NPC_LT_LB_CTAG, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @SET_KEX_LD(i32 %87, i32 %88, i32 %89, i32 0, i32 %90)
  %92 = call i32 @KEX_LD_CFG(i32 3, i32 4, i32 1, i32 0, i32 4)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @NIX_INTF_RX, align 4
  %94 = load i32, i32* @NPC_LID_LB, align 4
  %95 = load i32, i32* @NPC_LT_LB_STAG, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @SET_KEX_LD(i32 %93, i32 %94, i32 %95, i32 0, i32 %96)
  %98 = load i32, i32* @NIX_INTF_RX, align 4
  %99 = load i32, i32* @NPC_LID_LB, align 4
  %100 = load i32, i32* @NPC_LT_LB_QINQ, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @SET_KEX_LD(i32 %98, i32 %99, i32 %100, i32 0, i32 %101)
  %103 = call i32 @KEX_LD_CFG(i32 7, i32 12, i32 1, i32 0, i32 16)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @NIX_INTF_RX, align 4
  %105 = load i32, i32* @NPC_LID_LC, align 4
  %106 = load i32, i32* @NPC_LT_LC_IP, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @SET_KEX_LD(i32 %104, i32 %105, i32 %106, i32 0, i32 %107)
  %109 = call i32 @KEX_LD_CFG(i32 0, i32 1, i32 1, i32 0, i32 15)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @NIX_INTF_RX, align 4
  %111 = load i32, i32* @NPC_LID_LC, align 4
  %112 = load i32, i32* @NPC_LT_LC_IP, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @SET_KEX_LD(i32 %110, i32 %111, i32 %112, i32 1, i32 %113)
  %115 = call i32 @KEX_LD_CFG(i32 1, i32 0, i32 1, i32 0, i32 24)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* @NIX_INTF_RX, align 4
  %117 = load i32, i32* @NPC_LID_LD, align 4
  %118 = load i32, i32* @NPC_LT_LD_UDP, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @SET_KEX_LD(i32 %116, i32 %117, i32 %118, i32 0, i32 %119)
  %121 = call i32 @KEX_LD_CFG(i32 1, i32 2, i32 1, i32 0, i32 26)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @NIX_INTF_RX, align 4
  %123 = load i32, i32* @NPC_LID_LD, align 4
  %124 = load i32, i32* @NPC_LT_LD_UDP, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @SET_KEX_LD(i32 %122, i32 %123, i32 %124, i32 1, i32 %125)
  %127 = call i32 @KEX_LD_CFG(i32 1, i32 0, i32 1, i32 0, i32 24)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @NIX_INTF_RX, align 4
  %129 = load i32, i32* @NPC_LID_LD, align 4
  %130 = load i32, i32* @NPC_LT_LD_TCP, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @SET_KEX_LD(i32 %128, i32 %129, i32 %130, i32 0, i32 %131)
  %133 = call i32 @KEX_LD_CFG(i32 1, i32 2, i32 1, i32 0, i32 26)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* @NIX_INTF_RX, align 4
  %135 = load i32, i32* @NPC_LID_LD, align 4
  %136 = load i32, i32* @NPC_LT_LD_TCP, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @SET_KEX_LD(i32 %134, i32 %135, i32 %136, i32 1, i32 %137)
  br label %139

139:                                              ; preds = %72, %71
  ret void
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @SET_KEX_LD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SET_KEX_LDFLAGS(i32, i32, i32, i64) #1

declare dso_local i32 @KEX_LD_CFG(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
