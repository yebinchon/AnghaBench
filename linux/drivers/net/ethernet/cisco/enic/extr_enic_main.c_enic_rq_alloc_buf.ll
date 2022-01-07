; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rq_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rq_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { %struct.vnic_rq_buf*, i32 }
%struct.vnic_rq_buf = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.enic = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_rq*)* @enic_rq_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_rq_alloc_buf(%struct.vnic_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca %struct.enic*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnic_rq_buf*, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  %11 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %12 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.enic* @vnic_dev_priv(i32 %13)
  store %struct.enic* %14, %struct.enic** %4, align 8
  %15 = load %struct.enic*, %struct.enic** %4, align 8
  %16 = getelementptr inbounds %struct.enic, %struct.enic* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %24 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %23, i32 0, i32 0
  %25 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %24, align 8
  store %struct.vnic_rq_buf* %25, %struct.vnic_rq_buf** %10, align 8
  %26 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %10, align 8
  %27 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %26, i32 0, i32 2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %32 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %10, align 8
  %33 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %32, i32 0, i32 2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %10, align 8
  %37 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %10, align 8
  %40 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @enic_queue_rq_desc(%struct.vnic_rq* %31, %struct.sk_buff* %34, i32 %35, i32 %38, i32 %41)
  store i32 0, i32* %2, align 4
  br label %79

43:                                               ; preds = %1
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %79

52:                                               ; preds = %43
  %53 = load %struct.enic*, %struct.enic** %4, align 8
  %54 = getelementptr inbounds %struct.enic, %struct.enic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %61 = call i32 @pci_map_single(i32 %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.enic*, %struct.enic** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @enic_dma_map_check(%struct.enic* %62, i32 %63)
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @dev_kfree_skb(%struct.sk_buff* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %79

72:                                               ; preds = %52
  %73 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @enic_queue_rq_desc(%struct.vnic_rq* %73, %struct.sk_buff* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %67, %49, %30
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.enic* @vnic_dev_priv(i32) #1

declare dso_local i32 @enic_queue_rq_desc(%struct.vnic_rq*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enic_dma_map_check(%struct.enic*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
