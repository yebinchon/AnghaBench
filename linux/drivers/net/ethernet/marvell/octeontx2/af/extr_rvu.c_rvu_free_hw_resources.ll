; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_free_hw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_free_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32, i32, %struct.rvu_pfvf*, %struct.rvu_pfvf*, %struct.rvu_hwinfo* }
%struct.rvu_pfvf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rvu_hwinfo = type { i32, i32, %struct.rvu_block* }
%struct.rvu_block = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BLK_COUNT = common dso_local global i32 0, align 4
@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_PRIV_CONST = common dso_local global i32 0, align 4
@PCI_MSIX_ENTRY_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*)* @rvu_free_hw_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_free_hw_resources(%struct.rvu* %0) #0 {
  %2 = alloca %struct.rvu*, align 8
  %3 = alloca %struct.rvu_hwinfo*, align 8
  %4 = alloca %struct.rvu_block*, align 8
  %5 = alloca %struct.rvu_pfvf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %2, align 8
  %9 = load %struct.rvu*, %struct.rvu** %2, align 8
  %10 = getelementptr inbounds %struct.rvu, %struct.rvu* %9, i32 0, i32 5
  %11 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  store %struct.rvu_hwinfo* %11, %struct.rvu_hwinfo** %3, align 8
  %12 = load %struct.rvu*, %struct.rvu** %2, align 8
  %13 = call i32 @rvu_npa_freemem(%struct.rvu* %12)
  %14 = load %struct.rvu*, %struct.rvu** %2, align 8
  %15 = call i32 @rvu_npc_freemem(%struct.rvu* %14)
  %16 = load %struct.rvu*, %struct.rvu** %2, align 8
  %17 = call i32 @rvu_nix_freemem(%struct.rvu* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BLK_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %3, align 8
  %24 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %23, i32 0, i32 2
  %25 = load %struct.rvu_block*, %struct.rvu_block** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %25, i64 %27
  store %struct.rvu_block* %28, %struct.rvu_block** %4, align 8
  %29 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %30 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %3, align 8
  %41 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.rvu*, %struct.rvu** %2, align 8
  %46 = getelementptr inbounds %struct.rvu, %struct.rvu* %45, i32 0, i32 4
  %47 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %47, i64 %49
  store %struct.rvu_pfvf* %50, %struct.rvu_pfvf** %5, align 8
  %51 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %5, align 8
  %52 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kfree(i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %38

59:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %3, align 8
  %63 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.rvu*, %struct.rvu** %2, align 8
  %68 = getelementptr inbounds %struct.rvu, %struct.rvu* %67, i32 0, i32 3
  %69 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %69, i64 %71
  store %struct.rvu_pfvf* %72, %struct.rvu_pfvf** %5, align 8
  %73 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %5, align 8
  %74 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kfree(i32 %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.rvu*, %struct.rvu** %2, align 8
  %83 = getelementptr inbounds %struct.rvu, %struct.rvu* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %108

87:                                               ; preds = %81
  %88 = load %struct.rvu*, %struct.rvu** %2, align 8
  %89 = load i32, i32* @BLKADDR_RVUM, align 4
  %90 = load i32, i32* @RVU_PRIV_CONST, align 4
  %91 = call i32 @rvu_read64(%struct.rvu* %88, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 1048575
  store i32 %93, i32* %7, align 4
  %94 = load %struct.rvu*, %struct.rvu** %2, align 8
  %95 = getelementptr inbounds %struct.rvu, %struct.rvu* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rvu*, %struct.rvu** %2, align 8
  %98 = getelementptr inbounds %struct.rvu, %struct.rvu* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @PCI_MSIX_ENTRY_SIZE, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %104 = call i32 @dma_unmap_resource(i32 %96, i32 %99, i32 %102, i32 %103, i32 0)
  %105 = load %struct.rvu*, %struct.rvu** %2, align 8
  %106 = getelementptr inbounds %struct.rvu, %struct.rvu* %105, i32 0, i32 0
  %107 = call i32 @mutex_destroy(i32* %106)
  br label %108

108:                                              ; preds = %87, %86
  ret void
}

declare dso_local i32 @rvu_npa_freemem(%struct.rvu*) #1

declare dso_local i32 @rvu_npc_freemem(%struct.rvu*) #1

declare dso_local i32 @rvu_nix_freemem(%struct.rvu*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @dma_unmap_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
