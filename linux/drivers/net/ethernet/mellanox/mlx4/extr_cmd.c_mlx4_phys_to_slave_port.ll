; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_phys_to_slave_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_phys_to_slave_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_active_ports = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_phys_to_slave_port(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %9, i32 %10)
  %12 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @test_bit(i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @find_first_bit(i32 %22, i32 %26)
  %28 = sub nsw i32 %20, %27
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
