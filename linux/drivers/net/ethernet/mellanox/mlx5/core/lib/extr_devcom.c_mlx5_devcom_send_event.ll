; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5_devcom_component* }
%struct.mlx5_devcom_component = type { i32 (i32, i64, i8*)*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@MLX5_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_devcom_send_event(%struct.mlx5_devcom* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_devcom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_devcom_component*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_devcom* %0, %struct.mlx5_devcom** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  %16 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %25, i64 %27
  store %struct.mlx5_devcom_component* %28, %struct.mlx5_devcom_component** %10, align 8
  %29 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %29, i32 0, i32 1
  %31 = call i32 @down_write(i32* %30)
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %68, %20
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %10, align 8
  %44 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %10, align 8
  %54 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %53, i32 0, i32 0
  %55 = load i32 (i32, i64, i8*)*, i32 (i32, i64, i8*)** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %10, align 8
  %58 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 %55(i32 %56, i64 %64, i8* %65)
  store i32 %66, i32* %11, align 4
  br label %71

67:                                               ; preds = %42, %36
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %32

71:                                               ; preds = %52, %32
  %72 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %10, align 8
  %73 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %72, i32 0, i32 1
  %74 = call i32 @up_write(i32* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
