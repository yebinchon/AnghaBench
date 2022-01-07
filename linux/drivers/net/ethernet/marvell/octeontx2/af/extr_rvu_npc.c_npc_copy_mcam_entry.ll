; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_copy_mcam_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_copy_mcam_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.npc_mcam*, i32, i32, i32)* @npc_copy_mcam_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_copy_mcam_entry(%struct.rvu* %0, %struct.npc_mcam* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca %struct.npc_mcam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store %struct.npc_mcam* %1, %struct.npc_mcam** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @npc_get_bank(%struct.npc_mcam* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @npc_get_bank(%struct.npc_mcam* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %25 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %31 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %78, %5
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %39 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i64 @NPC_AF_MCAMEX_BANKX_CAMX_INTF(i32 %43, i32 %46, i32 0)
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i64 @NPC_AF_MCAMEX_BANKX_CAMX_INTF(i32 %48, i32 %51, i32 0)
  store i64 %52, i64* %15, align 8
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %74, %42
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 6
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.rvu*, %struct.rvu** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* %17, align 4
  %61 = mul nsw i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = call i64 @rvu_read64(%struct.rvu* %57, i32 %58, i64 %63)
  store i64 %64, i64* %13, align 8
  %65 = load %struct.rvu*, %struct.rvu** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %15, align 8
  %68 = load i32, i32* %17, align 4
  %69 = mul nsw i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @rvu_write64(%struct.rvu* %65, i32 %66, i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %36

81:                                               ; preds = %36
  %82 = load %struct.rvu*, %struct.rvu** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %84, i32 %85)
  %87 = call i64 @rvu_read64(%struct.rvu* %82, i32 %83, i64 %86)
  store i64 %87, i64* %13, align 8
  %88 = load %struct.rvu*, %struct.rvu** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %90, i32 %91)
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @rvu_write64(%struct.rvu* %88, i32 %89, i64 %92, i64 %93)
  %95 = load %struct.rvu*, %struct.rvu** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @NPC_AF_MCAMEX_BANKX_TAG_ACT(i32 %97, i32 %98)
  %100 = call i64 @rvu_read64(%struct.rvu* %95, i32 %96, i64 %99)
  store i64 %100, i64* %13, align 8
  %101 = load %struct.rvu*, %struct.rvu** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @NPC_AF_MCAMEX_BANKX_TAG_ACT(i32 %103, i32 %104)
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @rvu_write64(%struct.rvu* %101, i32 %102, i64 %105, i64 %106)
  %108 = load %struct.rvu*, %struct.rvu** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @NPC_AF_MCAMEX_BANKX_CFG(i32 %110, i32 %111)
  %113 = call i64 @rvu_read64(%struct.rvu* %108, i32 %109, i64 %112)
  store i64 %113, i64* %13, align 8
  %114 = load %struct.rvu*, %struct.rvu** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @NPC_AF_MCAMEX_BANKX_CFG(i32 %116, i32 %117)
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @rvu_write64(%struct.rvu* %114, i32 %115, i64 %118, i64 %119)
  ret void
}

declare dso_local i32 @npc_get_bank(%struct.npc_mcam*, i32) #1

declare dso_local i64 @NPC_AF_MCAMEX_BANKX_CAMX_INTF(i32, i32, i32) #1

declare dso_local i64 @rvu_read64(%struct.rvu*, i32, i64) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i64, i64) #1

declare dso_local i64 @NPC_AF_MCAMEX_BANKX_ACTION(i32, i32) #1

declare dso_local i64 @NPC_AF_MCAMEX_BANKX_TAG_ACT(i32, i32) #1

declare dso_local i64 @NPC_AF_MCAMEX_BANKX_CFG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
