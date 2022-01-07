; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { i32, %struct.mlx5_devcom_list* }
%struct.mlx5_devcom_list = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_devcom* (%struct.mlx5_devcom_list*, i32)* @mlx5_devcom_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_devcom* @mlx5_devcom_alloc(%struct.mlx5_devcom_list* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_devcom*, align 8
  %4 = alloca %struct.mlx5_devcom_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_devcom*, align 8
  store %struct.mlx5_devcom_list* %0, %struct.mlx5_devcom_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mlx5_devcom* @kzalloc(i32 16, i32 %7)
  store %struct.mlx5_devcom* %8, %struct.mlx5_devcom** %6, align 8
  %9 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  %10 = icmp ne %struct.mlx5_devcom* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mlx5_devcom* null, %struct.mlx5_devcom** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.mlx5_devcom_list*, %struct.mlx5_devcom_list** %4, align 8
  %14 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %14, i32 0, i32 1
  store %struct.mlx5_devcom_list* %13, %struct.mlx5_devcom_list** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %6, align 8
  store %struct.mlx5_devcom* %19, %struct.mlx5_devcom** %3, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %3, align 8
  ret %struct.mlx5_devcom* %21
}

declare dso_local %struct.mlx5_devcom* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
