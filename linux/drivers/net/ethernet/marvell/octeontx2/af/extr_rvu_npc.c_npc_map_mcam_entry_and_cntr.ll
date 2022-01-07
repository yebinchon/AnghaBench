; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_map_mcam_entry_and_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_map_mcam_entry_and_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.npc_mcam*, i32, i32, i32)* @npc_map_mcam_entry_and_cntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_map_mcam_entry_and_cntr(%struct.rvu* %0, %struct.npc_mcam* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca %struct.npc_mcam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store %struct.npc_mcam* %1, %struct.npc_mcam** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %15 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @npc_get_bank(%struct.npc_mcam* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %24 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %30 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.rvu*, %struct.rvu** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @NPC_AF_MCAMEX_BANKX_STAT_ACT(i32 %39, i32 %40)
  %42 = call i32 @BIT_ULL(i32 9)
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @rvu_write64(%struct.rvu* %37, i32 %38, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @npc_get_bank(%struct.npc_mcam*, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_STAT_ACT(i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
