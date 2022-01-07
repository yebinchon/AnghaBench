; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c___mlx4_cq_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c___mlx4_cq_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_cq_table }
%struct.mlx4_cq_table = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NO_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_cq_alloc_icm(%struct.mlx4_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx4_priv*, align 8
  %7 = alloca %struct.mlx4_cq_table*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %6, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  store %struct.mlx4_cq_table* %12, %struct.mlx4_cq_table** %7, align 8
  %13 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %13, i32 0, i32 0
  %15 = call i32 @mlx4_bitmap_alloc(i32* %14)
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %2
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %25 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %25, i32 0, i32 1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx4_table_get(%struct.mlx4_dev* %24, i32* %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %51

33:                                               ; preds = %23
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %35 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %35, i32 0, i32 2
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlx4_table_get(%struct.mlx4_dev* %34, i32* %36, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %59

44:                                               ; preds = %42
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %46 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %46, i32 0, i32 1
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlx4_table_put(%struct.mlx4_dev* %45, i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %44, %32
  %52 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %52, i32 0, i32 0
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MLX4_NO_RR, align 4
  %57 = call i32 @mlx4_bitmap_free(i32* %53, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %43, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_bitmap_alloc(i32*) #1

declare dso_local i32 @mlx4_table_get(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_table_put(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_bitmap_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
