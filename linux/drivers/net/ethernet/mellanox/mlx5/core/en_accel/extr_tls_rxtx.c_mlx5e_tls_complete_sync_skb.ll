; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_complete_sync_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_complete_sync_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tls_metadata = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.sk_buff = type { i32, i32, i32, %struct.mlx5e_tls_metadata*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iphdr = type { i8* }
%struct.tcphdr = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@SYNDROME_SYNC = common dso_local global %struct.mlx5e_tls_metadata zeroinitializer, align 8
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sk_buff*, i32, i32, i8*)* @mlx5e_tls_complete_sync_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tls_complete_sync_skb(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mlx5e_tls_metadata, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5e_tls_metadata*, align 8
  %12 = alloca %struct.mlx5e_tls_metadata, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.mlx5e_tls_metadata, %struct.mlx5e_tls_metadata* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* %4, i8** %19, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  %20 = bitcast %struct.mlx5e_tls_metadata* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.mlx5e_tls_metadata* @SYNDROME_SYNC to i8*), i64 8, i1 false)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 4
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @skb_reset_mac_header(%struct.sk_buff* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @skb_network_offset(%struct.sk_buff* %29)
  %31 = call i32 @skb_set_network_header(%struct.sk_buff* %28, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i32 @skb_transport_offset(%struct.sk_buff* %33)
  %35 = call i32 @skb_set_transport_header(%struct.sk_buff* %32, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 3
  %38 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 3
  %41 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @memcpy(%struct.mlx5e_tls_metadata* %38, %struct.mlx5e_tls_metadata* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 3
  %46 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mlx5e_tls_metadata, %struct.mlx5e_tls_metadata* %46, i64 %48
  %50 = call i32 @memcpy(%struct.mlx5e_tls_metadata* %49, %struct.mlx5e_tls_metadata* %6, i32 8)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %51)
  store %struct.iphdr* %52, %struct.iphdr** %13, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i32 @skb_network_offset(%struct.sk_buff* %56)
  %58 = sub nsw i32 %55, %57
  %59 = call i8* @htons(i32 %58)
  %60 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %62)
  store %struct.tcphdr* %63, %struct.tcphdr** %14, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @htonl(i32 %72)
  %74 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %75 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @skb_network_offset(%struct.sk_buff* %82)
  %84 = sub nsw i32 %81, %83
  %85 = sub nsw i32 %80, %84
  store i32 %85, i32* %16, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %5
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @DIV_ROUND_UP(i32 %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %5
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 3
  %113 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %112, align 8
  %114 = getelementptr inbounds %struct.mlx5e_tls_metadata, %struct.mlx5e_tls_metadata* %113, i64 4
  store %struct.mlx5e_tls_metadata* %114, %struct.mlx5e_tls_metadata** %11, align 8
  %115 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %11, align 8
  %116 = call i32 @memcpy(%struct.mlx5e_tls_metadata* %115, %struct.mlx5e_tls_metadata* %12, i32 8)
  %117 = load i32, i32* %9, align 4
  %118 = call i8* @htons(i32 %117)
  %119 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %11, align 8
  %120 = getelementptr inbounds %struct.mlx5e_tls_metadata, %struct.mlx5e_tls_metadata* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i8* %118, i8** %122, align 8
  %123 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #2

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #2

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #2

declare dso_local i32 @memcpy(%struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata*, i32) #2

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
