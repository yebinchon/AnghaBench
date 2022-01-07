; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clear_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clear_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.device = type { i32 }

@next_to_use = common dso_local global i32 0, align 4
@DESC_TYPE_SKB = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, i32)* @hns3_clear_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_clear_desc(%struct.hns3_enet_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.hns3_enet_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %8 = call %struct.device* @ring_to_dev(%struct.hns3_enet_ring* %7)
  store %struct.device* %8, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %118, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %12 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %121

15:                                               ; preds = %9
  %16 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %17 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %121

22:                                               ; preds = %15
  %23 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %24 = load i32, i32* @next_to_use, align 4
  %25 = call i32 @ring_ptr_move_bw(%struct.hns3_enet_ring* %23, i32 %24)
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %27 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DESC_TYPE_SKB, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %22
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %41 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %44 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %51 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %54 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @dma_unmap_single(%struct.device* %39, i32 %49, i32 %59, i32 %60)
  br label %99

62:                                               ; preds = %22
  %63 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %64 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %67 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %77 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %80 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %87 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %90 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DMA_TO_DEVICE, align 4
  %97 = call i32 @dma_unmap_page(%struct.device* %75, i32 %85, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %74, %62
  br label %99

99:                                               ; preds = %98, %38
  %100 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %101 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %104 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %110 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %113 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %99
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %9

121:                                              ; preds = %21, %9
  ret void
}

declare dso_local %struct.device* @ring_to_dev(%struct.hns3_enet_ring*) #1

declare dso_local i32 @ring_ptr_move_bw(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
