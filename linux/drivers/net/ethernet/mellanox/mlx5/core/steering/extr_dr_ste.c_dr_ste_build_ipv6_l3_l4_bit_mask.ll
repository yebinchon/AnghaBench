; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_ipv6_l3_l4_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_ipv6_l3_l4_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i64 }

@eth_l4 = common dso_local global i32 0, align 4
@dst_port = common dso_local global i32 0, align 4
@tcp_dport = common dso_local global i32 0, align 4
@src_port = common dso_local global i32 0, align 4
@tcp_sport = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@udp_sport = common dso_local global i32 0, align 4
@protocol = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@fragmented = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@dscp = common dso_local global i32 0, align 4
@ip_dscp = common dso_local global i32 0, align 4
@ecn = common dso_local global i32 0, align 4
@ip_ecn = common dso_local global i32 0, align 4
@ipv6_hop_limit = common dso_local global i32 0, align 4
@ttl_hoplimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_ipv6_l3_l4_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_ipv6_l3_l4_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_spec*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %11, i32 0, i32 1
  br label %16

13:                                               ; preds = %3
  %14 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %14, i32 0, i32 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi %struct.mlx5dr_match_spec* [ %12, %10 ], [ %15, %13 ]
  store %struct.mlx5dr_match_spec* %17, %struct.mlx5dr_match_spec** %7, align 8
  %18 = load i32, i32* @eth_l4, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @dst_port, align 4
  %21 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %22 = load i32, i32* @tcp_dport, align 4
  %23 = call i32 @DR_STE_SET_MASK_V(i32 %18, i32* %19, i32 %20, %struct.mlx5dr_match_spec* %21, i32 %22)
  %24 = load i32, i32* @eth_l4, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @src_port, align 4
  %27 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %28 = load i32, i32* @tcp_sport, align 4
  %29 = call i32 @DR_STE_SET_MASK_V(i32 %24, i32* %25, i32 %26, %struct.mlx5dr_match_spec* %27, i32 %28)
  %30 = load i32, i32* @eth_l4, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @dst_port, align 4
  %33 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %34 = load i32, i32* @udp_dport, align 4
  %35 = call i32 @DR_STE_SET_MASK_V(i32 %30, i32* %31, i32 %32, %struct.mlx5dr_match_spec* %33, i32 %34)
  %36 = load i32, i32* @eth_l4, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @src_port, align 4
  %39 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %40 = load i32, i32* @udp_sport, align 4
  %41 = call i32 @DR_STE_SET_MASK_V(i32 %36, i32* %37, i32 %38, %struct.mlx5dr_match_spec* %39, i32 %40)
  %42 = load i32, i32* @eth_l4, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @protocol, align 4
  %45 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %46 = load i32, i32* @ip_protocol, align 4
  %47 = call i32 @DR_STE_SET_MASK_V(i32 %42, i32* %43, i32 %44, %struct.mlx5dr_match_spec* %45, i32 %46)
  %48 = load i32, i32* @eth_l4, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @fragmented, align 4
  %51 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %52 = load i32, i32* @frag, align 4
  %53 = call i32 @DR_STE_SET_MASK_V(i32 %48, i32* %49, i32 %50, %struct.mlx5dr_match_spec* %51, i32 %52)
  %54 = load i32, i32* @eth_l4, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @dscp, align 4
  %57 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %58 = load i32, i32* @ip_dscp, align 4
  %59 = call i32 @DR_STE_SET_MASK_V(i32 %54, i32* %55, i32 %56, %struct.mlx5dr_match_spec* %57, i32 %58)
  %60 = load i32, i32* @eth_l4, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @ecn, align 4
  %63 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %64 = load i32, i32* @ip_ecn, align 4
  %65 = call i32 @DR_STE_SET_MASK_V(i32 %60, i32* %61, i32 %62, %struct.mlx5dr_match_spec* %63, i32 %64)
  %66 = load i32, i32* @eth_l4, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @ipv6_hop_limit, align 4
  %69 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %70 = load i32, i32* @ttl_hoplimit, align 4
  %71 = call i32 @DR_STE_SET_MASK_V(i32 %66, i32* %67, i32 %68, %struct.mlx5dr_match_spec* %69, i32 %70)
  %72 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %16
  %77 = load i32, i32* @eth_l4, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %80 = call i32 @DR_STE_SET_TCP_FLAGS(i32 %77, i32* %78, %struct.mlx5dr_match_spec* %79)
  %81 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %16
  ret void
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @DR_STE_SET_TCP_FLAGS(i32, i32*, %struct.mlx5dr_match_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
