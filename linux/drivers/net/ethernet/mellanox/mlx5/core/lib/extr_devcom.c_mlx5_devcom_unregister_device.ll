; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { i64, i32, i32**, %struct.mlx5_devcom* }
%struct.mlx5_devcom_list = type { i64, i32, i32**, %struct.mlx5_devcom_list* }

@MLX5_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_devcom_unregister_device(%struct.mlx5_devcom* %0) #0 {
  %2 = alloca %struct.mlx5_devcom*, align 8
  %3 = alloca %struct.mlx5_devcom_list*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_devcom* %0, %struct.mlx5_devcom** %2, align 8
  %5 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %2, align 8
  %6 = bitcast %struct.mlx5_devcom* %5 to %struct.mlx5_devcom_list*
  %7 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom_list* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %11, i32 0, i32 3
  %13 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %12, align 8
  %14 = bitcast %struct.mlx5_devcom* %13 to %struct.mlx5_devcom_list*
  store %struct.mlx5_devcom_list* %14, %struct.mlx5_devcom_list** %3, align 8
  %15 = load %struct.mlx5_devcom_list*, %struct.mlx5_devcom_list** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_devcom_list, %struct.mlx5_devcom_list* %15, i32 0, i32 2
  %17 = load i32**, i32*** %16, align 8
  %18 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  store i32* null, i32** %21, align 8
  %22 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %2, align 8
  %23 = bitcast %struct.mlx5_devcom* %22 to %struct.mlx5_devcom_list*
  %24 = call i32 @kfree(%struct.mlx5_devcom_list* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %40, %10
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.mlx5_devcom_list*, %struct.mlx5_devcom_list** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_devcom_list, %struct.mlx5_devcom_list* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %25

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %54

48:                                               ; preds = %43
  %49 = load %struct.mlx5_devcom_list*, %struct.mlx5_devcom_list** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_devcom_list, %struct.mlx5_devcom_list* %49, i32 0, i32 1
  %51 = call i32 @list_del(i32* %50)
  %52 = load %struct.mlx5_devcom_list*, %struct.mlx5_devcom_list** %3, align 8
  %53 = call i32 @kfree(%struct.mlx5_devcom_list* %52)
  br label %54

54:                                               ; preds = %48, %47, %9
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom_list*) #1

declare dso_local i32 @kfree(%struct.mlx5_devcom_list*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
