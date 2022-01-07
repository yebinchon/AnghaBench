; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_alloc_hwq_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_alloc_hwq_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_hwq_resources = type { %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_alloc_hwq_res(%struct.mlx4_dev* %0, %struct.mlx4_hwq_resources* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_hwq_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_hwq_resources* %1, %struct.mlx4_hwq_resources** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %10 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %11 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %10, i32 0, i32 0
  %12 = call i32 @mlx4_db_alloc(%struct.mlx4_dev* %9, %struct.TYPE_6__* %11, i32 1)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %24, i32 0, i32 1
  %26 = call i32 @mlx4_buf_direct_alloc(%struct.mlx4_dev* %22, i32 %23, %struct.TYPE_7__* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %68

30:                                               ; preds = %17
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %32 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %40, i32 0, i32 2
  %42 = call i32 @mlx4_mtt_init(%struct.mlx4_dev* %31, i32 %35, i32 %39, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %62

46:                                               ; preds = %30
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %48 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %48, i32 0, i32 2
  %50 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %50, i32 0, i32 1
  %52 = call i32 @mlx4_buf_write_mtt(%struct.mlx4_dev* %47, i32* %49, %struct.TYPE_7__* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %74

57:                                               ; preds = %55
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %59 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %59, i32 0, i32 2
  %61 = call i32 @mlx4_mtt_cleanup(%struct.mlx4_dev* %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %45
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %65, i32 0, i32 1
  %67 = call i32 @mlx4_buf_free(%struct.mlx4_dev* %63, i32 %64, %struct.TYPE_7__* %66)
  br label %68

68:                                               ; preds = %62, %29
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %70 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %70, i32 0, i32 0
  %72 = call i32 @mlx4_db_free(%struct.mlx4_dev* %69, %struct.TYPE_6__* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %56, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @mlx4_db_alloc(%struct.mlx4_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx4_buf_direct_alloc(%struct.mlx4_dev*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.mlx4_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_buf_write_mtt(%struct.mlx4_dev*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_buf_free(%struct.mlx4_dev*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_db_free(%struct.mlx4_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
