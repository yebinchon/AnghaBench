; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_cleanup_mr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_cleanup_mr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_priv = type { i64, %struct.mlx4_mr_table }
%struct.mlx4_mr_table = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cleanup_mr_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca %struct.mlx4_mr_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %3, align 8
  %7 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %7, i32 0, i32 1
  store %struct.mlx4_mr_table* %8, %struct.mlx4_mr_table** %4, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %10 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @fls(i64 %27)
  %29 = call i32 @mlx4_free_mtt_range(%struct.mlx4_dev* %19, i64 %22, i32 %28)
  br label %30

30:                                               ; preds = %18, %13
  %31 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %31, i32 0, i32 1
  %33 = call i32 @mlx4_buddy_cleanup(i32* %32)
  %34 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %34, i32 0, i32 0
  %36 = call i32 @mlx4_bitmap_cleanup(i32* %35)
  br label %37

37:                                               ; preds = %30, %12
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_mtt_range(%struct.mlx4_dev*, i64, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @mlx4_buddy_cleanup(i32*) #1

declare dso_local i32 @mlx4_bitmap_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
