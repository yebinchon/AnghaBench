; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_get_peer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_get_peer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5_devcom_component* }
%struct.mlx5_devcom_component = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@MLX5_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mlx5_devcom_get_peer_data(%struct.mlx5_devcom* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_devcom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_devcom_component*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_devcom* %0, %struct.mlx5_devcom** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %57

12:                                               ; preds = %2
  %13 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %17, i64 %19
  store %struct.mlx5_devcom_component* %20, %struct.mlx5_devcom_component** %6, align 8
  %21 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %21, i32 0, i32 1
  %23 = call i32 @down_read(i32* %22)
  %24 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %12
  %29 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %29, i32 0, i32 1
  %31 = call i32 @up_read(i32* %30)
  store i8* null, i8** %3, align 8
  br label %57

32:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %33

48:                                               ; preds = %43, %33
  %49 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %48, %28, %11
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
