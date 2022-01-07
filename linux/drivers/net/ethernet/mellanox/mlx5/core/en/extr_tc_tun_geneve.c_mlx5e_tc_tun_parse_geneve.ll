; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_parse_geneve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_parse_geneve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.flow_cls_offload = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, i8*, i8*)* @mlx5e_tc_tun_parse_geneve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_parse_geneve(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %8, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %14 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %16 = call i32 @mlx5e_tc_tun_parse_geneve_params(%struct.mlx5e_priv* %13, %struct.mlx5_flow_spec* %14, %struct.flow_cls_offload* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %35

21:                                               ; preds = %5
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %23 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %24 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %25 = call i32 @mlx5e_tc_tun_parse_geneve_vni(%struct.mlx5e_priv* %22, %struct.mlx5_flow_spec* %23, %struct.flow_cls_offload* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %32 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %33 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %34 = call i32 @mlx5e_tc_tun_parse_geneve_options(%struct.mlx5e_priv* %31, %struct.mlx5_flow_spec* %32, %struct.flow_cls_offload* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %28, %19
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @mlx5e_tc_tun_parse_geneve_params(%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlx5e_tc_tun_parse_geneve_vni(%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlx5e_tc_tun_parse_geneve_options(%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
