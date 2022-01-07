; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@HNS3_RXD_L3L4P_B = common dso_local global i32 0, align 4
@HNS3_RXD_L3E_B = common dso_local global i32 0, align 4
@HNS3_RXD_L4E_B = common dso_local global i32 0, align 4
@HNS3_RXD_OL3E_B = common dso_local global i32 0, align 4
@HNS3_RXD_OL4E_B = common dso_local global i32 0, align 4
@HNS3_RXD_OL4ID_M = common dso_local global i32 0, align 4
@HNS3_RXD_OL4ID_S = common dso_local global i32 0, align 4
@HNS3_RXD_L3ID_M = common dso_local global i32 0, align 4
@HNS3_RXD_L3ID_S = common dso_local global i32 0, align 4
@HNS3_RXD_L4ID_M = common dso_local global i32 0, align 4
@HNS3_RXD_L4ID_S = common dso_local global i32 0, align 4
@HNS3_L3_TYPE_IPV4 = common dso_local global i32 0, align 4
@HNS3_L3_TYPE_IPV6 = common dso_local global i32 0, align 4
@HNS3_L4_TYPE_UDP = common dso_local global i32 0, align 4
@HNS3_L4_TYPE_TCP = common dso_local global i32 0, align 4
@HNS3_L4_TYPE_SCTP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, %struct.sk_buff*, i32, i32, i32)* @hns3_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_rx_checksum(%struct.hns3_enet_ring* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hns3_enet_ring*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %11, align 8
  %23 = load i32, i32* @CHECKSUM_NONE, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %26)
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %113

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @HNS3_RXD_L3L4P_B, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %113

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @HNS3_RXD_L3E_B, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* @HNS3_RXD_L4E_B, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* @HNS3_RXD_OL3E_B, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @HNS3_RXD_OL4E_B, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = or i32 %51, %53
  %55 = and i32 %43, %54
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %42
  %59 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %60 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %59, i32 0, i32 0
  %61 = call i32 @u64_stats_update_begin(i32* %60)
  %62 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %63 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %68 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %67, i32 0, i32 0
  %69 = call i32 @u64_stats_update_end(i32* %68)
  br label %113

70:                                               ; preds = %42
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @HNS3_RXD_OL4ID_M, align 4
  %73 = load i32, i32* @HNS3_RXD_OL4ID_S, align 4
  %74 = call i32 @hnae3_get_field(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  switch i32 %75, label %112 [
    i32 130, label %76
    i32 128, label %76
    i32 129, label %79
  ]

76:                                               ; preds = %70, %70
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @HNS3_RXD_L3ID_M, align 4
  %82 = load i32, i32* @HNS3_RXD_L3ID_S, align 4
  %83 = call i32 @hnae3_get_field(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @HNS3_RXD_L4ID_M, align 4
  %86 = load i32, i32* @HNS3_RXD_L4ID_S, align 4
  %87 = call i32 @hnae3_get_field(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @HNS3_L3_TYPE_IPV4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @HNS3_L3_TYPE_IPV6, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91, %79
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @HNS3_L4_TYPE_UDP, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @HNS3_L4_TYPE_TCP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @HNS3_L4_TYPE_SCTP, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %99, %95
  %108 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103, %91
  br label %113

112:                                              ; preds = %70
  br label %113

113:                                              ; preds = %34, %41, %58, %112, %111
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
