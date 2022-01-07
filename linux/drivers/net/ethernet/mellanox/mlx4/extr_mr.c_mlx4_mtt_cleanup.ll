; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_mtt_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_mtt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_mtt_cleanup(%struct.mlx4_dev* %0, %struct.mlx4_mtt* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_mtt*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_mtt* %1, %struct.mlx4_mtt** %4, align 8
  %5 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %4, align 8
  %6 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mlx4_free_mtt_range(%struct.mlx4_dev* %11, i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mlx4_free_mtt_range(%struct.mlx4_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
