; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_geneve.c_mlx5_geneve_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_geneve.c_mlx5_geneve_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_geneve = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_geneve_destroy(%struct.mlx5_geneve* %0) #0 {
  %2 = alloca %struct.mlx5_geneve*, align 8
  store %struct.mlx5_geneve* %0, %struct.mlx5_geneve** %2, align 8
  %3 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_geneve* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mlx5_geneve_tlv_option_destroy(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %7
  %21 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %2, align 8
  %22 = call i32 @kfree(%struct.mlx5_geneve* %21)
  br label %23

23:                                               ; preds = %20, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_geneve*) #1

declare dso_local i32 @mlx5_geneve_tlv_option_destroy(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_geneve*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
