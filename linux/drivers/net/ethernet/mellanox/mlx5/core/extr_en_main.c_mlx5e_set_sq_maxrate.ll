; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_sq_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_sq_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_txqsq = type { i64, i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_modify_sq_param = type { i32, i32, i8*, i8*, i32 }
%struct.mlx5_rate_limit = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed configuring rate %u: %d\0A\00", align 1
@MLX5_SQC_STATE_RDY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.mlx5e_txqsq*, i64)* @mlx5e_set_sq_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_sq_maxrate(%struct.net_device* %0, %struct.mlx5e_txqsq* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_txqsq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5e_modify_sq_param, align 8
  %11 = alloca %struct.mlx5_rate_limit, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.mlx5e_txqsq* %1, %struct.mlx5e_txqsq** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %8, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %9, align 8
  %19 = bitcast %struct.mlx5e_modify_sq_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = bitcast %struct.mlx5_rate_limit* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  store i32 0, i32* %12, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %11, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %38 = call i32 @mlx5_rl_remove_rate(%struct.mlx5_core_dev* %37, %struct.mlx5_rate_limit* %11)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %11, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %48 = call i32 @mlx5_rl_add_rate(%struct.mlx5_core_dev* %47, i32* %12, %struct.mlx5_rate_limit* %11)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  br label %89

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i8*, i8** @MLX5_SQC_STATE_RDY, align 8
  %60 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %10, i32 0, i32 3
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** @MLX5_SQC_STATE_RDY, align 8
  %62 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %10, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %10, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %67 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @mlx5e_modify_sq(%struct.mlx5_core_dev* %66, i32 %69, %struct.mlx5e_modify_sq_param* %10)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %82 = call i32 @mlx5_rl_remove_rate(%struct.mlx5_core_dev* %81, %struct.mlx5_rate_limit* %11)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %58
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %83, %51, %26
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlx5_rl_remove_rate(%struct.mlx5_core_dev*, %struct.mlx5_rate_limit*) #1

declare dso_local i32 @mlx5_rl_add_rate(%struct.mlx5_core_dev*, i32*, %struct.mlx5_rate_limit*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @mlx5e_modify_sq(%struct.mlx5_core_dev*, i32, %struct.mlx5e_modify_sq_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
