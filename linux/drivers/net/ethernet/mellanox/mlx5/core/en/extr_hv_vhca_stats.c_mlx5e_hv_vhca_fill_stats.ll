; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i8*, i32)* @mlx5e_hv_vhca_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hv_vhca_fill_stats(%struct.mlx5e_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %17, i64 %19
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr i8, i8* %21, i64 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  %27 = icmp ugt i8* %22, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %44

32:                                               ; preds = %16
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @mlx5e_hv_vhca_fill_ring_stats(%struct.mlx5e_priv* %33, i32 %34, i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %10

44:                                               ; preds = %31, %10
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mlx5e_hv_vhca_fill_ring_stats(%struct.mlx5e_priv*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
