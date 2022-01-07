; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_des_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_des_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i32, i32, i64, i64, i64 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

@eth_l2_src_dst = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@ste_eth_l2_src_dst = common dso_local global i32 0, align 4
@smac_47_32 = common dso_local global i32 0, align 4
@smac_31_0 = common dso_local global i32 0, align 4
@IP_VERSION_IPV4 = common dso_local global i64 0, align 8
@l3_type = common dso_local global i32 0, align 4
@STE_IPV4 = common dso_local global i32 0, align 4
@IP_VERSION_IPV6 = common dso_local global i64 0, align 8
@STE_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported ip_version value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@first_vlan_id = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@first_priority = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@first_vlan_qualifier = common dso_local global i32 0, align 4
@DR_STE_CVLAN = common dso_local global i32 0, align 4
@DR_STE_SVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_eth_l2_src_des_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l2_src_des_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca %struct.mlx5dr_ste_build*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5dr_match_spec*, align 8
  %9 = alloca %struct.dr_hw_ste_format*, align 8
  %10 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %16, i32 0, i32 1
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.mlx5dr_match_spec* [ %17, %15 ], [ %20, %18 ]
  store %struct.mlx5dr_match_spec* %22, %struct.mlx5dr_match_spec** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = bitcast i32* %23 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %24, %struct.dr_hw_ste_format** %9, align 8
  %25 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %9, align 8
  %26 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* @eth_l2_src_dst, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @dmac_47_16, align 4
  %31 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %32 = load i32, i32* @dmac_47_16, align 4
  %33 = call i32 @DR_STE_SET_TAG(i32 %28, i32* %29, i32 %30, %struct.mlx5dr_match_spec* %31, i32 %32)
  %34 = load i32, i32* @eth_l2_src_dst, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @dmac_15_0, align 4
  %37 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %38 = load i32, i32* @dmac_15_0, align 4
  %39 = call i32 @DR_STE_SET_TAG(i32 %34, i32* %35, i32 %36, %struct.mlx5dr_match_spec* %37, i32 %38)
  %40 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %21
  %45 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44, %21
  %50 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @smac_47_32, align 4
  %53 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 16
  %57 = call i32 @MLX5_SET(i32 %50, i32* %51, i32 %52, i32 %56)
  %58 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @smac_31_0, align 4
  %61 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 16
  %65 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = call i32 @MLX5_SET(i32 %58, i32* %59, i32 %60, i32 %68)
  %70 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %73 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %49, %44
  %75 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %76 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %74
  %80 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IP_VERSION_IPV4, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @l3_type, align 4
  %89 = load i32, i32* @STE_IPV4, align 4
  %90 = call i32 @MLX5_SET(i32 %86, i32* %87, i32 %88, i32 %89)
  %91 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %92 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %112

93:                                               ; preds = %79
  %94 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IP_VERSION_IPV6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* @l3_type, align 4
  %103 = load i32, i32* @STE_IPV6, align 4
  %104 = call i32 @MLX5_SET(i32 %100, i32* %101, i32 %102, i32 %103)
  %105 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %106 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  br label %111

107:                                              ; preds = %93
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %159

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %85
  br label %113

113:                                              ; preds = %112, %74
  %114 = load i32, i32* @eth_l2_src_dst, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* @first_vlan_id, align 4
  %117 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %118 = load i32, i32* @first_vid, align 4
  %119 = call i32 @DR_STE_SET_TAG(i32 %114, i32* %115, i32 %116, %struct.mlx5dr_match_spec* %117, i32 %118)
  %120 = load i32, i32* @eth_l2_src_dst, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* @first_cfi, align 4
  %123 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %124 = load i32, i32* @first_cfi, align 4
  %125 = call i32 @DR_STE_SET_TAG(i32 %120, i32* %121, i32 %122, %struct.mlx5dr_match_spec* %123, i32 %124)
  %126 = load i32, i32* @eth_l2_src_dst, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* @first_priority, align 4
  %129 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %130 = load i32, i32* @first_prio, align 4
  %131 = call i32 @DR_STE_SET_TAG(i32 %126, i32* %127, i32 %128, %struct.mlx5dr_match_spec* %129, i32 %130)
  %132 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %133 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %113
  %137 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* @first_vlan_qualifier, align 4
  %140 = load i32, i32* @DR_STE_CVLAN, align 4
  %141 = call i32 @MLX5_SET(i32 %137, i32* %138, i32 %139, i32 %140)
  %142 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %143 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %142, i32 0, i32 4
  store i64 0, i64* %143, align 8
  br label %158

144:                                              ; preds = %113
  %145 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %146 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i32, i32* @ste_eth_l2_src_dst, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* @first_vlan_qualifier, align 4
  %153 = load i32, i32* @DR_STE_SVLAN, align 4
  %154 = call i32 @MLX5_SET(i32 %150, i32* %151, i32 %152, i32 %153)
  %155 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %156 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %149, %144
  br label %158

158:                                              ; preds = %157, %136
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %107
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
