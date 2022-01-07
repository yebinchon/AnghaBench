; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_set_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_set_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5e_ipsec_metadata = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.xfrm_offload = type { i32 }
%struct.ip_esp_hdr = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"   Offloading GSO packet outer L3 %u; L4 %u; Inner L3 %u; L4 %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"   Offloading GSO packet of len %u; mss %u; TCP sp %u dp %u seq 0x%x ESP seq 0x%x\0A\00", align 1
@MLX5E_IPSEC_TX_SYNDROME_OFFLOAD_WITH_LSO_TCP = common dso_local global i32 0, align 4
@MLX5E_IPSEC_TX_SYNDROME_OFFLOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"   TX metadata syndrome %u proto %u mss_inv %04x seq %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mlx5e_ipsec_metadata*, %struct.xfrm_offload*)* @mlx5e_ipsec_set_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_ipsec_set_metadata(%struct.sk_buff* %0, %struct.mlx5e_ipsec_metadata* %1, %struct.xfrm_offload* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mlx5e_ipsec_metadata*, align 8
  %6 = alloca %struct.xfrm_offload*, align 8
  %7 = alloca %struct.ip_esp_hdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.mlx5e_ipsec_metadata* %1, %struct.mlx5e_ipsec_metadata** %5, align 8
  store %struct.xfrm_offload* %2, %struct.xfrm_offload** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @skb_is_gso(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %13)
  store %struct.ip_esp_hdr* %14, %struct.ip_esp_hdr** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.tcphdr* @inner_tcp_hdr(%struct.sk_buff* %15)
  store %struct.tcphdr* %16, %struct.tcphdr** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @netdev_dbg(i32 %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %44 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %52 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohl(i32 %53)
  %55 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @netdev_dbg(i32 %35, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58)
  %60 = load i32, i32* @MLX5E_IPSEC_TX_SYNDROME_OFFLOAD_WITH_LSO_TCP, align 4
  %61 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @mlx5e_ipsec_mss_inv(%struct.sk_buff* %63)
  %65 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %70 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = and i32 %72, 65535
  %74 = call i32 @htons(i32 %73)
  %75 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %83

79:                                               ; preds = %3
  %80 = load i32, i32* @MLX5E_IPSEC_TX_SYNDROME_OFFLOAD, align 4
  %81 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %12
  %84 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %85 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ntohs(i32 %106)
  %108 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %5, align 8
  %109 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ntohs(i32 %112)
  %114 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @netdev_dbg(i32 %93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %101, i32 %107, i32 %113)
  ret void
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @inner_tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mlx5e_ipsec_mss_inv(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
