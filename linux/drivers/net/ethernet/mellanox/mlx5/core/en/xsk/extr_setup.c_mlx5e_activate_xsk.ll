; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_activate_xsk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_activate_xsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX5E_RQ_STATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_activate_xsk(%struct.mlx5e_channel* %0) #0 {
  %2 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %2, align 8
  %3 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %3, i32 0, i32 1
  %5 = call i32 @mlx5e_activate_icosq(i32* %4)
  %6 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %7 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @set_bit(i32 %6, i32* %9)
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 1
  %16 = call i32 @mlx5e_trigger_irq(i32* %15)
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mlx5e_activate_icosq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx5e_trigger_irq(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
