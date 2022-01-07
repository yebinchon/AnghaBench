; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_close_xsk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_close_xsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MLX5E_CHANNEL_STATE_XSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_close_xsk(%struct.mlx5e_channel* %0) #0 {
  %2 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %2, align 8
  %3 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %4 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @clear_bit(i32 %3, i32 %6)
  %8 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %8, i32 0, i32 3
  %10 = call i32 @napi_synchronize(i32* %9)
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %11, i32 0, i32 2
  %13 = call i32 @mlx5e_close_rq(%struct.TYPE_5__* %12)
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @mlx5e_close_cq(i32* %16)
  %18 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %18, i32 0, i32 1
  %20 = call i32 @mlx5e_close_icosq(%struct.TYPE_6__* %19)
  %21 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @mlx5e_close_cq(i32* %23)
  %25 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %25, i32 0, i32 0
  %27 = call i32 @mlx5e_close_xdpsq(%struct.TYPE_4__* %26)
  %28 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @mlx5e_close_cq(i32* %30)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @mlx5e_close_rq(%struct.TYPE_5__*) #1

declare dso_local i32 @mlx5e_close_cq(i32*) #1

declare dso_local i32 @mlx5e_close_icosq(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5e_close_xdpsq(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
