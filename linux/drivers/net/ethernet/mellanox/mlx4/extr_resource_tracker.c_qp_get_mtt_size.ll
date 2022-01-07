; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_get_mtt_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_get_mtt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_qp_context = type { i32, i32, i32, i32, i32, i32 }

@MLX4_QP_ST_XRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_qp_context*)* @qp_get_mtt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_get_mtt_size(%struct.mlx4_qp_context* %0) #0 {
  %2 = alloca %struct.mlx4_qp_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_qp_context* %0, %struct.mlx4_qp_context** %2, align 8
  %18 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %19 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 63
  %22 = add nsw i32 %21, 12
  store i32 %22, i32* %3, align 4
  %23 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 15
  store i32 %27, i32* %4, align 4
  %28 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %29 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 3
  %36 = and i32 %35, 15
  store i32 %36, i32* %6, align 4
  %37 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %38 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 7
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %42 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = ashr i32 %44, 24
  %46 = and i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %48 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = ashr i32 %50, 13
  %52 = and i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %54 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @MLX4_QP_ST_XRC, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  store i32 %64, i32* %11, align 4
  %65 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %66 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = ashr i32 %68, 6
  %70 = and i32 %69, 63
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %73, 4
  %75 = shl i32 1, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %1
  br label %89

83:                                               ; preds = %1
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 4
  %88 = shl i32 1, %87
  br label %89

89:                                               ; preds = %83, %82
  %90 = phi i32 [ 0, %82 ], [ %88, %83 ]
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = shl i32 %95, 6
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %3, align 4
  %99 = ashr i32 %97, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %89
  br label %106

103:                                              ; preds = %89
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @roundup_pow_of_two(i32 %104)
  br label %106

106:                                              ; preds = %103, %102
  %107 = phi i32 [ 1, %102 ], [ %105, %103 ]
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  ret i32 %108
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
