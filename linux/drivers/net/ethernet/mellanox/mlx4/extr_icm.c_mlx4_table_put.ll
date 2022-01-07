; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_table_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_table_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32, i32, i32, %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@MLX4_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_table_put(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_icm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %9, %13
  %15 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %16 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  %20 = sdiv i32 %14, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %47 = load i32, i32* @MLX4_ICM_PAGE_SIZE, align 4
  %48 = sdiv i32 %46, %47
  %49 = call i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev* %39, i64 %45, i32 %48)
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %51 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %59 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %50, %struct.TYPE_2__* %57, i32 %60)
  %62 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %67, align 8
  br label %68

68:                                               ; preds = %35, %3
  %69 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %5, align 8
  %70 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev*, i64, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
