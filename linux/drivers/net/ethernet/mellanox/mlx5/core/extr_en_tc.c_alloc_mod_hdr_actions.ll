; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_alloc_mod_hdr_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_alloc_mod_hdr_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.pedit_headers_action = type { i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32, i32 }

@TCA_PEDIT_KEY_EX_CMD_SET = common dso_local global i64 0, align 8
@TCA_PEDIT_KEY_EX_CMD_ADD = common dso_local global i64 0, align 8
@set_action_in_add_action_in_auto = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.pedit_headers_action*, i32, %struct.mlx5e_tc_flow_parse_attr*)* @alloc_mod_hdr_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_mod_hdr_actions(%struct.mlx5e_priv* %0, %struct.pedit_headers_action* %1, i32 %2, %struct.mlx5e_tc_flow_parse_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.pedit_headers_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.pedit_headers_action* %1, %struct.pedit_headers_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx5e_tc_flow_parse_attr* %3, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  %13 = load %struct.pedit_headers_action*, %struct.pedit_headers_action** %7, align 8
  %14 = load i64, i64* @TCA_PEDIT_KEY_EX_CMD_SET, align 8
  %15 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %13, i64 %14
  %16 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pedit_headers_action*, %struct.pedit_headers_action** %7, align 8
  %19 = load i64, i64* @TCA_PEDIT_KEY_EX_CMD_ADD, align 8
  %20 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %18, i64 %19
  %21 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %17, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @set_action_in_add_action_in_auto, align 4
  %25 = call i32 @MLX5_UN_SZ_BYTES(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mlx5e_flow_namespace_max_modify_action(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 16
  %34 = call i32 @min(i32 %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kcalloc(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  %42 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %52

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @MLX5_UN_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5e_flow_namespace_max_modify_action(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
