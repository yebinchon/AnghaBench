; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_purge_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_purge_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i64*, %struct.TYPE_4__**, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pcnet32_purge_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_purge_tx_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %5)
  store %struct.pcnet32_private* %6, %struct.pcnet32_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %87, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %10 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %90

13:                                               ; preds = %7
  %14 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %15 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = call i32 (...) @wmb()
  %22 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %23 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %74

30:                                               ; preds = %13
  %31 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %32 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %35 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pci_dma_mapping_error(i32 %33, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %30
  %44 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %45 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %48 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %55 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %64 = call i32 @pci_unmap_single(i32 %46, i64 %53, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %43, %30
  %66 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %67 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %72)
  br label %74

74:                                               ; preds = %65, %13
  %75 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %76 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %82 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %7

90:                                               ; preds = %7
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
