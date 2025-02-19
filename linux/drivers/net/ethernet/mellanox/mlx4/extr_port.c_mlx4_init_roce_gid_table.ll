; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_init_roce_gid_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_init_roce_gid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_roce_gid_table = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MLX4_ROCE_MAX_GIDS = common dso_local global i32 0, align 4
@MLX4_ROCE_GID_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_init_roce_gid_table(%struct.mlx4_dev* %0, %struct.mlx4_roce_gid_table* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_roce_gid_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_roce_gid_table* %1, %struct.mlx4_roce_gid_table** %4, align 8
  %6 = load %struct.mlx4_roce_gid_table*, %struct.mlx4_roce_gid_table** %4, align 8
  %7 = getelementptr inbounds %struct.mlx4_roce_gid_table, %struct.mlx4_roce_gid_table* %6, i32 0, i32 1
  %8 = call i32 @mutex_init(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.mlx4_roce_gid_table*, %struct.mlx4_roce_gid_table** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_roce_gid_table, %struct.mlx4_roce_gid_table* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX4_ROCE_GID_ENTRY_SIZE, align 4
  %23 = call i32 @memset(i32 %21, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
