; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_set_all_slave_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_set_all_slave_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_slaves_pport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32, i32)* @set_all_slave_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_all_slave_state(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_slaves_pport, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %10, i32 %11)
  %13 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %36, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_bit(i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @set_and_calc_slave_port_state(%struct.mlx4_dev* %30, i32 %31, i32 %32, i32 %33, i32* %8)
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %14

39:                                               ; preds = %14
  ret void
}

declare dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_and_calc_slave_port_state(%struct.mlx4_dev*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
