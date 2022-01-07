; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_uar.c_mlx5_free_bfreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_uar.c_mlx5_free_bfreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_bfreg_data }
%struct.mlx5_bfreg_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { i32 }
%struct.list_head = type { i32 }
%struct.TYPE_5__ = type { %struct.mutex, %struct.list_head }
%struct.mlx5_sq_bfreg = type { %struct.mlx5_uars_page*, i64 }
%struct.mlx5_uars_page = type { i32, i64*, i32, i64*, i32, i32 }

@MLX5_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@MLX5_NON_FP_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@up_rel_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_free_bfreg(%struct.mlx5_core_dev* %0, %struct.mlx5_sq_bfreg* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_sq_bfreg*, align 8
  %5 = alloca %struct.mlx5_bfreg_data*, align 8
  %6 = alloca %struct.mlx5_uars_page*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.list_head*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_sq_bfreg* %1, %struct.mlx5_sq_bfreg** %4, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.mlx5_bfreg_data* %15, %struct.mlx5_bfreg_data** %5, align 8
  %16 = load %struct.mlx5_sq_bfreg*, %struct.mlx5_sq_bfreg** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.mlx5_bfreg_data*, %struct.mlx5_bfreg_data** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_bfreg_data, %struct.mlx5_bfreg_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %struct.list_head* %23, %struct.list_head** %12, align 8
  %24 = load %struct.mlx5_bfreg_data*, %struct.mlx5_bfreg_data** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_bfreg_data, %struct.mlx5_bfreg_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.mutex* %26, %struct.mutex** %7, align 8
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.mlx5_bfreg_data*, %struct.mlx5_bfreg_data** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_bfreg_data, %struct.mlx5_bfreg_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.list_head* %30, %struct.list_head** %12, align 8
  %31 = load %struct.mlx5_bfreg_data*, %struct.mlx5_bfreg_data** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_bfreg_data, %struct.mlx5_bfreg_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store %struct.mutex* %33, %struct.mutex** %7, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.mlx5_sq_bfreg*, %struct.mlx5_sq_bfreg** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg* %35, i32 0, i32 0
  %37 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %36, align 8
  store %struct.mlx5_uars_page* %37, %struct.mlx5_uars_page** %6, align 8
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %40 = load %struct.mlx5_sq_bfreg*, %struct.mlx5_sq_bfreg** %4, align 8
  %41 = call i32 @addr_to_dbi_in_syspage(%struct.mlx5_core_dev* %38, %struct.mlx5_uars_page* %39, %struct.mlx5_sq_bfreg* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MLX5_BFREGS_PER_UAR, align 4
  %44 = urem i32 %42, %43
  %45 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %46 = icmp uge i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %51, i32 0, i32 0
  store i32* %52, i32** %10, align 8
  %53 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  store i64* %55, i64** %11, align 8
  br label %62

56:                                               ; preds = %34
  %57 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %57, i32 0, i32 2
  store i32* %58, i32** %10, align 8
  %59 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  store i64* %61, i64** %11, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.mutex*, %struct.mutex** %7, align 8
  %64 = call i32 @mutex_lock(%struct.mutex* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i64*, i64** %11, align 8
  %70 = call i32 @set_bit(i32 %68, i64* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %76 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %75, i32 0, i32 5
  %77 = load %struct.list_head*, %struct.list_head** %12, align 8
  %78 = call i32 @list_add_tail(i32* %76, %struct.list_head* %77)
  br label %79

79:                                               ; preds = %74, %62
  %80 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %81 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %80, i32 0, i32 4
  %82 = load i32, i32* @up_rel_func, align 4
  %83 = call i32 @kref_put(i32* %81, i32 %82)
  %84 = load %struct.mutex*, %struct.mutex** %7, align 8
  %85 = call i32 @mutex_unlock(%struct.mutex* %84)
  ret void
}

declare dso_local i32 @addr_to_dbi_in_syspage(%struct.mlx5_core_dev*, %struct.mlx5_uars_page*, %struct.mlx5_sq_bfreg*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
