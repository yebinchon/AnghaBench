; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_tnl_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_tnl_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_misc = type { i32 }
%struct.mlx5dr_match_spec = type { i64, i64, i64 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

@eth_l2_tnl = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@first_vlan_id = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@ip_fragmented = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@first_priority = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@l3_ethertype = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@ste_eth_l2_tnl = common dso_local global i32 0, align 4
@l2_tunneling_network_id = common dso_local global i32 0, align 4
@first_vlan_qualifier = common dso_local global i32 0, align 4
@DR_STE_CVLAN = common dso_local global i32 0, align 4
@DR_STE_SVLAN = common dso_local global i32 0, align 4
@IP_VERSION_IPV4 = common dso_local global i64 0, align 8
@l3_type = common dso_local global i32 0, align 4
@STE_IPV4 = common dso_local global i32 0, align 4
@IP_VERSION_IPV6 = common dso_local global i64 0, align 8
@STE_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_eth_l2_tnl_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l2_tnl_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca %struct.mlx5dr_ste_build*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5dr_match_spec*, align 8
  %9 = alloca %struct.dr_hw_ste_format*, align 8
  %10 = alloca %struct.mlx5dr_match_misc*, align 8
  %11 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %17, i32 0, i32 2
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %20, i32 0, i32 1
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.mlx5dr_match_spec* [ %18, %16 ], [ %21, %19 ]
  store %struct.mlx5dr_match_spec* %23, %struct.mlx5dr_match_spec** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = bitcast i32* %24 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %25, %struct.dr_hw_ste_format** %9, align 8
  %26 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %26, i32 0, i32 0
  store %struct.mlx5dr_match_misc* %27, %struct.mlx5dr_match_misc** %10, align 8
  %28 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %9, align 8
  %29 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* @eth_l2_tnl, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @dmac_47_16, align 4
  %34 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %35 = load i32, i32* @dmac_47_16, align 4
  %36 = call i32 @DR_STE_SET_TAG(i32 %31, i32* %32, i32 %33, %struct.mlx5dr_match_spec* %34, i32 %35)
  %37 = load i32, i32* @eth_l2_tnl, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @dmac_15_0, align 4
  %40 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %41 = load i32, i32* @dmac_15_0, align 4
  %42 = call i32 @DR_STE_SET_TAG(i32 %37, i32* %38, i32 %39, %struct.mlx5dr_match_spec* %40, i32 %41)
  %43 = load i32, i32* @eth_l2_tnl, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @first_vlan_id, align 4
  %46 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %47 = load i32, i32* @first_vid, align 4
  %48 = call i32 @DR_STE_SET_TAG(i32 %43, i32* %44, i32 %45, %struct.mlx5dr_match_spec* %46, i32 %47)
  %49 = load i32, i32* @eth_l2_tnl, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @first_cfi, align 4
  %52 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %53 = load i32, i32* @first_cfi, align 4
  %54 = call i32 @DR_STE_SET_TAG(i32 %49, i32* %50, i32 %51, %struct.mlx5dr_match_spec* %52, i32 %53)
  %55 = load i32, i32* @eth_l2_tnl, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* @ip_fragmented, align 4
  %58 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %59 = load i32, i32* @frag, align 4
  %60 = call i32 @DR_STE_SET_TAG(i32 %55, i32* %56, i32 %57, %struct.mlx5dr_match_spec* %58, i32 %59)
  %61 = load i32, i32* @eth_l2_tnl, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @first_priority, align 4
  %64 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %65 = load i32, i32* @first_prio, align 4
  %66 = call i32 @DR_STE_SET_TAG(i32 %61, i32* %62, i32 %63, %struct.mlx5dr_match_spec* %64, i32 %65)
  %67 = load i32, i32* @eth_l2_tnl, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @l3_ethertype, align 4
  %70 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %71 = load i32, i32* @ethertype, align 4
  %72 = call i32 @DR_STE_SET_TAG(i32 %67, i32* %68, i32 %69, %struct.mlx5dr_match_spec* %70, i32 %71)
  %73 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %22
  %78 = load i32, i32* @ste_eth_l2_tnl, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @l2_tunneling_network_id, align 4
  %81 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = call i32 @MLX5_SET(i32 %78, i32* %79, i32 %80, i32 %84)
  %86 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %87 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %22
  %89 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %90 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* @ste_eth_l2_tnl, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* @first_vlan_qualifier, align 4
  %97 = load i32, i32* @DR_STE_CVLAN, align 4
  %98 = call i32 @MLX5_SET(i32 %94, i32* %95, i32 %96, i32 %97)
  %99 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  br label %115

101:                                              ; preds = %88
  %102 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* @ste_eth_l2_tnl, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* @first_vlan_qualifier, align 4
  %110 = load i32, i32* @DR_STE_SVLAN, align 4
  %111 = call i32 @MLX5_SET(i32 %107, i32* %108, i32 %109, i32 %110)
  %112 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %113 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %106, %101
  br label %115

115:                                              ; preds = %114, %93
  %116 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %117 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %153

120:                                              ; preds = %115
  %121 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %122 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IP_VERSION_IPV4, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i32, i32* @ste_eth_l2_tnl, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @l3_type, align 4
  %130 = load i32, i32* @STE_IPV4, align 4
  %131 = call i32 @MLX5_SET(i32 %127, i32* %128, i32 %129, i32 %130)
  %132 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %133 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %152

134:                                              ; preds = %120
  %135 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %136 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IP_VERSION_IPV6, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i32, i32* @ste_eth_l2_tnl, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* @l3_type, align 4
  %144 = load i32, i32* @STE_IPV6, align 4
  %145 = call i32 @MLX5_SET(i32 %141, i32* %142, i32 %143, i32 %144)
  %146 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %147 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  br label %151

148:                                              ; preds = %134
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %154

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %115
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %148
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
