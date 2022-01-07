; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_create_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_create_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hairpin = type { i32, i32*, i32, i32*, i32 }
%struct.mlx5_hairpin_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_hairpin*, %struct.mlx5_hairpin_params*)* @mlx5_hairpin_create_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_hairpin_create_queues(%struct.mlx5_hairpin* %0, %struct.mlx5_hairpin_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_hairpin*, align 8
  %5 = alloca %struct.mlx5_hairpin_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_hairpin* %0, %struct.mlx5_hairpin** %4, align 8
  store %struct.mlx5_hairpin_params* %1, %struct.mlx5_hairpin_params** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %31, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %5, align 8
  %20 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @mlx5_hairpin_create_rq(i32 %18, %struct.mlx5_hairpin_params* %19, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %85

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %9

34:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %5, align 8
  %46 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @mlx5_hairpin_create_sq(i32 %44, %struct.mlx5_hairpin_params* %45, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %61

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %35

60:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %107

61:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mlx5_core_destroy_sq(i32 %69, i32 %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %83 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %29
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %102, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mlx5_core_destroy_rq(i32 %93, i32 %100)
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %86

105:                                              ; preds = %86
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %60
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @mlx5_hairpin_create_rq(i32, %struct.mlx5_hairpin_params*, i32*) #1

declare dso_local i32 @mlx5_hairpin_create_sq(i32, %struct.mlx5_hairpin_params*, i32*) #1

declare dso_local i32 @mlx5_core_destroy_sq(i32, i32) #1

declare dso_local i32 @mlx5_core_destroy_rq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
