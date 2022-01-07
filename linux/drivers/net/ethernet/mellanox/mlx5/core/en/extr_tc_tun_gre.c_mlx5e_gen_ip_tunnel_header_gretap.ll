; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_gre.c_mlx5e_gen_ip_tunnel_header_gretap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_gre.c_mlx5e_gen_ip_tunnel_header_gretap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_encap_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32 }
%struct.gre_base_hdr = type { i32, i32 }

@IPPROTO_GRE = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.mlx5e_encap_entry*)* @mlx5e_gen_ip_tunnel_header_gretap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_gen_ip_tunnel_header_gretap(i8* %0, i32* %1, %struct.mlx5e_encap_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca %struct.ip_tunnel_key*, align 8
  %9 = alloca %struct.gre_base_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %7, align 8
  %13 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ip_tunnel_key* %16, %struct.ip_tunnel_key** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %18, %struct.gre_base_hdr** %9, align 8
  %19 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tunnel_id_to_key32(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @IPPROTO_GRE, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TUNNEL_CSUM, align 4
  %29 = load i32, i32* @TUNNEL_SEQ, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %3
  %37 = load i32, i32* @ETH_P_TEB, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %42 = call i32 @mlx5e_tc_tun_calc_hlen_gretap(%struct.mlx5e_encap_entry* %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gre_tnl_flags_to_gre_flags(i32 %45)
  %47 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %50 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TUNNEL_KEY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %36
  %56 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %9, align 8
  %57 = bitcast %struct.gre_base_hdr* %56 to i32*
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = getelementptr inbounds i32, i32* %60, i64 -4
  store i32* %61, i32** %12, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %36
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mlx5e_tc_tun_calc_hlen_gretap(%struct.mlx5e_encap_entry*) #1

declare dso_local i32 @gre_tnl_flags_to_gre_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
