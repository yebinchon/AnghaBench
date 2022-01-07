; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_complete_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_complete_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@TDES0_OWN_ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc9420_complete_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_complete_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc9420_pdata* %8, %struct.smsc9420_pdata** %3, align 8
  br label %9

9:                                                ; preds = %44, %1
  %10 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %11 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %135

17:                                               ; preds = %9
  %18 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = call i32 (...) @rmb()
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %23 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @TDES0_OWN_, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %17
  br label %135

44:                                               ; preds = %17
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @smsc9420_tx_update_stats(%struct.net_device* %45, i32 %46, i32 %47)
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %50 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %62 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %74 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %77 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %85 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %95 = call i32 @pci_unmap_single(i32 %75, i64 %83, i32 %93, i32 %94)
  %96 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %97 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %104 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %110)
  %112 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %113 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %118, align 8
  %119 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %120 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = call i32 (...) @wmb()
  %127 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %128 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* @TX_RING_SIZE, align 4
  %132 = srem i32 %130, %131
  %133 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %134 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %9

135:                                              ; preds = %43, %9
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smsc9420_tx_update_stats(%struct.net_device*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
