; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_set_swp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_set_swp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.mlx5_wqe_eth_seg = type { i32 }
%struct.xfrm_offload = type { i64 }
%struct.mlx5e_swp_spec = type { i32, i64, i8*, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mlx5_wqe_eth_seg*, i64, %struct.xfrm_offload*)* @mlx5e_ipsec_set_swp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_ipsec_set_swp(%struct.sk_buff* %0, %struct.mlx5_wqe_eth_seg* %1, i64 %2, %struct.xfrm_offload* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfrm_offload*, align 8
  %9 = alloca %struct.mlx5e_swp_spec, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.mlx5_wqe_eth_seg* %1, %struct.mlx5_wqe_eth_seg** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.xfrm_offload* %3, %struct.xfrm_offload** %8, align 8
  %10 = bitcast %struct.mlx5e_swp_spec* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %4
  %24 = load %struct.xfrm_offload*, %struct.xfrm_offload** %8, align 8
  %25 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPPROTO_IPV6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @ETH_P_IPV6, align 4
  %31 = call i8* @htons(i32 %30)
  %32 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.TYPE_3__* @inner_ipv6_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  br label %47

38:                                               ; preds = %23
  %39 = load i32, i32* @ETH_P_IP, align 4
  %40 = call i8* @htons(i32 %39)
  %41 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call %struct.TYPE_4__* @inner_ip_hdr(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %29
  br label %57

48:                                               ; preds = %4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load %struct.xfrm_offload*, %struct.xfrm_offload** %8, align 8
  %54 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %9, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %6, align 8
  %60 = call i32 @mlx5e_set_eseg_swp(%struct.sk_buff* %58, %struct.mlx5_wqe_eth_seg* %59, %struct.mlx5e_swp_spec* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @htons(i32) #2

declare dso_local %struct.TYPE_3__* @inner_ipv6_hdr(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_4__* @inner_ip_hdr(%struct.sk_buff*) #2

declare dso_local i32 @mlx5e_set_eseg_swp(%struct.sk_buff*, %struct.mlx5_wqe_eth_seg*, %struct.mlx5e_swp_spec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
