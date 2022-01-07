; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.r6040_private = type { %struct.r6040_descriptor*, i32, i32, i32 }
%struct.r6040_descriptor = type { i32, %struct.r6040_descriptor*, %struct.sk_buff*, i32, i64 }
%struct.sk_buff = type { i32, i32, i32 }

@DSC_OWNER_MAC = common dso_local global i32 0, align 4
@DSC_RX_ERR = common dso_local global i32 0, align 4
@DSC_RX_ERR_DRI = common dso_local global i32 0, align 4
@DSC_RX_ERR_BUF = common dso_local global i32 0, align 4
@DSC_RX_ERR_LONG = common dso_local global i32 0, align 4
@DSC_RX_ERR_RUNT = common dso_local global i32 0, align 4
@DSC_RX_ERR_CRC = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @r6040_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r6040_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r6040_private*, align 8
  %6 = alloca %struct.r6040_descriptor*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %11)
  store %struct.r6040_private* %12, %struct.r6040_private** %5, align 8
  %13 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %14 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %13, i32 0, i32 0
  %15 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %14, align 8
  store %struct.r6040_descriptor* %15, %struct.r6040_descriptor** %6, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %179, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %22 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DSC_OWNER_MAC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %16
  %29 = phi i1 [ false, %16 ], [ %27, %20 ]
  br i1 %29, label %30, label %188

30:                                               ; preds = %28
  %31 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %32 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DSC_RX_ERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DSC_RX_ERR_DRI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DSC_RX_ERR_BUF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @DSC_RX_ERR_LONG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DSC_RX_ERR_RUNT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @DSC_RX_ERR_CRC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %89 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %88, i32 0, i32 3
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %97 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %96, i32 0, i32 3
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %87, %82
  br label %179

100:                                              ; preds = %30
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = load i32, i32* @MAX_BUF_SIZE, align 4
  %103 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %8, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %179

112:                                              ; preds = %100
  %113 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %114 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %113, i32 0, i32 2
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %7, align 8
  %116 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %117 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %123 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, 4
  %126 = call i32 @skb_put(%struct.sk_buff* %121, i64 %125)
  %127 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %128 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %131 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @le32_to_cpu(i32 %132)
  %134 = load i32, i32* @MAX_BUF_SIZE, align 4
  %135 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %136 = call i32 @pci_unmap_single(i32 %129, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %139 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @eth_type_trans(%struct.sk_buff* %137, i32 %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call i32 @netif_receive_skb(%struct.sk_buff* %144)
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %152 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 4
  %155 = load %struct.net_device*, %struct.net_device** %3, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %154
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %164 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %163, i32 0, i32 2
  store %struct.sk_buff* %162, %struct.sk_buff** %164, align 8
  %165 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %166 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %169 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %168, i32 0, i32 2
  %170 = load %struct.sk_buff*, %struct.sk_buff** %169, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @MAX_BUF_SIZE, align 4
  %174 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %175 = call i32 @pci_map_single(i32 %167, i32 %172, i32 %173, i32 %174)
  %176 = call i32 @cpu_to_le32(i32 %175)
  %177 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %178 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %112, %106, %99
  %180 = load i32, i32* @DSC_OWNER_MAC, align 4
  %181 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %182 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %184 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %183, i32 0, i32 1
  %185 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %184, align 8
  store %struct.r6040_descriptor* %185, %struct.r6040_descriptor** %6, align 8
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %16

188:                                              ; preds = %28
  %189 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %6, align 8
  %190 = load %struct.r6040_private*, %struct.r6040_private** %5, align 8
  %191 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %190, i32 0, i32 0
  store %struct.r6040_descriptor* %189, %struct.r6040_descriptor** %191, align 8
  %192 = load i32, i32* %9, align 4
  ret i32 %192
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
