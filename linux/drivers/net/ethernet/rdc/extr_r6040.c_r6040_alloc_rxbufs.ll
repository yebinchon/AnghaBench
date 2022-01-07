; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_alloc_rxbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_alloc_rxbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r6040_private = type { i32, %struct.r6040_descriptor*, i32, %struct.r6040_descriptor*, %struct.r6040_descriptor* }
%struct.r6040_descriptor = type { %struct.r6040_descriptor*, i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@RX_DCNT = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DSC_OWNER_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @r6040_alloc_rxbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r6040_alloc_rxbufs(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r6040_private*, align 8
  %5 = alloca %struct.r6040_descriptor*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %8)
  store %struct.r6040_private* %9, %struct.r6040_private** %4, align 8
  %10 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %11 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %10, i32 0, i32 1
  %12 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %11, align 8
  %13 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %14 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %13, i32 0, i32 3
  store %struct.r6040_descriptor* %12, %struct.r6040_descriptor** %14, align 8
  %15 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %16 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %15, i32 0, i32 4
  store %struct.r6040_descriptor* %12, %struct.r6040_descriptor** %16, align 8
  %17 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %18 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %17, i32 0, i32 1
  %19 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %18, align 8
  %20 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %21 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RX_DCNT, align 4
  %24 = call i32 @r6040_init_ring_desc(%struct.r6040_descriptor* %19, i32 %22, i32 %23)
  %25 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %26 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %25, i32 0, i32 1
  %27 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %26, align 8
  store %struct.r6040_descriptor* %27, %struct.r6040_descriptor** %5, align 8
  br label %28

28:                                               ; preds = %61, %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i32, i32* @MAX_BUF_SIZE, align 4
  %31 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %68

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %5, align 8
  %40 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %39, i32 0, i32 2
  store %struct.sk_buff* %38, %struct.sk_buff** %40, align 8
  %41 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %42 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %44, i32 0, i32 2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX_BUF_SIZE, align 4
  %50 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %51 = call i32 @pci_map_single(i32 %43, i32 %48, i32 %49, i32 %50)
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %5, align 8
  %54 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @DSC_OWNER_MAC, align 4
  %56 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %5, align 8
  %57 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %5, align 8
  %59 = getelementptr inbounds %struct.r6040_descriptor, %struct.r6040_descriptor* %58, i32 0, i32 0
  %60 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %59, align 8
  store %struct.r6040_descriptor* %60, %struct.r6040_descriptor** %5, align 8
  br label %61

61:                                               ; preds = %37
  %62 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %5, align 8
  %63 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %64 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %63, i32 0, i32 1
  %65 = load %struct.r6040_descriptor*, %struct.r6040_descriptor** %64, align 8
  %66 = icmp ne %struct.r6040_descriptor* %62, %65
  br i1 %66, label %28, label %67

67:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %72

68:                                               ; preds = %34
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @r6040_free_rxbufs(%struct.net_device* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @r6040_init_ring_desc(%struct.r6040_descriptor*, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @r6040_free_rxbufs(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
