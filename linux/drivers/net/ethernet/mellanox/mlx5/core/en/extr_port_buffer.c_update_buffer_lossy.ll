; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port_buffer.c_update_buffer_lossy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port_buffer.c_update_buffer_lossy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_port_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5E_MAX_BUFFER = common dso_local global i32 0, align 4
@MLX5E_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, %struct.mlx5e_port_buffer*, i32*)* @update_buffer_lossy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_buffer_lossy(i32 %0, i32 %1, i32* %2, i32 %3, %struct.mlx5e_port_buffer* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_port_buffer*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.mlx5e_port_buffer* %4, %struct.mlx5e_port_buffer** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %81, %6
  %22 = load i32, i32* %20, align 4
  %23 = load i32, i32* @MLX5E_MAX_BUFFER, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %51

39:                                               ; preds = %30
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %18, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %39, %38
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %17, align 4
  br label %60

59:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %12, align 8
  %63 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %61, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %60
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %12, align 8
  %74 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %71, %60
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  br label %21

84:                                               ; preds = %21
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %12, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @update_xoff_threshold(%struct.mlx5e_port_buffer* %88, i32 %89, i32 %90)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %7, align 4
  br label %99

96:                                               ; preds = %87
  %97 = load i32*, i32** %13, align 8
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %84
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @update_xoff_threshold(%struct.mlx5e_port_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
