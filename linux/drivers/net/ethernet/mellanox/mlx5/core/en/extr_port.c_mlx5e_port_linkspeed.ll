; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5e_port_linkspeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5e_port_linkspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_port_eth_proto = type { i32, i32 }

@ptys_extended_ethernet = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_port_linkspeed(%struct.mlx5_core_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mlx5e_port_eth_proto, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = load i32, i32* @ptys_extended_ethernet, align 4
  %11 = call i32 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @mlx5_port_query_eth_proto(%struct.mlx5_core_dev* %12, i32 1, i32 %13, %struct.mlx5e_port_eth_proto* %5)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %46

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mlx5e_port_eth_proto, %struct.mlx5e_port_eth_proto* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %27 = call i32 @mlx5_port_query_eth_proto(%struct.mlx5_core_dev* %26, i32 1, i32 0, %struct.mlx5e_port_eth_proto* %5)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %46

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %21, %18
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_port_eth_proto, %struct.mlx5e_port_eth_proto* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mlx5e_port_ptys2speed(%struct.mlx5_core_dev* %33, i32 %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %32
  br label %46

46:                                               ; preds = %45, %30, %17
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_port_query_eth_proto(%struct.mlx5_core_dev*, i32, i32, %struct.mlx5e_port_eth_proto*) #1

declare dso_local i32 @mlx5e_port_ptys2speed(%struct.mlx5_core_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
