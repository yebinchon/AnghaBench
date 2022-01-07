; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_disable_egress_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_disable_egress_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Destroy vport[%d] E-Switch egress ACL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esw_vport_disable_egress_acl(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_vport*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %4, align 8
  %5 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i64 @IS_ERR_OR_NULL(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @esw_debug(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %21 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %22 = call i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch* %20, %struct.mlx5_vport* %21)
  %23 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @mlx5_destroy_flow_group(i32* %26)
  %28 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @mlx5_destroy_flow_group(i32* %31)
  %33 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @mlx5_destroy_flow_table(i32* %36)
  %38 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @esw_debug(i32, i8*, i32) #1

declare dso_local i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @mlx5_destroy_flow_group(i32*) #1

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
