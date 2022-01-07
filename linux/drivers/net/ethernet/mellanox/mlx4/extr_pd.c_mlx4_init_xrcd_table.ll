; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_pd.c_mlx4_init_xrcd_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_pd.c_mlx4_init_xrcd_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_xrcd_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %4 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %5 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %4)
  store %struct.mlx4_priv* %5, %struct.mlx4_priv** %3, align 8
  %6 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %6, i32 0, i32 0
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @mlx4_bitmap_init(i32* %7, i32 65536, i32 65535, i64 %12, i32 0)
  ret i32 %13
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_bitmap_init(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
