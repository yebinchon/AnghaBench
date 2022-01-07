; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_is_mcam_entry_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_is_mcam_entry_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.npc_mcam*, i32, i32)* @is_mcam_entry_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mcam_entry_enabled(%struct.rvu* %0, %struct.npc_mcam* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npc_mcam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npc_mcam* %1, %struct.npc_mcam** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @npc_get_bank(%struct.npc_mcam* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %15 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @NPC_AF_MCAMEX_BANKX_CFG(i32 %22, i32 %23)
  %25 = call i32 @rvu_read64(%struct.rvu* %20, i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 1
  ret i32 %27
}

declare dso_local i32 @npc_get_bank(%struct.npc_mcam*, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_CFG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
