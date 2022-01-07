; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_trust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_set_vport_trust(%struct.mlx5_eswitch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_vport*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch* %9, i32 %10)
  store %struct.mlx5_vport* %11, %struct.mlx5_vport** %8, align 8
  %12 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %13 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %20 = call i64 @IS_ERR(%struct.mlx5_vport* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.mlx5_vport* %23)
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %39 = call i32 @esw_vport_change_handle_locked(%struct.mlx5_vport* %38)
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %22, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @esw_vport_change_handle_locked(%struct.mlx5_vport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
