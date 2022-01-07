; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_delete_bufpool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_delete_bufpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, %struct.xgene_enet_raw_desc16*, i64*, i32 }
%struct.xgene_enet_raw_desc16 = type { i32 }
%struct.device = type { i32 }

@DATAADDR = common dso_local global i32 0, align 4
@XGENE_ENET_MAX_MTU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*)* @xgene_enet_delete_bufpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_delete_bufpool(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.xgene_enet_raw_desc16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %2, align 8
  %7 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.device* @ndev_to_dev(i32 %9)
  store %struct.device* %10, %struct.device** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %17
  %27 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_kfree_skb_any(i64 %33)
  %35 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %35, i32 0, i32 1
  %37 = load %struct.xgene_enet_raw_desc16*, %struct.xgene_enet_raw_desc16** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xgene_enet_raw_desc16, %struct.xgene_enet_raw_desc16* %37, i64 %39
  store %struct.xgene_enet_raw_desc16* %40, %struct.xgene_enet_raw_desc16** %4, align 8
  %41 = load i32, i32* @DATAADDR, align 4
  %42 = load %struct.xgene_enet_raw_desc16*, %struct.xgene_enet_raw_desc16** %4, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_raw_desc16, %struct.xgene_enet_raw_desc16* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = call i32 @GET_VAL(i32 %41, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @XGENE_ENET_MAX_MTU, align 4
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_unmap_single(%struct.device* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %26, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %11

56:                                               ; preds = %11
  ret void
}

declare dso_local %struct.device* @ndev_to_dev(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @GET_VAL(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
