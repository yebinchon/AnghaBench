; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_gre.c_mlx5e_tc_tun_parse_gretap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_gre.c_mlx5e_tc_tun_parse_gretap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@gre_protocol = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@gre_key = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, i8*, i8*)* @mlx5e_tc_tun_parse_gretap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_parse_gretap(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_flow_spec*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.flow_rule*, align 8
  %14 = alloca %struct.flow_match_enc_keyid, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %7, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @fte_match_param, align 4
  %16 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @misc_parameters, align 4
  %20 = call i8* @MLX5_ADDR_OF(i32 %15, i32 %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i32, i32* @fte_match_param, align 4
  %22 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @misc_parameters, align 4
  %26 = call i8* @MLX5_ADDR_OF(i32 %21, i32 %24, i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %28 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %27)
  store %struct.flow_rule* %28, %struct.flow_rule** %13, align 8
  %29 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @ip_protocol, align 4
  %32 = call i32 @MLX5_SET_TO_ONES(i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @ip_protocol, align 4
  %36 = load i32, i32* @IPPROTO_GRE, align 4
  %37 = call i32 @MLX5_SET(i32 %33, i8* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @fte_match_set_misc, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @gre_protocol, align 4
  %41 = call i32 @MLX5_SET_TO_ONES(i32 %38, i8* %39, i32 %40)
  %42 = load i32, i32* @fte_match_set_misc, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* @gre_protocol, align 4
  %45 = load i32, i32* @ETH_P_TEB, align 4
  %46 = call i32 @MLX5_SET(i32 %42, i8* %43, i32 %44, i32 %45)
  %47 = load %struct.flow_rule*, %struct.flow_rule** %13, align 8
  %48 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %49 = call i64 @flow_rule_match_key(%struct.flow_rule* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %5
  %52 = load %struct.flow_rule*, %struct.flow_rule** %13, align 8
  %53 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %52, %struct.flow_match_enc_keyid* %14)
  %54 = load i32, i32* @fte_match_set_misc, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gre_key, i32 0, i32 0), align 4
  %57 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %14, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = call i32 @MLX5_SET(i32 %54, i8* %55, i32 %56, i32 %61)
  %63 = load i32, i32* @fte_match_set_misc, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gre_key, i32 0, i32 0), align 4
  %66 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %14, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = call i32 @MLX5_SET(i32 %63, i8* %64, i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %51, %5
  ret i32 0
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
