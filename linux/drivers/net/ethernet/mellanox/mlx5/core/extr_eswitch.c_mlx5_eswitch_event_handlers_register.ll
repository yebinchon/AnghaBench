; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_event_handlers_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_event_handlers_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@eswitch_vport_event = common dso_local global i32 0, align 4
@NIC_VPORT_CHANGE = common dso_local global i32 0, align 4
@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@mlx5_esw_funcs_changed_handler = common dso_local global i32 0, align 4
@ESW_FUNCTIONS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*)* @mlx5_eswitch_event_handlers_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_eswitch_event_handlers_register(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %2, align 8
  %3 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %3, i32 0, i32 3
  %5 = load i32, i32* @eswitch_vport_event, align 4
  %6 = load i32, i32* @NIC_VPORT_CHANGE, align 4
  %7 = call i32 @MLX5_NB_INIT(i32* %4, i32 %5, i32 %6)
  %8 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %11, i32 0, i32 3
  %13 = call i32 @mlx5_eq_notifier_register(i32 %10, i32* %12)
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MLX5_ESWITCH_OFFLOADS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mlx5_eswitch_is_funcs_handler(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @mlx5_esw_funcs_changed_handler, align 4
  %30 = load i32, i32* @ESW_FUNCTIONS_CHANGED, align 4
  %31 = call i32 @MLX5_NB_INIT(i32* %28, i32 %29, i32 %30)
  %32 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @mlx5_eq_notifier_register(i32 %34, i32* %37)
  br label %39

39:                                               ; preds = %25, %19, %1
  ret void
}

declare dso_local i32 @MLX5_NB_INIT(i32*, i32, i32) #1

declare dso_local i32 @mlx5_eq_notifier_register(i32, i32*) #1

declare dso_local i64 @mlx5_eswitch_is_funcs_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
