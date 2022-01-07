; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_pool_mr_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_pool_mr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_icm_mr = type { i64, i64, %struct.TYPE_3__, i32, i32, %struct.mlx5dr_icm_pool* }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }
%struct.mlx5dr_icm_pool = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate SW ICM memory, err (%d)\0A\00", align 1
@MLX5_MKC_ACCESS_MODE_SW_ICM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to create SW ICM MKEY, err (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_icm_mr* (%struct.mlx5dr_icm_pool*, i32, i64)* @dr_icm_pool_mr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_icm_mr* @dr_icm_pool_mr_create(%struct.mlx5dr_icm_pool* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mlx5dr_icm_mr*, align 8
  %5 = alloca %struct.mlx5dr_icm_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5dr_icm_mr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5dr_icm_pool* %0, %struct.mlx5dr_icm_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx5dr_icm_mr* @kvzalloc(i32 56, i32 %17)
  store %struct.mlx5dr_icm_mr* %18, %struct.mlx5dr_icm_mr** %9, align 8
  %19 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %20 = icmp ne %struct.mlx5dr_icm_mr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.mlx5dr_icm_mr* null, %struct.mlx5dr_icm_mr** %4, align 8
  br label %145

22:                                               ; preds = %3
  %23 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %24 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %24, i32 0, i32 5
  store %struct.mlx5dr_icm_pool* %23, %struct.mlx5dr_icm_pool** %25, align 8
  %26 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mlx5dr_icm_pool_chunk_size_to_byte(i32 %35, i32 %38)
  %40 = mul nsw i32 %39, 2
  %41 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %45 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = call i32 @mlx5_dm_sw_icm_alloc(%struct.mlx5_core_dev* %44, i32 %48, i32 %52, i32 0, i64* %55, i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %22
  %63 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @mlx5dr_err(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %142

68:                                               ; preds = %22
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %70 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %80 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @MLX5_MKC_ACCESS_MODE_SW_ICM, align 4
  %84 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %85 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %84, i32 0, i32 4
  %86 = call i32 @dr_icm_create_dm_mkey(%struct.mlx5_core_dev* %69, i32 %74, i32 %78, i64 %82, i32 %83, i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %68
  %90 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @mlx5dr_err(%struct.TYPE_4__* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %123

95:                                               ; preds = %68
  %96 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %97 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %101 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %103 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %105, 1
  %107 = and i64 %104, %106
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %95
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %10, align 8
  %113 = sub i64 %111, %112
  %114 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %115 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %95
  %117 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %118 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %117, i32 0, i32 3
  %119 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %5, align 8
  %120 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %119, i32 0, i32 0
  %121 = call i32 @list_add_tail(i32* %118, i32* %120)
  %122 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  store %struct.mlx5dr_icm_mr* %122, %struct.mlx5dr_icm_mr** %4, align 8
  br label %145

123:                                              ; preds = %89
  %124 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %125 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %126 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %130 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %134 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %138 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @mlx5_dm_sw_icm_dealloc(%struct.mlx5_core_dev* %124, i32 %128, i32 %132, i32 0, i64 %136, i32 %140)
  br label %142

142:                                              ; preds = %123, %62
  %143 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %9, align 8
  %144 = call i32 @kvfree(%struct.mlx5dr_icm_mr* %143)
  store %struct.mlx5dr_icm_mr* null, %struct.mlx5dr_icm_mr** %4, align 8
  br label %145

145:                                              ; preds = %142, %116, %21
  %146 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %4, align 8
  ret %struct.mlx5dr_icm_mr* %146
}

declare dso_local %struct.mlx5dr_icm_mr* @kvzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx5dr_icm_pool_chunk_size_to_byte(i32, i32) #1

declare dso_local i32 @mlx5_dm_sw_icm_alloc(%struct.mlx5_core_dev*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @mlx5dr_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dr_icm_create_dm_mkey(%struct.mlx5_core_dev*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx5_dm_sw_icm_dealloc(%struct.mlx5_core_dev*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @kvfree(%struct.mlx5dr_icm_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
