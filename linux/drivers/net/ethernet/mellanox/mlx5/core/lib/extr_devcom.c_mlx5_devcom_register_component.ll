; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_register_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_register_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5_devcom_component* }
%struct.mlx5_devcom_component = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_devcom_register_component(%struct.mlx5_devcom* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.mlx5_devcom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx5_devcom_component*, align 8
  store %struct.mlx5_devcom* %0, %struct.mlx5_devcom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %5, align 8
  %11 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %46

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %24, i64 %26
  store %struct.mlx5_devcom_component* %27, %struct.mlx5_devcom_component** %9, align 8
  %28 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %28, i32 0, i32 0
  %30 = call i32 @down_write(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %9, align 8
  %33 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %34, i8** %42, align 8
  %43 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %9, align 8
  %44 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %43, i32 0, i32 0
  %45 = call i32 @up_write(i32* %44)
  br label %46

46:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
