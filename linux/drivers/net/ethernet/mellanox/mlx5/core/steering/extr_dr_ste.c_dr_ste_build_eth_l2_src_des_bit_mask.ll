; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_des_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_des_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i32, i32, i64, i64 }

@eth_l2_src_dst = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@ste_eth_l2_src_dst = common dso_local global i32 0, align 4
@smac_47_32 = common dso_local global i32 0, align 4
@smac_31_0 = common dso_local global i32 0, align 4
@first_vlan_id = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@first_priority = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@l3_type = common dso_local global i32 0, align 4
@ip_version = common dso_local global i32 0, align 4
@first_vlan_qualifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid c/svlan mask configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_eth_l2_src_des_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l2_src_des_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5dr_match_spec*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %12, i32 0, i32 1
  br label %17

14:                                               ; preds = %3
  %15 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %15, i32 0, i32 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi %struct.mlx5dr_match_spec* [ %13, %11 ], [ %16, %14 ]
  store %struct.mlx5dr_match_spec* %18, %struct.mlx5dr_match_spec** %8, align 8
  %19 = load i32, i32* @eth_l2_src_dst, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @dmac_47_16, align 4
  %22 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %23 = load i32, i32* @dmac_47_16, align 4
  %24 = call i32 @DR_STE_SET_MASK_V(i32 %19, i32* %20, i32 %21, %struct.mlx5dr_match_spec* %22, i32 %23)
  %25 = load i32, i32* @eth_l2_src_dst, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @dmac_15_0, align 4
  %28 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %29 = load i32, i32* @dmac_15_0, align 4
  %30 = call i32 @DR_STE_SET_MASK_V(i32 %25, i32* %26, i32 %27, %struct.mlx5dr_match_spec* %28, i32 %29)
  %31 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %17
  %36 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35, %17
  %41 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @smac_47_32, align 4
  %44 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 16
  %48 = call i32 @MLX5_SET(i32 %41, i32* %42, i32 %43, i32 %47)
  %49 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @smac_31_0, align 4
  %52 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 16
  %56 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = call i32 @MLX5_SET(i32 %49, i32* %50, i32 %51, i32 %59)
  %61 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %40, %35
  %66 = load i32, i32* @eth_l2_src_dst, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @first_vlan_id, align 4
  %69 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %70 = load i32, i32* @first_vid, align 4
  %71 = call i32 @DR_STE_SET_MASK_V(i32 %66, i32* %67, i32 %68, %struct.mlx5dr_match_spec* %69, i32 %70)
  %72 = load i32, i32* @eth_l2_src_dst, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @first_cfi, align 4
  %75 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %76 = load i32, i32* @first_cfi, align 4
  %77 = call i32 @DR_STE_SET_MASK_V(i32 %72, i32* %73, i32 %74, %struct.mlx5dr_match_spec* %75, i32 %76)
  %78 = load i32, i32* @eth_l2_src_dst, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @first_priority, align 4
  %81 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %82 = load i32, i32* @first_prio, align 4
  %83 = call i32 @DR_STE_SET_MASK_V(i32 %78, i32* %79, i32 %80, %struct.mlx5dr_match_spec* %81, i32 %82)
  %84 = load i32, i32* @eth_l2_src_dst, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @l3_type, align 4
  %87 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %88 = load i32, i32* @ip_version, align 4
  %89 = call i32 @DR_STE_SET_MASK(i32 %84, i32* %85, i32 %86, %struct.mlx5dr_match_spec* %87, i32 %88)
  %90 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %65
  %95 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @first_vlan_qualifier, align 4
  %98 = call i32 @MLX5_SET(i32 %95, i32* %96, i32 %97, i32 -1)
  %99 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %114

101:                                              ; preds = %65
  %102 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @first_vlan_qualifier, align 4
  %110 = call i32 @MLX5_SET(i32 %107, i32* %108, i32 %109, i32 -1)
  %111 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %112 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %106, %101
  br label %114

114:                                              ; preds = %113, %94
  %115 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %116 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %121 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119, %114
  %125 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @DR_STE_SET_MASK(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
