; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_create_rep_vport_rx_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_create_rep_vport_rx_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__*, %struct.mlx5e_rep_priv*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_flow_handle*, %struct.mlx5_eswitch_rep* }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32 }

@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_create_rep_vport_rx_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_rep_vport_rx_rule(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5e_rep_priv*, align 8
  %6 = alloca %struct.mlx5_eswitch_rep*, align 8
  %7 = alloca %struct.mlx5_flow_handle*, align 8
  %8 = alloca %struct.mlx5_flow_destination, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  store %struct.mlx5_eswitch* %14, %struct.mlx5_eswitch** %4, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %16, align 8
  store %struct.mlx5e_rep_priv* %17, %struct.mlx5e_rep_priv** %5, align 8
  %18 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %18, i32 0, i32 1
  %20 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %19, align 8
  store %struct.mlx5_eswitch_rep* %20, %struct.mlx5_eswitch_rep** %6, align 8
  %21 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %22 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %31 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mlx5_flow_handle* @mlx5_eswitch_create_vport_rx_rule(%struct.mlx5_eswitch* %30, i32 %33, %struct.mlx5_flow_destination* %8)
  store %struct.mlx5_flow_handle* %34, %struct.mlx5_flow_handle** %7, align 8
  %35 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %7, align 8
  %36 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %7, align 8
  %40 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %39)
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %7, align 8
  %43 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %43, i32 0, i32 0
  store %struct.mlx5_flow_handle* %42, %struct.mlx5_flow_handle** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_create_vport_rx_rule(%struct.mlx5_eswitch*, i32, %struct.mlx5_flow_destination*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
