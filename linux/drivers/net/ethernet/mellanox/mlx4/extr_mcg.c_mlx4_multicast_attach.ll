; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_multicast_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_multicast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32 }

@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@MLX4_MC_STEER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_multicast_attach(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca %struct.mlx4_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %65 [
    i32 130, label %20
    i32 129, label %26
    i32 128, label %56
  ]

20:                                               ; preds = %7
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @MLX4_PROT_ETH, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %68

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %7, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @MLX4_PROT_ETH, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @MLX4_MC_STEER, align 4
  %32 = shl i32 %31, 1
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %39 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %43 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @mlx4_QP_ATTACH(%struct.mlx4_dev* %42, %struct.mlx4_qp* %43, i32* %44, i32 1, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %68

48:                                               ; preds = %37
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %50 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @MLX4_MC_STEER, align 4
  %55 = call i32 @mlx4_qp_attach_common(%struct.mlx4_dev* %49, %struct.mlx4_qp* %50, i32* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %68

56:                                               ; preds = %7
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %58 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @mlx4_trans_to_dmfs_attach(%struct.mlx4_dev* %57, %struct.mlx4_qp* %58, i32* %59, i32 %60, i32 %61, i32 %62, i32* %63)
  store i32 %64, i32* %8, align 4
  br label %68

65:                                               ; preds = %7
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %56, %48, %41, %24
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QP_ATTACH(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx4_qp_attach_common(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx4_trans_to_dmfs_attach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
