; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32 }

@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_qp*, i32*, i32, i32, i32, i32*)* @qp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_attach(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_qp* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_qp*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.mlx4_qp* %2, %struct.mlx4_qp** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %71 [
    i32 128, label %24
    i32 129, label %44
  ]

24:                                               ; preds = %8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %25, i32 %26, i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %9, align 4
  br label %74

35:                                               ; preds = %24
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %37 = load %struct.mlx4_qp*, %struct.mlx4_qp** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @mlx4_trans_to_dmfs_attach(%struct.mlx4_dev* %36, %struct.mlx4_qp* %37, i32* %38, i32 %39, i32 %40, i32 %41, i32* %42)
  store i32 %43, i32* %9, align 4
  br label %74

44:                                               ; preds = %8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @MLX4_PROT_ETH, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %49, i32 %50, i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %19, align 4
  store i32 %58, i32* %9, align 4
  br label %74

59:                                               ; preds = %48
  %60 = load i32, i32* %19, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %44
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %65 = load %struct.mlx4_qp*, %struct.mlx4_qp** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @mlx4_qp_attach_common(%struct.mlx4_dev* %64, %struct.mlx4_qp* %65, i32* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %74

71:                                               ; preds = %8
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %63, %57, %35, %33
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_trans_to_dmfs_attach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mlx4_qp_attach_common(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
