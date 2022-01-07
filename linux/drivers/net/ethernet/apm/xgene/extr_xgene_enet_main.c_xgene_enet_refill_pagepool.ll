; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_refill_pagepool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_refill_pagepool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, i32, %struct.page**, %struct.xgene_enet_raw_desc16*, %struct.net_device* }
%struct.page = type { i32 }
%struct.xgene_enet_raw_desc16 = type { i32 }
%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_desc_ring*, i32)* }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DATAADDR = common dso_local global i32 0, align 4
@BUFDATALEN = common dso_local global i32 0, align 4
@COHERENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_desc_ring*, i32)* @xgene_enet_refill_pagepool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_refill_pagepool(%struct.xgene_enet_desc_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgene_enet_raw_desc16*, align 8
  %7 = alloca %struct.xgene_enet_pdata*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %17 = icmp ne %struct.xgene_enet_desc_ring* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

23:                                               ; preds = %2
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %24, i32 0, i32 4
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %27)
  store %struct.xgene_enet_pdata* %28, %struct.xgene_enet_pdata** %7, align 8
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = call %struct.device* @ndev_to_dev(%struct.net_device* %29)
  store %struct.device* %30, %struct.device** %10, align 8
  %31 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %32 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  %35 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %102, %23
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %38
  %43 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %44 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %43, i32 0, i32 3
  %45 = load %struct.xgene_enet_raw_desc16*, %struct.xgene_enet_raw_desc16** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.xgene_enet_raw_desc16, %struct.xgene_enet_raw_desc16* %45, i64 %47
  store %struct.xgene_enet_raw_desc16* %48, %struct.xgene_enet_raw_desc16** %6, align 8
  %49 = call %struct.page* (...) @dev_alloc_page()
  store %struct.page* %49, %struct.page** %11, align 8
  %50 = load %struct.page*, %struct.page** %11, align 8
  %51 = icmp ne %struct.page* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %117

59:                                               ; preds = %42
  %60 = load %struct.device*, %struct.device** %10, align 8
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_map_page(%struct.device* %60, %struct.page* %61, i32 0, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dma_mapping_error(%struct.device* %65, i32 %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.page*, %struct.page** %11, align 8
  %72 = call i32 @put_page(%struct.page* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %117

75:                                               ; preds = %59
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = call i32 @xgene_enet_set_data_len(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* @DATAADDR, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @SET_VAL(i32 %78, i32 %79)
  %81 = load i32, i32* @BUFDATALEN, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @SET_VAL(i32 %81, i32 %82)
  %84 = or i32 %80, %83
  %85 = load i32, i32* @COHERENT, align 4
  %86 = call i32 @SET_BIT(i32 %85)
  %87 = or i32 %84, %86
  %88 = call i32 @cpu_to_le64(i32 %87)
  %89 = load %struct.xgene_enet_raw_desc16*, %struct.xgene_enet_raw_desc16** %6, align 8
  %90 = getelementptr inbounds %struct.xgene_enet_raw_desc16, %struct.xgene_enet_raw_desc16* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.page*, %struct.page** %11, align 8
  %92 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %93 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %92, i32 0, i32 2
  %94 = load %struct.page**, %struct.page*** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.page*, %struct.page** %94, i64 %96
  store %struct.page* %91, %struct.page** %97, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %75
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %38

105:                                              ; preds = %38
  %106 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %7, align 8
  %107 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.xgene_enet_desc_ring*, i32)*, i32 (%struct.xgene_enet_desc_ring*, i32)** %109, align 8
  %111 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 %110(%struct.xgene_enet_desc_ring* %111, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %116 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %105, %70, %56, %22
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @ndev_to_dev(%struct.net_device*) #1

declare dso_local %struct.page* @dev_alloc_page(...) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @xgene_enet_set_data_len(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @SET_VAL(i32, i32) #1

declare dso_local i32 @SET_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
