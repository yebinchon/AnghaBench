; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_init_port_tun_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_init_port_tun_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tun_entropy = type { i32, i64, i64, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_port_tun_entropy_flags = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_init_port_tun_entropy(%struct.mlx5_tun_entropy* %0, %struct.mlx5_core_dev* %1) #0 {
  %3 = alloca %struct.mlx5_tun_entropy*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_port_tun_entropy_flags, align 8
  store %struct.mlx5_tun_entropy* %0, %struct.mlx5_tun_entropy** %3, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %4, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %7 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %7, i32 0, i32 4
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %8, align 8
  %9 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %9, i32 0, i32 3
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = call i32 @mlx5_query_port_tun_entropy(%struct.mlx5_core_dev* %12, %struct.mlx5_port_tun_entropy_flags* %5)
  %14 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %5, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  %27 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlx5_query_port_tun_entropy(%struct.mlx5_core_dev*, %struct.mlx5_port_tun_entropy_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
