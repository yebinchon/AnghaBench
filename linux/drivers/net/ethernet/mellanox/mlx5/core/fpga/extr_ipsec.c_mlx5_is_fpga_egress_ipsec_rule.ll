; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_is_fpga_egress_ipsec_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_is_fpga_egress_ipsec_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_context = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@smac_47_16 = common dso_local global i32 0, align 4
@smac_15_0 = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@FLOW_CONTEXT_HAS_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32*, i32*, %struct.mlx5_flow_act*, %struct.mlx5_flow_context*)* @mlx5_is_fpga_egress_ipsec_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_is_fpga_egress_ipsec_rule(%struct.mlx5_core_dev* %0, i32 %1, i32* %2, i32* %3, %struct.mlx5_flow_act* %4, %struct.mlx5_flow_context* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5_flow_act*, align 8
  %13 = alloca %struct.mlx5_flow_context*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.mlx5_flow_act* %4, %struct.mlx5_flow_act** %12, align 8
  store %struct.mlx5_flow_context* %5, %struct.mlx5_flow_context** %13, align 8
  %18 = load i32, i32* @fte_match_param, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @outer_headers, align 4
  %21 = call i8* @MLX5_ADDR_OF(i32 %18, i32* %19, i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = load i32, i32* @dmac_47_16, align 4
  %25 = call i64 @MLX5_GET(i32 %22, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* @dmac_15_0, align 4
  %31 = call i64 @MLX5_GET(i32 %28, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %6
  %34 = phi i1 [ true, %6 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* @smac_47_16, align 4
  %39 = call i64 @MLX5_GET(i32 %36, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* @smac_15_0, align 4
  %45 = call i64 @MLX5_GET(i32 %42, i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %33
  %48 = phi i1 [ true, %33 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @mlx5_is_fpga_ipsec_rule(%struct.mlx5_core_dev* %50, i32 %51, i32* %52, i32* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %7, align 4
  br label %92

59:                                               ; preds = %47
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %68 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %66, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %65
  %74 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %12, align 8
  %75 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %78 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %76, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %73
  %84 = load %struct.mlx5_flow_context*, %struct.mlx5_flow_context** %13, align 8
  %85 = getelementptr inbounds %struct.mlx5_flow_context, %struct.mlx5_flow_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FLOW_CONTEXT_HAS_TAG, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83, %73, %65, %62, %59
  store i32 0, i32* %7, align 4
  br label %92

91:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %90, %57
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i64 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @mlx5_is_fpga_ipsec_rule(%struct.mlx5_core_dev*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
