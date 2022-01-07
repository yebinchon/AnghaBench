; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_srq.c___mlx4_srq_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_srq.c___mlx4_srq_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_srq_table = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_srq_table }

@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NO_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_srq_alloc_icm(%struct.mlx4_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx4_srq_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %9 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mlx4_srq_table* %10, %struct.mlx4_srq_table** %6, align 8
  %11 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %11, i32 0, i32 0
  %13 = call i32 @mlx4_bitmap_alloc(i32* %12)
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %23, i32 0, i32 1
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mlx4_table_get(%struct.mlx4_dev* %22, i32* %24, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %49

31:                                               ; preds = %21
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %33 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %33, i32 0, i32 2
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx4_table_get(%struct.mlx4_dev* %32, i32* %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %57

42:                                               ; preds = %40
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %44 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %44, i32 0, i32 1
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx4_table_put(%struct.mlx4_dev* %43, i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %42, %30
  %50 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %50, i32 0, i32 0
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLX4_NO_RR, align 4
  %55 = call i32 @mlx4_bitmap_free(i32* %51, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %41, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

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
