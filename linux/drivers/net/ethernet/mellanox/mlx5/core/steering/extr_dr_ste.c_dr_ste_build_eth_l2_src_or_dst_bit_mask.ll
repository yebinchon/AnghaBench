; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_or_dst_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_or_dst_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5dr_match_misc = type { i64, i64, i64, i64, i64, i64 }

@eth_l2_src = common dso_local global i32 0, align 4
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
@ste_eth_l2_src = common dso_local global i32 0, align 4
@first_vlan_qualifier = common dso_local global i32 0, align 4
@second_vlan_qualifier = common dso_local global i32 0, align 4
@second_vlan_id = common dso_local global i32 0, align 4
@inner_second_vid = common dso_local global i32 0, align 4
@second_cfi = common dso_local global i32 0, align 4
@inner_second_cfi = common dso_local global i32 0, align 4
@second_priority = common dso_local global i32 0, align 4
@inner_second_prio = common dso_local global i32 0, align 4
@outer_second_vid = common dso_local global i32 0, align 4
@outer_second_cfi = common dso_local global i32 0, align 4
@outer_second_prio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_eth_l2_src_or_dst_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_eth_l2_src_or_dst_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
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
  %21 = bitcast %struct.mlx5dr_match_spec* %20 to %struct.mlx5dr_match_misc*
  store %struct.mlx5dr_match_misc* %21, %struct.mlx5dr_match_misc** %8, align 8
  %22 = load i32, i32* @eth_l2_src, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @first_vlan_id, align 4
  %25 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %26 = load i32, i32* @first_vid, align 4
  %27 = call i32 @DR_STE_SET_MASK_V(i32 %22, i32* %23, i32 %24, %struct.mlx5dr_match_spec* %25, i32 %26)
  %28 = load i32, i32* @eth_l2_src, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @first_cfi, align 4
  %31 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %32 = load i32, i32* @first_cfi, align 4
  %33 = call i32 @DR_STE_SET_MASK_V(i32 %28, i32* %29, i32 %30, %struct.mlx5dr_match_spec* %31, i32 %32)
  %34 = load i32, i32* @eth_l2_src, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @first_priority, align 4
  %37 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %38 = load i32, i32* @first_prio, align 4
  %39 = call i32 @DR_STE_SET_MASK_V(i32 %34, i32* %35, i32 %36, %struct.mlx5dr_match_spec* %37, i32 %38)
  %40 = load i32, i32* @eth_l2_src, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @ip_fragmented, align 4
  %43 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %44 = load i32, i32* @frag, align 4
  %45 = call i32 @DR_STE_SET_MASK_V(i32 %40, i32* %41, i32 %42, %struct.mlx5dr_match_spec* %43, i32 %44)
  %46 = load i32, i32* @eth_l2_src, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @l3_ethertype, align 4
  %49 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %50 = load i32, i32* @ethertype, align 4
  %51 = call i32 @DR_STE_SET_MASK_V(i32 %46, i32* %47, i32 %48, %struct.mlx5dr_match_spec* %49, i32 %50)
  %52 = load i32, i32* @eth_l2_src, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @l3_type, align 4
  %55 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %56 = load i32, i32* @ip_version, align 4
  %57 = call i32 @DR_STE_SET_MASK(i32 %52, i32* %53, i32 %54, %struct.mlx5dr_match_spec* %55, i32 %56)
  %58 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %17
  %63 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62, %17
  %68 = load i32, i32* @ste_eth_l2_src, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @first_vlan_qualifier, align 4
  %71 = call i32 @MLX5_SET(i32 %68, i32* %69, i32 %70, i32 -1)
  %72 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %75 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %76
  %80 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %86 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @ste_eth_l2_src, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @second_vlan_qualifier, align 4
  %93 = call i32 @MLX5_SET(i32 %90, i32* %91, i32 %92, i32 -1)
  %94 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %97 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %89, %84
  %99 = load i32, i32* @eth_l2_src, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* @second_vlan_id, align 4
  %102 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %103 = bitcast %struct.mlx5dr_match_misc* %102 to %struct.mlx5dr_match_spec*
  %104 = load i32, i32* @inner_second_vid, align 4
  %105 = call i32 @DR_STE_SET_MASK_V(i32 %99, i32* %100, i32 %101, %struct.mlx5dr_match_spec* %103, i32 %104)
  %106 = load i32, i32* @eth_l2_src, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @second_cfi, align 4
  %109 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %110 = bitcast %struct.mlx5dr_match_misc* %109 to %struct.mlx5dr_match_spec*
  %111 = load i32, i32* @inner_second_cfi, align 4
  %112 = call i32 @DR_STE_SET_MASK_V(i32 %106, i32* %107, i32 %108, %struct.mlx5dr_match_spec* %110, i32 %111)
  %113 = load i32, i32* @eth_l2_src, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @second_priority, align 4
  %116 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %117 = bitcast %struct.mlx5dr_match_misc* %116 to %struct.mlx5dr_match_spec*
  %118 = load i32, i32* @inner_second_prio, align 4
  %119 = call i32 @DR_STE_SET_MASK_V(i32 %113, i32* %114, i32 %115, %struct.mlx5dr_match_spec* %117, i32 %118)
  br label %161

120:                                              ; preds = %76
  %121 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %122 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %127 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125, %120
  %131 = load i32, i32* @ste_eth_l2_src, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @second_vlan_qualifier, align 4
  %134 = call i32 @MLX5_SET(i32 %131, i32* %132, i32 %133, i32 -1)
  %135 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %136 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %138 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %130, %125
  %140 = load i32, i32* @eth_l2_src, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* @second_vlan_id, align 4
  %143 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %144 = bitcast %struct.mlx5dr_match_misc* %143 to %struct.mlx5dr_match_spec*
  %145 = load i32, i32* @outer_second_vid, align 4
  %146 = call i32 @DR_STE_SET_MASK_V(i32 %140, i32* %141, i32 %142, %struct.mlx5dr_match_spec* %144, i32 %145)
  %147 = load i32, i32* @eth_l2_src, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* @second_cfi, align 4
  %150 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %151 = bitcast %struct.mlx5dr_match_misc* %150 to %struct.mlx5dr_match_spec*
  %152 = load i32, i32* @outer_second_cfi, align 4
  %153 = call i32 @DR_STE_SET_MASK_V(i32 %147, i32* %148, i32 %149, %struct.mlx5dr_match_spec* %151, i32 %152)
  %154 = load i32, i32* @eth_l2_src, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* @second_priority, align 4
  %157 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %8, align 8
  %158 = bitcast %struct.mlx5dr_match_misc* %157 to %struct.mlx5dr_match_spec*
  %159 = load i32, i32* @outer_second_prio, align 4
  %160 = call i32 @DR_STE_SET_MASK_V(i32 %154, i32* %155, i32 %156, %struct.mlx5dr_match_spec* %158, i32 %159)
  br label %161

161:                                              ; preds = %139, %98
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
