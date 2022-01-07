; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_multicast_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_multicast_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32 }

@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@MLX4_MC_STEER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_multicast_detach(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.mlx4_qp*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %54 [
    i32 130, label %16
    i32 129, label %22
    i32 128, label %50
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MLX4_PROT_ETH, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %57

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %5, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MLX4_PROT_ETH, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @MLX4_MC_STEER, align 4
  %28 = shl i32 %27, 1
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %35 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %39 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @mlx4_QP_ATTACH(%struct.mlx4_dev* %38, %struct.mlx4_qp* %39, i32* %40, i32 0, i32 0, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %45 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MLX4_MC_STEER, align 4
  %49 = call i32 @mlx4_qp_detach_common(%struct.mlx4_dev* %44, %struct.mlx4_qp* %45, i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %5
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @mlx4_flow_detach(%struct.mlx4_dev* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %50, %43, %37, %20
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QP_ATTACH(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx4_qp_detach_common(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_flow_detach(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
