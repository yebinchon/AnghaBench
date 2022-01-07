; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.TYPE_5__**, %struct.mlx4_en_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_test_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_test_interrupts(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 2
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @mlx4_test_async(%struct.TYPE_6__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i64 @mlx4_is_slave(%struct.TYPE_6__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlx4_test_interrupt(%struct.TYPE_6__* %40, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %58

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %31

58:                                               ; preds = %53, %31
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %28
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @mlx4_test_async(%struct.TYPE_6__*) #1

declare dso_local i64 @mlx4_is_slave(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_test_interrupt(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
