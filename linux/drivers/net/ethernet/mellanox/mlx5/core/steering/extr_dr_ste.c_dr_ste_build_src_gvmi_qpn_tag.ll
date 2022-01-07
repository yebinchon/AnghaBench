; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_src_gvmi_qpn_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_src_gvmi_qpn_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc }
%struct.mlx5dr_match_misc = type { i64, i64 }
%struct.mlx5dr_ste_build = type { i64, %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_cmd_caps = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5dr_cmd_caps }
%struct.dr_hw_ste_format = type { i32* }
%struct.mlx5dr_cmd_vport_cap = type { i64 }

@src_gvmi_qp = common dso_local global i32 0, align 4
@source_qp = common dso_local global i32 0, align 4
@source_sqn = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ste_src_gvmi_qp = common dso_local global i32 0, align 4
@source_gvmi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_src_gvmi_qpn_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_src_gvmi_qpn_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca %struct.mlx5dr_ste_build*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dr_hw_ste_format*, align 8
  %9 = alloca %struct.mlx5dr_match_misc*, align 8
  %10 = alloca %struct.mlx5dr_cmd_vport_cap*, align 8
  %11 = alloca %struct.mlx5dr_domain*, align 8
  %12 = alloca %struct.mlx5dr_cmd_caps*, align 8
  %13 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %15, %struct.dr_hw_ste_format** %8, align 8
  %16 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %16, i32 0, i32 0
  store %struct.mlx5dr_match_misc* %17, %struct.mlx5dr_match_misc** %9, align 8
  %18 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %18, i32 0, i32 1
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %19, align 8
  store %struct.mlx5dr_domain* %20, %struct.mlx5dr_domain** %11, align 8
  %21 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %8, align 8
  %22 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32, i32* @src_gvmi_qp, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* @source_qp, align 4
  %27 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %9, align 8
  %28 = load i32, i32* @source_sqn, align 4
  %29 = call i32 @DR_STE_SET_TAG(i32 %24, i32* %25, i32 %26, %struct.mlx5dr_match_misc* %27, i32 %28)
  %30 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %3
  %35 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store %struct.mlx5dr_cmd_caps* %47, %struct.mlx5dr_cmd_caps** %12, align 8
  br label %75

48:                                               ; preds = %34
  %49 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %50 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %9, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %56, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %67 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.mlx5dr_cmd_caps* %70, %struct.mlx5dr_cmd_caps** %12, align 8
  br label %74

71:                                               ; preds = %53, %48
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %109

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %44
  br label %80

76:                                               ; preds = %3
  %77 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %78 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store %struct.mlx5dr_cmd_caps* %79, %struct.mlx5dr_cmd_caps** %12, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %12, align 8
  %82 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %9, align 8
  %83 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.mlx5dr_cmd_caps* %81, i64 %84)
  store %struct.mlx5dr_cmd_vport_cap* %85, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %86 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %87 = icmp ne %struct.mlx5dr_cmd_vport_cap* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %109

91:                                               ; preds = %80
  %92 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %93 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* @ste_src_gvmi_qp, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* @source_gvmi, align 4
  %100 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %101 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @MLX5_SET(i32 %97, i32* %98, i32 %99, i64 %102)
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %9, align 8
  %106 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %9, align 8
  %108 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %88, %71
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_misc*, i32) #1

declare dso_local %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.mlx5dr_cmd_caps*, i64) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
