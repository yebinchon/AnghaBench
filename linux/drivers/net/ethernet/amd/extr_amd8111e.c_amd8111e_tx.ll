; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i64*, %struct.TYPE_6__**, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TX_RING_DR_MOD_MASK = common dso_local global i32 0, align 4
@OWN_BIT = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NUM_TX_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.amd8111e_priv* %7, %struct.amd8111e_priv** %3, align 8
  br label %8

8:                                                ; preds = %135, %1
  %9 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %136

16:                                               ; preds = %8
  %17 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %18 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TX_RING_DR_MOD_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @OWN_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %136

36:                                               ; preds = %16
  %37 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %38 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %45 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %94

52:                                               ; preds = %36
  %53 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %54 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %57 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %64 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %73 = call i32 @pci_unmap_single(i32 %55, i64 %62, i32 %71, i32 %72)
  %74 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %75 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = call i32 @dev_consume_skb_irq(%struct.TYPE_6__* %80)
  %82 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %83 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %82, i32 0, i32 5
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %86
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %89 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %88, i32 0, i32 4
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %52, %36
  %95 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %96 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %100 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %105 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %114 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = call i64 @netif_queue_stopped(%struct.net_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %94
  %122 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %123 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %126 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NUM_TX_BUFFERS, align 4
  %129 = sub nsw i32 %127, %128
  %130 = add nsw i32 %129, 2
  %131 = icmp sgt i32 %124, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = call i32 @netif_wake_queue(%struct.net_device* %133)
  br label %135

135:                                              ; preds = %132, %121, %94
  br label %8

136:                                              ; preds = %35, %8
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.TYPE_6__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
