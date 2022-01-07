; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_uc_steer_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_uc_steer_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid steering mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, i8*, i32, i32)* @mlx4_en_uc_steer_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_uc_steer_release(%struct.mlx4_en_priv* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca %struct.mlx4_qp, align 4
  %12 = alloca [16 x i32], align 16
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %9, align 8
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 0
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %17, align 8
  store %struct.mlx4_dev* %18, %struct.mlx4_dev** %10, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %43 [
    i32 129, label %23
    i32 128, label %39
  ]

23:                                               ; preds = %4
  %24 = bitcast [16 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32* %27, i8* %28, i32 %29)
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %37 = load i32, i32* @MLX4_PROT_ETH, align 4
  %38 = call i32 @mlx4_unicast_detach(%struct.mlx4_dev* %35, %struct.mlx4_qp* %11, i32* %36, i32 %37)
  br label %46

39:                                               ; preds = %4
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mlx4_flow_detach(%struct.mlx4_dev* %40, i32 %41)
  br label %46

43:                                               ; preds = %4
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %45 = call i32 @en_err(%struct.mlx4_en_priv* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @mlx4_unicast_detach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32) #2

declare dso_local i32 @mlx4_flow_detach(%struct.mlx4_dev*, i32) #2

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
