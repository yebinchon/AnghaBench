; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_get_nixlf_mcam_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_get_nixlf_mcam_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npc_mcam = type { i32, i32 }

@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@RSVD_MCAM_ENTRIES_PER_PF = common dso_local global i32 0, align 4
@NIXLF_BCAST_ENTRY = common dso_local global i32 0, align 4
@NIXLF_PROMISC_ENTRY = common dso_local global i32 0, align 4
@RSVD_MCAM_ENTRIES_PER_NIXLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npc_mcam*, i32, i32, i32)* @npc_get_nixlf_mcam_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npc_get_nixlf_mcam_index(%struct.npc_mcam* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.npc_mcam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.npc_mcam* %0, %struct.npc_mcam** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @rvu_get_pf(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %10, align 4
  %24 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %25 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @RSVD_MCAM_ENTRIES_PER_PF, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NIXLF_BCAST_ENTRY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %53

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @NIXLF_PROMISC_ENTRY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %53

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %16, %4
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %47 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @RSVD_MCAM_ENTRIES_PER_NIXLF, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %40, %34
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @rvu_get_pf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
