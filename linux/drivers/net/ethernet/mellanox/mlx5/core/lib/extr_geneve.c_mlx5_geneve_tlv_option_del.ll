; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_geneve.c_mlx5_geneve_tlv_option_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_geneve.c_mlx5_geneve_tlv_option_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_geneve = type { i64, i32, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_geneve_tlv_option_del(%struct.mlx5_geneve* %0) #0 {
  %2 = alloca %struct.mlx5_geneve*, align 8
  store %struct.mlx5_geneve* %0, %struct.mlx5_geneve** %2, align 8
  %3 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_geneve* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %7
  %17 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mlx5_geneve_tlv_option_destroy(i32 %19, i64 %22)
  %24 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %16, %7
  %31 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_geneve*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_geneve_tlv_option_destroy(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
