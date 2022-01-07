; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_phys_to_slaves_pport_actv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_phys_to_slaves_pport_actv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_active_ports = type { i32 }
%struct.mlx4_slaves_pport = type { i32 }

@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_phys_to_slaves_pport_actv(%struct.mlx4_dev* %0, %struct.mlx4_active_ports* %1) #0 {
  %3 = alloca %struct.mlx4_slaves_pport, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_active_ports*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_active_ports* %1, %struct.mlx4_active_ports** %5, align 8
  %8 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %11 = call i32 @bitmap_zero(i32 %9, i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp ult i32 %13, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %12
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %22, i32 %23)
  %25 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.mlx4_active_ports*, %struct.mlx4_active_ports** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @bitmap_equal(i32 %28, i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_bit(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %12

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @bitmap_equal(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
