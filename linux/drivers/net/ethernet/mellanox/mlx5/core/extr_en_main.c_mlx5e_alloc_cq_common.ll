; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_cq_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_cq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_cq_param = type { i32, i32, i32 }
%struct.mlx5e_cq = type { %struct.mlx5_core_dev*, i32, %struct.TYPE_4__, %struct.mlx5_core_cq }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.mlx5_core_cq = type { i32, i32, i32, i32, i32, i64*, i64* }
%struct.mlx5_cqe64 = type { i32 }

@mlx5e_completion_event = common dso_local global i32 0, align 4
@mlx5e_cq_error_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_cq_param*, %struct.mlx5e_cq*)* @mlx5e_alloc_cq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_cq_common(%struct.mlx5_core_dev* %0, %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_cq_param*, align 8
  %7 = alloca %struct.mlx5e_cq*, align 8
  %8 = alloca %struct.mlx5_core_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %6, align 8
  store %struct.mlx5e_cq* %2, %struct.mlx5e_cq** %7, align 8
  %14 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %14, i32 0, i32 3
  store %struct.mlx5_core_cq* %15, %struct.mlx5_core_cq** %8, align 8
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %17 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlx5_vector2eqn(%struct.mlx5_core_dev* %16, i32 %19, i32* %9, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %99

25:                                               ; preds = %3
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %27 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %27, i32 0, i32 2
  %29 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %32, i32 0, i32 1
  %34 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %34, i32 0, i32 2
  %36 = call i32 @mlx5_cqwq_create(%struct.mlx5_core_dev* %26, i32* %28, i32 %31, i32* %33, %struct.TYPE_4__* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %99

41:                                               ; preds = %25
  %42 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %42, i32 0, i32 0
  store i32 64, i32* %43, align 8
  %44 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %50 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %49, i32 0, i32 6
  store i64* %48, i64** %50, align 8
  %51 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %52 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %57, i32 0, i32 5
  store i64* %56, i64** %58, align 8
  %59 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %59, i32 0, i32 6
  %61 = load i64*, i64** %60, align 8
  store i64 0, i64* %61, align 8
  %62 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %62, i32 0, i32 5
  %64 = load i64*, i64** %63, align 8
  store i64 0, i64* %64, align 8
  %65 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %69 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @mlx5e_completion_event, align 4
  %71 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %72 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @mlx5e_cq_error_event, align 4
  %74 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %75 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i64 0, i64* %12, align 8
  br label %79

79:                                               ; preds = %92, %41
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %81, i32 0, i32 1
  %83 = call i64 @mlx5_cqwq_get_size(i32* %82)
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %87 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %86, i32 0, i32 1
  %88 = load i64, i64* %12, align 8
  %89 = call %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(i32* %87, i64 %88)
  store %struct.mlx5_cqe64* %89, %struct.mlx5_cqe64** %13, align 8
  %90 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %13, align 8
  %91 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %90, i32 0, i32 0
  store i32 241, i32* %91, align 4
  br label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %79

95:                                               ; preds = %79
  %96 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %97 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %7, align 8
  %98 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %97, i32 0, i32 0
  store %struct.mlx5_core_dev* %96, %struct.mlx5_core_dev** %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %39, %23
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @mlx5_vector2eqn(%struct.mlx5_core_dev*, i32, i32*, i32*) #1

declare dso_local i32 @mlx5_cqwq_create(%struct.mlx5_core_dev*, i32*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @mlx5_cqwq_get_size(i32*) #1

declare dso_local %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
