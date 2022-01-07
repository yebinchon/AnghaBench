; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_gro_and_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_gro_and_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.TYPE_4__ = type { i8* }

@HNS3_RXD_GRO_SIZE_M = common dso_local global i32 0, align 4
@HNS3_RXD_GRO_SIZE_S = common dso_local global i32 0, align 4
@HNS3_RXD_GRO_COUNT_M = common dso_local global i32 0, align 4
@HNS3_RXD_GRO_COUNT_S = common dso_local global i32 0, align 4
@HNS3_RXD_L3ID_M = common dso_local global i32 0, align 4
@HNS3_RXD_L3ID_S = common dso_local global i32 0, align 4
@HNS3_L3_TYPE_IPV4 = common dso_local global i64 0, align 8
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@HNS3_L3_TYPE_IPV6 = common dso_local global i64 0, align 8
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.sk_buff*, i64, i64, i64)* @hns3_set_gro_and_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_set_gro_and_checksum(%struct.hns3_enet_ring* %0, %struct.sk_buff* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns3_enet_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i32, i32* @HNS3_RXD_GRO_SIZE_M, align 4
  %15 = load i32, i32* @HNS3_RXD_GRO_SIZE_S, align 4
  %16 = call i8* @hnae3_get_field(i64 %13, i32 %14, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %5
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @hns3_rx_checksum(%struct.hns3_enet_ring* %26, %struct.sk_buff* %27, i64 %28, i64 %29, i64 %30)
  store i32 0, i32* %6, align 4
  br label %70

32:                                               ; preds = %5
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @HNS3_RXD_GRO_COUNT_M, align 4
  %35 = load i32, i32* @HNS3_RXD_GRO_COUNT_S, align 4
  %36 = call i8* @hnae3_get_field(i64 %33, i32 %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* @HNS3_RXD_L3ID_M, align 4
  %42 = load i32, i32* @HNS3_RXD_L3ID_S, align 4
  %43 = call i8* @hnae3_get_field(i64 %40, i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @HNS3_L3_TYPE_IPV4, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  br label %66

53:                                               ; preds = %32
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @HNS3_L3_TYPE_IPV6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @hns3_gro_complete(%struct.sk_buff* %67, i64 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %62, %25
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i8* @hnae3_get_field(i64, i32, i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @hns3_rx_checksum(%struct.hns3_enet_ring*, %struct.sk_buff*, i64, i64, i64) #1

declare dso_local %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @hns3_gro_complete(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
