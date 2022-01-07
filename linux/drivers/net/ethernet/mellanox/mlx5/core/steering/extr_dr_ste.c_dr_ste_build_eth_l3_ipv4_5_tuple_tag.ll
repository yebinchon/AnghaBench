; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv4_5_tuple_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv4_5_tuple_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i64 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

@eth_l3_ipv4_5_tuple = common dso_local global i32 0, align 4
@destination_address = common dso_local global i32 0, align 4
@dst_ip_31_0 = common dso_local global i32 0, align 4
@source_address = common dso_local global i32 0, align 4
@src_ip_31_0 = common dso_local global i32 0, align 4
@destination_port = common dso_local global i32 0, align 4
@tcp_dport = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@tcp_sport = common dso_local global i32 0, align 4
@udp_sport = common dso_local global i32 0, align 4
@protocol = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@fragmented = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@dscp = common dso_local global i32 0, align 4
@ip_dscp = common dso_local global i32 0, align 4
@ecn = common dso_local global i32 0, align 4
@ip_ecn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_eth_l3_ipv4_5_tuple_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l3_ipv4_5_tuple_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dr_hw_ste_format*, align 8
  %8 = alloca %struct.mlx5dr_match_spec*, align 8
  %9 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %11, %struct.dr_hw_ste_format** %7, align 8
  %12 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %17, i32 0, i32 1
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.mlx5dr_match_spec* [ %18, %16 ], [ %21, %19 ]
  store %struct.mlx5dr_match_spec* %23, %struct.mlx5dr_match_spec** %8, align 8
  %24 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %7, align 8
  %25 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @destination_address, align 4
  %30 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %31 = load i32, i32* @dst_ip_31_0, align 4
  %32 = call i32 @DR_STE_SET_TAG(i32 %27, i32* %28, i32 %29, %struct.mlx5dr_match_spec* %30, i32 %31)
  %33 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @source_address, align 4
  %36 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %37 = load i32, i32* @src_ip_31_0, align 4
  %38 = call i32 @DR_STE_SET_TAG(i32 %33, i32* %34, i32 %35, %struct.mlx5dr_match_spec* %36, i32 %37)
  %39 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @destination_port, align 4
  %42 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %43 = load i32, i32* @tcp_dport, align 4
  %44 = call i32 @DR_STE_SET_TAG(i32 %39, i32* %40, i32 %41, %struct.mlx5dr_match_spec* %42, i32 %43)
  %45 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @destination_port, align 4
  %48 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %49 = load i32, i32* @udp_dport, align 4
  %50 = call i32 @DR_STE_SET_TAG(i32 %45, i32* %46, i32 %47, %struct.mlx5dr_match_spec* %48, i32 %49)
  %51 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @source_port, align 4
  %54 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %55 = load i32, i32* @tcp_sport, align 4
  %56 = call i32 @DR_STE_SET_TAG(i32 %51, i32* %52, i32 %53, %struct.mlx5dr_match_spec* %54, i32 %55)
  %57 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @source_port, align 4
  %60 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %61 = load i32, i32* @udp_sport, align 4
  %62 = call i32 @DR_STE_SET_TAG(i32 %57, i32* %58, i32 %59, %struct.mlx5dr_match_spec* %60, i32 %61)
  %63 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @protocol, align 4
  %66 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %67 = load i32, i32* @ip_protocol, align 4
  %68 = call i32 @DR_STE_SET_TAG(i32 %63, i32* %64, i32 %65, %struct.mlx5dr_match_spec* %66, i32 %67)
  %69 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @fragmented, align 4
  %72 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %73 = load i32, i32* @frag, align 4
  %74 = call i32 @DR_STE_SET_TAG(i32 %69, i32* %70, i32 %71, %struct.mlx5dr_match_spec* %72, i32 %73)
  %75 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @dscp, align 4
  %78 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %79 = load i32, i32* @ip_dscp, align 4
  %80 = call i32 @DR_STE_SET_TAG(i32 %75, i32* %76, i32 %77, %struct.mlx5dr_match_spec* %78, i32 %79)
  %81 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @ecn, align 4
  %84 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %85 = load i32, i32* @ip_ecn, align 4
  %86 = call i32 @DR_STE_SET_TAG(i32 %81, i32* %82, i32 %83, %struct.mlx5dr_match_spec* %84, i32 %85)
  %87 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %88 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %22
  %92 = load i32, i32* @eth_l3_ipv4_5_tuple, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %95 = call i32 @DR_STE_SET_TCP_FLAGS(i32 %92, i32* %93, %struct.mlx5dr_match_spec* %94)
  %96 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %97 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %22
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
