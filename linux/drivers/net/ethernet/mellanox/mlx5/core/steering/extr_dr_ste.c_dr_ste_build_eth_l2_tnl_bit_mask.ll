; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_tnl_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_tnl_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_misc = type { i32 }
%struct.mlx5dr_match_spec = type { i64, i64 }

@eth_l2_tnl = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@first_vlan_id = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@first_priority = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@ip_fragmented = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@l3_ethertype = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@l3_type = common dso_local global i32 0, align 4
@ip_version = common dso_local global i32 0, align 4
@ste_eth_l2_tnl = common dso_local global i32 0, align 4
@l2_tunneling_network_id = common dso_local global i32 0, align 4
@first_vlan_qualifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_eth_l2_tnl_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_eth_l2_tnl_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_spec*, align 8
  %8 = alloca %struct.mlx5dr_match_misc*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %12, i32 0, i32 2
  br label %17

14:                                               ; preds = %3
  %15 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %15, i32 0, i32 1
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi %struct.mlx5dr_match_spec* [ %13, %11 ], [ %16, %14 ]
  store %struct.mlx5dr_match_spec* %18, %struct.mlx5dr_match_spec** %7, align 8
  %19 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %19, i32 0, i32 0
  store %struct.mlx5dr_match_misc* %20, %struct.mlx5dr_match_misc** %8, align 8
  %21 = load i32, i32* @eth_l2_tnl, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @dmac_47_16, align 4
  %24 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %25 = load i32, i32* @dmac_47_16, align 4
  %26 = call i32 @DR_STE_SET_MASK_V(i32 %21, i32* %22, i32 %23, %struct.mlx5dr_match_spec* %24, i32 %25)
  %27 = load i32, i32* @eth_l2_tnl, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @dmac_15_0, align 4
  %30 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %31 = load i32, i32* @dmac_15_0, align 4
  %32 = call i32 @DR_STE_SET_MASK_V(i32 %27, i32* %28, i32 %29, %struct.mlx5dr_match_spec* %30, i32 %31)
  %33 = load i32, i32* @eth_l2_tnl, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @first_vlan_id, align 4
  %36 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %37 = load i32, i32* @first_vid, align 4
  %38 = call i32 @DR_STE_SET_MASK_V(i32 %33, i32* %34, i32 %35, %struct.mlx5dr_match_spec* %36, i32 %37)
  %39 = load i32, i32* @eth_l2_tnl, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @first_cfi, align 4
  %42 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %43 = load i32, i32* @first_cfi, align 4
  %44 = call i32 @DR_STE_SET_MASK_V(i32 %39, i32* %40, i32 %41, %struct.mlx5dr_match_spec* %42, i32 %43)
  %45 = load i32, i32* @eth_l2_tnl, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @first_priority, align 4
  %48 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %49 = load i32, i32* @first_prio, align 4
  %50 = call i32 @DR_STE_SET_MASK_V(i32 %45, i32* %46, i32 %47, %struct.mlx5dr_match_spec* %48, i32 %49)
  %51 = load i32, i32* @eth_l2_tnl, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @ip_fragmented, align 4
  %54 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %55 = load i32, i32* @frag, align 4
  %56 = call i32 @DR_STE_SET_MASK_V(i32 %51, i32* %52, i32 %53, %struct.mlx5dr_match_spec* %54, i32 %55)
  %57 = load i32, i32* @eth_l2_tnl, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @l3_ethertype, align 4
  %60 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %61 = load i32, i32* @ethertype, align 4
  %62 = call i32 @DR_STE_SET_MASK_V(i32 %57, i32* %58, i32 %59, %struct.mlx5dr_match_spec* %60, i32 %61)
  %63 = load i32, i32* @eth_l2_tnl, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @l3_type, align 4
  %66 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %67 = load i32, i32* @ip_version, align 4
  %68 = call i32 @DR_STE_SET_MASK(i32 %63, i32* %64, i32 %65, %struct.mlx5dr_match_spec* %66, i32 %67)
  %69 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %17
  %74 = load i32, i32* @ste_eth_l2_tnl, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @l2_tunneling_network_id, align 4
  %77 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = call i32 @MLX5_SET(i32 %74, i32* %75, i32 %76, i32 %80)
  %82 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %83 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %17
  %85 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %86 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @ste_eth_l2_tnl, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @first_vlan_qualifier, align 4
  %98 = call i32 @MLX5_SET(i32 %95, i32* %96, i32 %97, i32 -1)
  %99 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %102 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %94, %89
  ret void
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @DR_STE_SET_MASK(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
