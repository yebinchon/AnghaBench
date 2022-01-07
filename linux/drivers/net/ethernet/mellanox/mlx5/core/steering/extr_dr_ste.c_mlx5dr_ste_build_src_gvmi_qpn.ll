; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_src_gvmi_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_src_gvmi_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_build = type { i32, i32, i32*, i32, i32, i32, %struct.mlx5dr_domain*, i32 }
%struct.mlx5dr_match_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_domain = type { i32 }

@MLX5DR_STE_LU_TYPE_SRC_GVMI_AND_QP = common dso_local global i32 0, align 4
@dr_ste_build_src_gvmi_qpn_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_ste_build_src_gvmi_qpn(%struct.mlx5dr_ste_build* %0, %struct.mlx5dr_match_param* %1, %struct.mlx5dr_domain* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5dr_ste_build*, align 8
  %8 = alloca %struct.mlx5dr_match_param*, align 8
  %9 = alloca %struct.mlx5dr_domain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5dr_ste_build* %0, %struct.mlx5dr_ste_build** %7, align 8
  store %struct.mlx5dr_match_param* %1, %struct.mlx5dr_match_param** %8, align 8
  store %struct.mlx5dr_domain* %2, %struct.mlx5dr_domain** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %8, align 8
  %20 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dr_ste_build_src_gvmi_qpn_bit_mask(%struct.mlx5dr_match_param* %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %49

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %33 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %33, i32 0, i32 6
  store %struct.mlx5dr_domain* %32, %struct.mlx5dr_domain** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @MLX5DR_STE_LU_TYPE_SRC_GVMI_AND_QP, align 4
  %39 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dr_ste_conv_bit_to_byte_mask(i32 %43)
  %45 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %47, i32 0, i32 2
  store i32* @dr_ste_build_src_gvmi_qpn_tag, i32** %48, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %28, %26
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @dr_ste_build_src_gvmi_qpn_bit_mask(%struct.mlx5dr_match_param*, i32) #1

declare dso_local i32 @dr_ste_conv_bit_to_byte_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
