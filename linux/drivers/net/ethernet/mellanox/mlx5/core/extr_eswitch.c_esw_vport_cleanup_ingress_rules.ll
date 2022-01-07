; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_cleanup_ingress_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_cleanup_ingress_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_vport*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %4, align 8
  %5 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @IS_ERR_OR_NULL(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @mlx5_del_flow_rules(i32* %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @IS_ERR_OR_NULL(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mlx5_del_flow_rules(i32* %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %38 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %39 = call i32 @esw_vport_del_ingress_acl_modify_metadata(%struct.mlx5_eswitch* %37, %struct.mlx5_vport* %38)
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @mlx5_del_flow_rules(i32*) #1

declare dso_local i32 @esw_vport_del_ingress_acl_modify_metadata(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
