; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_cleanup_icm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_cleanup_icm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32, i64*, i32, i64 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@MLX4_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cleanup_icm_table(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_icm_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %48, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %6
  %13 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %12
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %23 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %32 = load i32, i32* @MLX4_ICM_PAGE_SIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = call i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev* %22, i64 %30, i32 %33)
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %36 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %35, i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %21, %12
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6

51:                                               ; preds = %6
  %52 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 @kvfree(i64* %54)
  ret void
}

declare dso_local i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev*, i64, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i64, i32) #1

declare dso_local i32 @kvfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
