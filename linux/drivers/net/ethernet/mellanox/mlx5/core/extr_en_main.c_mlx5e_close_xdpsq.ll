; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_xdpsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_xdpsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32, i32, %struct.mlx5e_channel* }
%struct.mlx5e_channel = type { i32, i32 }

@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_close_xdpsq(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca %struct.mlx5e_xdpsq*, align 8
  %3 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %2, align 8
  %4 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %4, i32 0, i32 2
  %6 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  store %struct.mlx5e_channel* %6, %struct.mlx5e_channel** %3, align 8
  %7 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %8 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %11, i32 0, i32 1
  %13 = call i32 @napi_synchronize(i32* %12)
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mlx5e_destroy_sq(i32 %16, i32 %19)
  %21 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %22 = call i32 @mlx5e_free_xdpsq_descs(%struct.mlx5e_xdpsq* %21)
  %23 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %24 = call i32 @mlx5e_free_xdpsq(%struct.mlx5e_xdpsq* %23)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @mlx5e_destroy_sq(i32, i32) #1

declare dso_local i32 @mlx5e_free_xdpsq_descs(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_free_xdpsq(%struct.mlx5e_xdpsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
