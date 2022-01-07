; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64, %struct.sk_buff* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tulip_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_free_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %8)
  store %struct.tulip_private* %9, %struct.tulip_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %80, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @RX_RING_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %16 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  %23 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %24 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %32 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %37, align 8
  %38 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %39 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %46 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %53 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = call i32 @cpu_to_le32(i32 -1159790384)
  %60 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %61 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %59, i32* %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %14
  %70 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %71 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* @PKT_BUF_SZ, align 4
  %75 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %76 = call i32 @pci_unmap_single(i32 %72, i64 %73, i32 %74, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @dev_kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %69, %14
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %10

83:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %133, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @TX_RING_SIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %84
  %89 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %90 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  store %struct.sk_buff* %96, %struct.sk_buff** %7, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %88
  %100 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %101 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %104 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %115 = call i32 @pci_unmap_single(i32 %102, i64 %110, i32 %113, i32 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = call i32 @dev_kfree_skb(%struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %99, %88
  %119 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %120 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %125, align 8
  %126 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %127 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %84

136:                                              ; preds = %84
  ret void
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
