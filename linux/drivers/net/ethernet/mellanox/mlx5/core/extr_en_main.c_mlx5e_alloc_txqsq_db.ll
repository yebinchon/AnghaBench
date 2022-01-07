; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_txqsq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_txqsq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@MLX5_SEND_WQEBB_NUM_DS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_txqsq*, i32)* @mlx5e_alloc_txqsq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_txqsq_db(%struct.mlx5e_txqsq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_txqsq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %8, i32 0, i32 2
  %10 = call i32 @mlx5_wq_cyc_get_size(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MLX5_SEND_WQEBB_NUM_DS, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @array_size(i32 %14, i32 1)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @kvzalloc_node(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @array_size(i32 %22, i32 1)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @kvzalloc_node(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %43 = call i32 @mlx5e_free_txqsq_db(%struct.mlx5e_txqsq* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mlx5_wq_cyc_get_size(i32*) #1

declare dso_local i8* @kvzalloc_node(i32, i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @mlx5e_free_txqsq_db(%struct.mlx5e_txqsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
