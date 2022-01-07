; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_nix_freemem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_nix_freemem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32 }
%struct.nix_txsch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nix_mcast = type { i32, i32, i32 }
%struct.nix_hw = type { %struct.nix_mcast, %struct.nix_txsch* }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@BLKADDR_NIX0 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_nix_freemem(%struct.rvu* %0) #0 {
  %2 = alloca %struct.rvu*, align 8
  %3 = alloca %struct.rvu_hwinfo*, align 8
  %4 = alloca %struct.rvu_block*, align 8
  %5 = alloca %struct.nix_txsch*, align 8
  %6 = alloca %struct.nix_mcast*, align 8
  %7 = alloca %struct.nix_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %2, align 8
  %10 = load %struct.rvu*, %struct.rvu** %2, align 8
  %11 = getelementptr inbounds %struct.rvu, %struct.rvu* %10, i32 0, i32 1
  %12 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %11, align 8
  store %struct.rvu_hwinfo* %12, %struct.rvu_hwinfo** %3, align 8
  %13 = load %struct.rvu*, %struct.rvu** %2, align 8
  %14 = load i32, i32* @BLKTYPE_NIX, align 4
  %15 = call i32 @rvu_get_blkaddr(%struct.rvu* %13, i32 %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %83

19:                                               ; preds = %1
  %20 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %3, align 8
  %21 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %20, i32 0, i32 0
  %22 = load %struct.rvu_block*, %struct.rvu_block** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %22, i64 %24
  store %struct.rvu_block* %25, %struct.rvu_block** %4, align 8
  %26 = load %struct.rvu*, %struct.rvu** %2, align 8
  %27 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %28 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rvu_aq_free(%struct.rvu* %26, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BLKADDR_NIX0, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %19
  %35 = load %struct.rvu*, %struct.rvu** %2, align 8
  %36 = getelementptr inbounds %struct.rvu, %struct.rvu* %35, i32 0, i32 1
  %37 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo* %37, i32 %38)
  store %struct.nix_hw* %39, %struct.nix_hw** %7, align 8
  %40 = load %struct.nix_hw*, %struct.nix_hw** %7, align 8
  %41 = icmp ne %struct.nix_hw* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %83

43:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.nix_hw*, %struct.nix_hw** %7, align 8
  %50 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %49, i32 0, i32 1
  %51 = load %struct.nix_txsch*, %struct.nix_txsch** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %51, i64 %53
  store %struct.nix_txsch* %54, %struct.nix_txsch** %5, align 8
  %55 = load %struct.nix_txsch*, %struct.nix_txsch** %5, align 8
  %56 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.nix_hw*, %struct.nix_hw** %7, align 8
  %65 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %64, i32 0, i32 0
  store %struct.nix_mcast* %65, %struct.nix_mcast** %6, align 8
  %66 = load %struct.rvu*, %struct.rvu** %2, align 8
  %67 = getelementptr inbounds %struct.rvu, %struct.rvu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nix_mcast*, %struct.nix_mcast** %6, align 8
  %70 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @qmem_free(i32 %68, i32 %71)
  %73 = load %struct.rvu*, %struct.rvu** %2, align 8
  %74 = getelementptr inbounds %struct.rvu, %struct.rvu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nix_mcast*, %struct.nix_mcast** %6, align 8
  %77 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qmem_free(i32 %75, i32 %78)
  %80 = load %struct.nix_mcast*, %struct.nix_mcast** %6, align 8
  %81 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %80, i32 0, i32 0
  %82 = call i32 @mutex_destroy(i32* %81)
  br label %83

83:                                               ; preds = %18, %42, %63, %19
  ret void
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_aq_free(%struct.rvu*, i32) #1

declare dso_local %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @qmem_free(i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
