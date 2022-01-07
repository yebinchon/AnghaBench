; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_mcam_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_mcam_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_mcam = type { i32, i32 }
%struct.mcam_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.npc_mcam*, i32, i32, i32, %struct.mcam_entry*, i32)* @npc_config_mcam_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_config_mcam_entry(%struct.rvu* %0, %struct.npc_mcam* %1, i32 %2, i32 %3, i32 %4, %struct.mcam_entry* %5, i32 %6) #0 {
  %8 = alloca %struct.rvu*, align 8
  %9 = alloca %struct.npc_mcam*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mcam_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %8, align 8
  store %struct.npc_mcam* %1, %struct.npc_mcam** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.mcam_entry* %5, %struct.mcam_entry** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @npc_get_bank(%struct.npc_mcam* %21, i32 %22)
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %18, align 4
  %26 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %27 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %92, %7
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %36 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %32
  %41 = load %struct.rvu*, %struct.rvu** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @NPC_AF_MCAMEX_BANKX_CAMX_INTF(i32 %43, i32 %44, i32 1)
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @rvu_write64(%struct.rvu* %41, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.rvu*, %struct.rvu** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @NPC_AF_MCAMEX_BANKX_CAMX_INTF(i32 %50, i32 %51, i32 0)
  %53 = load i32, i32* %12, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %54, 3
  %56 = call i32 @rvu_write64(%struct.rvu* %48, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.mcam_entry*, %struct.mcam_entry** %13, align 8
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @npc_get_keyword(%struct.mcam_entry* %57, i32 %58, i32* %19, i32* %20)
  %60 = load %struct.rvu*, %struct.rvu** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @NPC_AF_MCAMEX_BANKX_CAMX_W0(i32 %62, i32 %63, i32 1)
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @rvu_write64(%struct.rvu* %60, i32 %61, i32 %64, i32 %65)
  %67 = load %struct.rvu*, %struct.rvu** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @NPC_AF_MCAMEX_BANKX_CAMX_W0(i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @rvu_write64(%struct.rvu* %67, i32 %68, i32 %71, i32 %72)
  %74 = load %struct.mcam_entry*, %struct.mcam_entry** %13, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @npc_get_keyword(%struct.mcam_entry* %74, i32 %76, i32* %19, i32* %20)
  %78 = load %struct.rvu*, %struct.rvu** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @NPC_AF_MCAMEX_BANKX_CAMX_W1(i32 %80, i32 %81, i32 1)
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @rvu_write64(%struct.rvu* %78, i32 %79, i32 %82, i32 %83)
  %85 = load %struct.rvu*, %struct.rvu** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @NPC_AF_MCAMEX_BANKX_CAMX_W1(i32 %87, i32 %88, i32 0)
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @rvu_write64(%struct.rvu* %85, i32 %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %40
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %16, align 4
  br label %32

97:                                               ; preds = %32
  %98 = load %struct.rvu*, %struct.rvu** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32 %100, i32 %101)
  %103 = load %struct.mcam_entry*, %struct.mcam_entry** %13, align 8
  %104 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rvu_write64(%struct.rvu* %98, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.rvu*, %struct.rvu** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @NPC_AF_MCAMEX_BANKX_TAG_ACT(i32 %109, i32 %110)
  %112 = load %struct.mcam_entry*, %struct.mcam_entry** %13, align 8
  %113 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @rvu_write64(%struct.rvu* %107, i32 %108, i32 %111, i32 %114)
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %97
  %119 = load %struct.rvu*, %struct.rvu** %8, align 8
  %120 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @npc_enable_mcam_entry(%struct.rvu* %119, %struct.npc_mcam* %120, i32 %121, i32 %122, i32 1)
  br label %130

124:                                              ; preds = %97
  %125 = load %struct.rvu*, %struct.rvu** %8, align 8
  %126 = load %struct.npc_mcam*, %struct.npc_mcam** %9, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @npc_enable_mcam_entry(%struct.rvu* %125, %struct.npc_mcam* %126, i32 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %124, %118
  ret void
}

declare dso_local i32 @npc_get_bank(%struct.npc_mcam*, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_CAMX_INTF(i32, i32, i32) #1

declare dso_local i32 @npc_get_keyword(%struct.mcam_entry*, i32, i32*, i32*) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_CAMX_W0(i32, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_CAMX_W1(i32, i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_ACTION(i32, i32) #1

declare dso_local i32 @NPC_AF_MCAMEX_BANKX_TAG_ACT(i32, i32) #1

declare dso_local i32 @npc_enable_mcam_entry(%struct.rvu*, %struct.npc_mcam*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
