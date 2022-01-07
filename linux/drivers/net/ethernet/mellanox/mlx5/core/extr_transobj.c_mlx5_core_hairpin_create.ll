; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_core_hairpin_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_core_hairpin_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hairpin = type { i32, i8*, i8*, %struct.mlx5_core_dev*, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_hairpin_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_hairpin* @mlx5_core_hairpin_create(%struct.mlx5_core_dev* %0, %struct.mlx5_core_dev* %1, %struct.mlx5_hairpin_params* %2) #0 {
  %4 = alloca %struct.mlx5_hairpin*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_hairpin_params*, align 8
  %8 = alloca %struct.mlx5_hairpin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_hairpin_params* %2, %struct.mlx5_hairpin_params** %7, align 8
  %11 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %7, align 8
  %12 = getelementptr inbounds %struct.mlx5_hairpin_params, %struct.mlx5_hairpin_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 40, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mlx5_hairpin* @kzalloc(i32 %19, i32 %20)
  store %struct.mlx5_hairpin* %21, %struct.mlx5_hairpin** %8, align 8
  %22 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %23 = icmp ne %struct.mlx5_hairpin* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.mlx5_hairpin* @ERR_PTR(i32 %26)
  store %struct.mlx5_hairpin* %27, %struct.mlx5_hairpin** %4, align 8
  br label %77

28:                                               ; preds = %3
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %30 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %30, i32 0, i32 4
  store %struct.mlx5_core_dev* %29, %struct.mlx5_core_dev** %31, align 8
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %33, i32 0, i32 3
  store %struct.mlx5_core_dev* %32, %struct.mlx5_core_dev** %34, align 8
  %35 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_hairpin_params, %struct.mlx5_hairpin_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %41 = bitcast %struct.mlx5_hairpin* %40 to i8*
  %42 = getelementptr i8, i8* %41, i64 40
  %43 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %46 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_hairpin_params, %struct.mlx5_hairpin_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %47, i64 %51
  %53 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %56 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %7, align 8
  %57 = call i32 @mlx5_hairpin_create_queues(%struct.mlx5_hairpin* %55, %struct.mlx5_hairpin_params* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %28
  br label %72

61:                                               ; preds = %28
  %62 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %63 = call i32 @mlx5_hairpin_pair_queues(%struct.mlx5_hairpin* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %69

67:                                               ; preds = %61
  %68 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  store %struct.mlx5_hairpin* %68, %struct.mlx5_hairpin** %4, align 8
  br label %77

69:                                               ; preds = %66
  %70 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %71 = call i32 @mlx5_hairpin_destroy_queues(%struct.mlx5_hairpin* %70)
  br label %72

72:                                               ; preds = %69, %60
  %73 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %8, align 8
  %74 = call i32 @kfree(%struct.mlx5_hairpin* %73)
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.mlx5_hairpin* @ERR_PTR(i32 %75)
  store %struct.mlx5_hairpin* %76, %struct.mlx5_hairpin** %4, align 8
  br label %77

77:                                               ; preds = %72, %67, %24
  %78 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  ret %struct.mlx5_hairpin* %78
}

declare dso_local %struct.mlx5_hairpin* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_hairpin* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_hairpin_create_queues(%struct.mlx5_hairpin*, %struct.mlx5_hairpin_params*) #1

declare dso_local i32 @mlx5_hairpin_pair_queues(%struct.mlx5_hairpin*) #1

declare dso_local i32 @mlx5_hairpin_destroy_queues(%struct.mlx5_hairpin*) #1

declare dso_local i32 @kfree(%struct.mlx5_hairpin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
