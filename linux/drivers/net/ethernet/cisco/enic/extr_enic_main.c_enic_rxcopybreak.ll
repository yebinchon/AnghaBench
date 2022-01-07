; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rxcopybreak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rxcopybreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vnic_rq_buf = type { i32 }
%struct.enic = type { i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff**, %struct.vnic_rq_buf*, i64)* @enic_rxcopybreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_rxcopybreak(%struct.net_device* %0, %struct.sk_buff** %1, %struct.vnic_rq_buf* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.vnic_rq_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.enic*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %7, align 8
  store %struct.vnic_rq_buf* %2, %struct.vnic_rq_buf** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.enic* @netdev_priv(%struct.net_device* %12)
  store %struct.enic* %13, %struct.enic** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.enic*, %struct.enic** %10, align 8
  %16 = getelementptr inbounds %struct.enic, %struct.enic* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %21, i64 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %11, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %48

27:                                               ; preds = %20
  %28 = load %struct.enic*, %struct.enic** %10, align 8
  %29 = getelementptr inbounds %struct.enic, %struct.enic* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %32 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @pci_dma_sync_single_for_cpu(i32 %30, i32 %33, i64 %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @memcpy(i32 %39, i32 %43, i64 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %47, align 8
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %27, %26, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
