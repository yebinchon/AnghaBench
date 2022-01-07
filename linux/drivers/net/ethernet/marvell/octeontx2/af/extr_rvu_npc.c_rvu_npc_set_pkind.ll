; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_set_pkind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_set_pkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { i32 }

@BLKTYPE_NPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_npc_set_pkind(%struct.rvu* %0, i32 %1, %struct.rvu_pfvf* %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvu_pfvf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rvu_pfvf* %2, %struct.rvu_pfvf** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rvu*, %struct.rvu** %4, align 8
  %10 = load i32, i32* @BLKTYPE_NPC, align 4
  %11 = call i32 @rvu_get_blkaddr(%struct.rvu* %9, i32 %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = or i64 %17, 4611686018427387904
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rvu*, %struct.rvu** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @NPC_AF_PKINDX_CPI_DEFX(i32 %22, i32 0)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @rvu_write64(%struct.rvu* %20, i32 %21, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NPC_AF_PKINDX_CPI_DEFX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
