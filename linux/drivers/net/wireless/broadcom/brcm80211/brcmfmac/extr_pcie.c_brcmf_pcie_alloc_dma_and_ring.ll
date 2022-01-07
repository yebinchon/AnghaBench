; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_alloc_dma_and_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_alloc_dma_and_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pcie_ringbuf = type { i32, %struct.brcmf_pciedev_info*, i32 }
%struct.brcmf_pciedev_info = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BRCMF_PCIE_SHARED_VERSION_7 = common dso_local global i64 0, align 8
@brcmf_ring_itemsize_pre_v7 = common dso_local global i64* null, align 8
@brcmf_ring_itemsize = common dso_local global i64* null, align 8
@brcmf_ring_max_item = common dso_local global i64* null, align 8
@BRCMF_RING_MEM_BASE_ADDR_OFFSET = common dso_local global i64 0, align 8
@BRCMF_RING_MAX_ITEM_OFFSET = common dso_local global i64 0, align 8
@BRCMF_RING_LEN_ITEMS_OFFSET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_ring_bell = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_update_rptr = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_update_wptr = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_write_rptr = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_write_wptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_pcie_ringbuf* (%struct.brcmf_pciedev_info*, i64, i64)* @brcmf_pcie_alloc_dma_and_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_pcie_ringbuf* @brcmf_pcie_alloc_dma_and_ring(%struct.brcmf_pciedev_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.brcmf_pcie_ringbuf*, align 8
  %5 = alloca %struct.brcmf_pciedev_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcmf_pcie_ringbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BRCMF_PCIE_SHARED_VERSION_7, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64*, i64** @brcmf_ring_itemsize_pre_v7, align 8
  store i64* %21, i64** %13, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i64*, i64** @brcmf_ring_itemsize, align 8
  store i64* %23, i64** %13, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i64*, i64** @brcmf_ring_max_item, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %28, %32
  store i64 %33, i64* %11, align 8
  %34 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @BRCMF_RING_MEM_BASE_ADDR_OFFSET, align 8
  %38 = add i64 %36, %37
  %39 = call i8* @brcmf_pcie_init_dmabuffer_for_device(%struct.brcmf_pciedev_info* %34, i64 %35, i64 %38, i32* %9)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  store %struct.brcmf_pcie_ringbuf* null, %struct.brcmf_pcie_ringbuf** %4, align 8
  br label %106

43:                                               ; preds = %24
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @BRCMF_RING_MAX_ITEM_OFFSET, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %12, align 8
  %47 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64*, i64** @brcmf_ring_max_item, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @brcmf_pcie_write_tcm16(%struct.brcmf_pciedev_info* %47, i64 %48, i64 %52)
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @BRCMF_RING_LEN_ITEMS_OFFSET, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %12, align 8
  %57 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @brcmf_pcie_write_tcm16(%struct.brcmf_pciedev_info* %57, i64 %58, i64 %62)
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.brcmf_pcie_ringbuf* @kzalloc(i32 24, i32 %64)
  store %struct.brcmf_pcie_ringbuf* %65, %struct.brcmf_pcie_ringbuf** %10, align 8
  %66 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  %67 = icmp ne %struct.brcmf_pcie_ringbuf* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %43
  %69 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %70 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %11, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dma_free_coherent(i32* %72, i64 %73, i8* %74, i32 %75)
  store %struct.brcmf_pcie_ringbuf* null, %struct.brcmf_pcie_ringbuf** %4, align 8
  br label %106

77:                                               ; preds = %43
  %78 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  %79 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %78, i32 0, i32 0
  %80 = load i64*, i64** @brcmf_ring_max_item, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %13, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @brcmf_commonring_config(i32* %79, i64 %83, i64 %87, i8* %88)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  %92 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %94 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  %95 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %94, i32 0, i32 1
  store %struct.brcmf_pciedev_info* %93, %struct.brcmf_pciedev_info** %95, align 8
  %96 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  %97 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %96, i32 0, i32 0
  %98 = load i32, i32* @brcmf_pcie_ring_mb_ring_bell, align 4
  %99 = load i32, i32* @brcmf_pcie_ring_mb_update_rptr, align 4
  %100 = load i32, i32* @brcmf_pcie_ring_mb_update_wptr, align 4
  %101 = load i32, i32* @brcmf_pcie_ring_mb_write_rptr, align 4
  %102 = load i32, i32* @brcmf_pcie_ring_mb_write_wptr, align 4
  %103 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  %104 = call i32 @brcmf_commonring_register_cb(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, %struct.brcmf_pcie_ringbuf* %103)
  %105 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %10, align 8
  store %struct.brcmf_pcie_ringbuf* %105, %struct.brcmf_pcie_ringbuf** %4, align 8
  br label %106

106:                                              ; preds = %77, %68, %42
  %107 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  ret %struct.brcmf_pcie_ringbuf* %107
}

declare dso_local i8* @brcmf_pcie_init_dmabuffer_for_device(%struct.brcmf_pciedev_info*, i64, i64, i32*) #1

declare dso_local i32 @brcmf_pcie_write_tcm16(%struct.brcmf_pciedev_info*, i64, i64) #1

declare dso_local %struct.brcmf_pcie_ringbuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @brcmf_commonring_config(i32*, i64, i64, i8*) #1

declare dso_local i32 @brcmf_commonring_register_cb(i32*, i32, i32, i32, i32, i32, %struct.brcmf_pcie_ringbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
