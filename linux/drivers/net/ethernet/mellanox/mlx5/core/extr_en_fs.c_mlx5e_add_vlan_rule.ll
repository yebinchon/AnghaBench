; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_add_vlan_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_add_vlan_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5_flow_spec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, i32)* @mlx5e_add_vlan_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_add_vlan_rule(%struct.mlx5e_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mlx5_flow_spec* @kvzalloc(i32 4, i32 %10)
  store %struct.mlx5_flow_spec* %11, %struct.mlx5_flow_spec** %8, align 8
  %12 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %13 = icmp ne %struct.mlx5_flow_spec* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %23 = call i32 @mlx5e_vport_context_update_vlans(%struct.mlx5e_priv* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %29 = call i32 @__mlx5e_add_vlan_rule(%struct.mlx5e_priv* %25, i32 %26, i32 %27, %struct.mlx5_flow_spec* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %31 = call i32 @kvfree(%struct.mlx5_flow_spec* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5e_vport_context_update_vlans(%struct.mlx5e_priv*) #1

declare dso_local i32 @__mlx5e_add_vlan_rule(%struct.mlx5e_priv*, i32, i32, %struct.mlx5_flow_spec*) #1

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
