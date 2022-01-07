; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_get_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_get_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5_flow_spec = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@cvlan_tag = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@UNKNOWN_MATCH_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"masked priority match not supported for hairpin\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_QPTS_TRUST_PCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, i32*, %struct.netlink_ext_ack*)* @mlx5e_hairpin_get_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_hairpin_get_prio(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, i32* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_flow_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @fte_match_param, align 4
  %16 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @outer_headers, align 4
  %20 = call i8* @MLX5_ADDR_OF(i32 %15, i32 %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i32, i32* @fte_match_param, align 4
  %22 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @outer_headers, align 4
  %26 = call i8* @MLX5_ADDR_OF(i32 %21, i32 %24, i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* @cvlan_tag, align 4
  %30 = call i32 @MLX5_GET(i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @first_prio, align 4
  %37 = call i32 @MLX5_GET(i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @first_prio, align 4
  %41 = call i32 @MLX5_GET(i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %33, %4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @UNKNOWN_MATCH_PRIO, align 4
  store i32 %49, i32* %12, align 4
  br label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 7
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %55 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
