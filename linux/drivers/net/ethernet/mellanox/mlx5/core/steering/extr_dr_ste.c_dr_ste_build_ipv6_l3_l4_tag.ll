; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_ipv6_l3_l4_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_ipv6_l3_l4_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i64 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_ipv6_l3_l4_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_ipv6_l3_l4_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_spec*, align 8
  %8 = alloca %struct.dr_hw_ste_format*, align 8
  %9 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %15, i32 0, i32 1
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %18, i32 0, i32 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi %struct.mlx5dr_match_spec* [ %16, %14 ], [ %19, %17 ]
  store %struct.mlx5dr_match_spec* %21, %struct.mlx5dr_match_spec** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = bitcast i32* %22 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %23, %struct.dr_hw_ste_format** %8, align 8
  %24 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %8, align 8
  %25 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* @eth_l4, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @dst_port, align 4
  %30 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %31 = load i32, i32* @tcp_dport, align 4
  %32 = call i32 @DR_STE_SET_TAG(i32 %27, i32* %28, i32 %29, %struct.mlx5dr_match_spec* %30, i32 %31)
  %33 = load i32, i32* @eth_l4, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @src_port, align 4
  %36 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %37 = load i32, i32* @tcp_sport, align 4
  %38 = call i32 @DR_STE_SET_TAG(i32 %33, i32* %34, i32 %35, %struct.mlx5dr_match_spec* %36, i32 %37)
  %39 = load i32, i32* @eth_l4, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @dst_port, align 4
  %42 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %43 = load i32, i32* @udp_dport, align 4
  %44 = call i32 @DR_STE_SET_TAG(i32 %39, i32* %40, i32 %41, %struct.mlx5dr_match_spec* %42, i32 %43)
  %45 = load i32, i32* @eth_l4, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @src_port, align 4
  %48 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %49 = load i32, i32* @udp_sport, align 4
  %50 = call i32 @DR_STE_SET_TAG(i32 %45, i32* %46, i32 %47, %struct.mlx5dr_match_spec* %48, i32 %49)
  %51 = load i32, i32* @eth_l4, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @protocol, align 4
  %54 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %55 = load i32, i32* @ip_protocol, align 4
  %56 = call i32 @DR_STE_SET_TAG(i32 %51, i32* %52, i32 %53, %struct.mlx5dr_match_spec* %54, i32 %55)
  %57 = load i32, i32* @eth_l4, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @fragmented, align 4
  %60 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %61 = load i32, i32* @frag, align 4
  %62 = call i32 @DR_STE_SET_TAG(i32 %57, i32* %58, i32 %59, %struct.mlx5dr_match_spec* %60, i32 %61)
  %63 = load i32, i32* @eth_l4, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @dscp, align 4
  %66 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %67 = load i32, i32* @ip_dscp, align 4
  %68 = call i32 @DR_STE_SET_TAG(i32 %63, i32* %64, i32 %65, %struct.mlx5dr_match_spec* %66, i32 %67)
  %69 = load i32, i32* @eth_l4, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @ecn, align 4
  %72 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %73 = load i32, i32* @ip_ecn, align 4
  %74 = call i32 @DR_STE_SET_TAG(i32 %69, i32* %70, i32 %71, %struct.mlx5dr_match_spec* %72, i32 %73)
  %75 = load i32, i32* @eth_l4, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @ipv6_hop_limit, align 4
  %78 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %79 = load i32, i32* @ttl_hoplimit, align 4
  %80 = call i32 @DR_STE_SET_TAG(i32 %75, i32* %76, i32 %77, %struct.mlx5dr_match_spec* %78, i32 %79)
  %81 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %20
  %86 = load i32, i32* @eth_l4, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %89 = call i32 @DR_STE_SET_TCP_FLAGS(i32 %86, i32* %87, %struct.mlx5dr_match_spec* %88)
  %90 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %20
  ret i32 0
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @DR_STE_SET_TCP_FLAGS(i32, i32*, %struct.mlx5dr_match_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
