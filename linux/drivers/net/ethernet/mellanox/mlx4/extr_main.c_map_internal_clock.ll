; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_map_internal_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_map_internal_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@MLX4_CLOCK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @map_internal_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_internal_clock(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %4, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @pci_resource_start(i32 %11, i32 %15)
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %16, %20
  %22 = load i32, i32* @MLX4_CLOCK_SIZE, align 4
  %23 = call i32 @ioremap(i64 %21, i32 %22)
  %24 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
