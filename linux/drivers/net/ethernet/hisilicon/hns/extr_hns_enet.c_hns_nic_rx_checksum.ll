; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@HNS_RXD_L3ID_M = common dso_local global i32 0, align 4
@HNS_RXD_L3ID_S = common dso_local global i32 0, align 4
@HNS_RXD_L4ID_M = common dso_local global i32 0, align 4
@HNS_RXD_L4ID_S = common dso_local global i32 0, align 4
@HNS_RX_FLAG_L3ID_IPV4 = common dso_local global i64 0, align 8
@HNS_RX_FLAG_L3ID_IPV6 = common dso_local global i64 0, align 8
@HNS_RXD_L3E_B = common dso_local global i32 0, align 4
@HNS_RXD_FRAG_B = common dso_local global i32 0, align 4
@HNS_RX_FLAG_L4ID_TCP = common dso_local global i64 0, align 8
@HNS_RX_FLAG_L4ID_UDP = common dso_local global i64 0, align 8
@HNS_RX_FLAG_L4ID_SCTP = common dso_local global i64 0, align 8
@HNS_RXD_L4E_B = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_ring_data*, %struct.sk_buff*, i64)* @hns_nic_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_rx_checksum(%struct.hns_nic_ring_data* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.hns_nic_ring_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %4, align 8
  %11 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %80

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @HNS_RXD_L3ID_M, align 4
  %28 = load i32, i32* @HNS_RXD_L3ID_S, align 4
  %29 = call i64 @hnae_get_field(i64 %26, i32 %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @HNS_RXD_L4ID_M, align 4
  %32 = load i32, i32* @HNS_RXD_L4ID_S, align 4
  %33 = call i64 @hnae_get_field(i64 %30, i32 %31, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @HNS_RX_FLAG_L3ID_IPV4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @HNS_RX_FLAG_L3ID_IPV6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %80

42:                                               ; preds = %37, %25
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @HNS_RXD_L3E_B, align 4
  %45 = call i32 @hnae_get_bit(i64 %43, i32 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %80

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @HNS_RXD_FRAG_B, align 4
  %52 = call i32 @hnae_get_bit(i64 %50, i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %80

56:                                               ; preds = %49
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @HNS_RX_FLAG_L4ID_TCP, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @HNS_RX_FLAG_L4ID_UDP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @HNS_RX_FLAG_L4ID_SCTP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %80

69:                                               ; preds = %64, %60, %56
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @HNS_RXD_L4E_B, align 4
  %72 = call i32 @hnae_get_bit(i64 %70, i32 %71)
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %75, %68, %55, %48, %41, %24
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hnae_get_field(i64, i32, i32) #1

declare dso_local i32 @hnae_get_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
