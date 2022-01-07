; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_alloc_db_from_pgdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_alloc_db_from_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_db_pgdir = type { i64, i64*, i32 }
%struct.mlx5_db = type { i32, i64*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_db_pgdir* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_db_pgdir*, %struct.mlx5_db*)* @mlx5_alloc_db_from_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_alloc_db_from_pgdir(%struct.mlx5_db_pgdir* %0, %struct.mlx5_db* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_db_pgdir*, align 8
  %5 = alloca %struct.mlx5_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_db_pgdir* %0, %struct.mlx5_db_pgdir** %4, align 8
  store %struct.mlx5_db* %1, %struct.mlx5_db** %5, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i32 (...) @cache_line_size()
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @find_first_bit(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @__clear_bit(i32 %24, i32 %27)
  %29 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %30 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.mlx5_db_pgdir* %29, %struct.mlx5_db_pgdir** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (...) @cache_line_size()
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 8
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %48, i32 0, i32 1
  store i64* %47, i64** %49, align 8
  %50 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 0, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %23, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
