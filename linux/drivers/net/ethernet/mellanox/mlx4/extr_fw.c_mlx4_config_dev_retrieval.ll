; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_config_dev_retrieval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_config_dev_retrieval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_config_dev_params = type { i32, i8*, i8* }
%struct.mlx4_config_dev = type { i64, i32, i32 }

@MLX4_DEV_CAP_FLAG2_CONFIG_DEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@config_dev_csum_flags = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_DEV_RX_CSUM_MODE_MASK = common dso_local global i64 0, align 8
@CONFIG_DEV_RX_CSUM_MODE_PORT1_BIT_OFFSET = common dso_local global i64 0, align 8
@CONFIG_DEV_RX_CSUM_MODE_PORT2_BIT_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_config_dev_retrieval(%struct.mlx4_dev* %0, %struct.mlx4_config_dev_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_config_dev_params*, align 8
  %6 = alloca %struct.mlx4_config_dev, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_config_dev_params* %1, %struct.mlx4_config_dev_params** %5, align 8
  %9 = bitcast %struct.mlx4_config_dev* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CONFIG_DEV, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %22 = call i32 @mlx4_CONFIG_DEV_get(%struct.mlx4_dev* %21, %struct.mlx4_config_dev* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.mlx4_config_dev, %struct.mlx4_config_dev* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = lshr i64 %29, 0
  %31 = and i64 %30, 7
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i8**, i8*** @config_dev_csum_flags, align 8
  %34 = call i64 @ARRAY_SIZE(i8** %33)
  %35 = icmp uge i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %27
  %40 = load i8**, i8*** @config_dev_csum_flags, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.mlx4_config_dev_params*, %struct.mlx4_config_dev_params** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.mlx4_config_dev, %struct.mlx4_config_dev* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = lshr i64 %47, 4
  %49 = and i64 %48, 7
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i8**, i8*** @config_dev_csum_flags, align 8
  %52 = call i64 @ARRAY_SIZE(i8** %51)
  %53 = icmp uge i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %39
  %58 = load i8**, i8*** @config_dev_csum_flags, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.mlx4_config_dev_params*, %struct.mlx4_config_dev_params** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds %struct.mlx4_config_dev, %struct.mlx4_config_dev* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @be16_to_cpu(i32 %65)
  %67 = load %struct.mlx4_config_dev_params*, %struct.mlx4_config_dev_params** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %54, %36, %25, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx4_CONFIG_DEV_get(%struct.mlx4_dev*, %struct.mlx4_config_dev*) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @be16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
