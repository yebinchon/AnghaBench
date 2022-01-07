; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_event_handlers_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_event_handlers_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*)* @mlx5_eswitch_event_handlers_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_eswitch_event_handlers_unregister(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %2, align 8
  %3 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MLX5_ESWITCH_OFFLOADS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @mlx5_eswitch_is_funcs_handler(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mlx5_eq_notifier_unregister(i32 %17, i32* %20)
  br label %22

22:                                               ; preds = %14, %8, %1
  %23 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %26, i32 0, i32 2
  %28 = call i32 @mlx5_eq_notifier_unregister(i32 %25, i32* %27)
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @flush_workqueue(i32 %31)
  ret void
}

declare dso_local i64 @mlx5_eswitch_is_funcs_handler(i32) #1

declare dso_local i32 @mlx5_eq_notifier_unregister(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
