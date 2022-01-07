; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_phys_to_slaves_pport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_phys_to_slaves_pport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_slaves_pport = type { i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_slaves_pport, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %11 = call i32 @bitmap_zero(i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  br label %53

22:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp ult i32 %24, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %23
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %33, i32 %34)
  %36 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @test_bit(i32 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_bit(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %23

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52, %21
  %54 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
