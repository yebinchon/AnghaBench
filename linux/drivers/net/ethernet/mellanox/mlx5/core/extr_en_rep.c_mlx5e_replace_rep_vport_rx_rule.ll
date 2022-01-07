; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_replace_rep_vport_rx_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_replace_rep_vport_rx_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5e_rep_priv*, %struct.TYPE_4__* }
%struct.mlx5e_rep_priv = type { %struct.mlx5_flow_handle*, %struct.mlx5_eswitch_rep* }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_destination = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_destination*)* @mlx5e_replace_rep_vport_rx_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_replace_rep_vport_rx_rule(%struct.mlx5e_priv* %0, %struct.mlx5_flow_destination* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5_flow_destination*, align 8
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca %struct.mlx5e_rep_priv*, align 8
  %8 = alloca %struct.mlx5_eswitch_rep*, align 8
  %9 = alloca %struct.mlx5_flow_handle*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination** %5, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %14, align 8
  store %struct.mlx5_eswitch* %15, %struct.mlx5_eswitch** %6, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %17, align 8
  store %struct.mlx5e_rep_priv* %18, %struct.mlx5e_rep_priv** %7, align 8
  %19 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %19, i32 0, i32 1
  %21 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %20, align 8
  store %struct.mlx5_eswitch_rep* %21, %struct.mlx5_eswitch_rep** %8, align 8
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %23 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %8, align 8
  %24 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %27 = call %struct.mlx5_flow_handle* @mlx5_eswitch_create_vport_rx_rule(%struct.mlx5_eswitch* %22, i32 %25, %struct.mlx5_flow_destination* %26)
  store %struct.mlx5_flow_handle* %27, %struct.mlx5_flow_handle** %9, align 8
  %28 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  %29 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %32)
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %35, i32 0, i32 0
  %37 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %36, align 8
  %38 = call i32 @mlx5_del_flow_rules(%struct.mlx5_flow_handle* %37)
  %39 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  %40 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %40, i32 0, i32 0
  store %struct.mlx5_flow_handle* %39, %struct.mlx5_flow_handle** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_create_vport_rx_rule(%struct.mlx5_eswitch*, i32, %struct.mlx5_flow_destination*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @mlx5_del_flow_rules(%struct.mlx5_flow_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
