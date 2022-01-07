; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_getbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_getbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcbnl_buffer = type { i32, i32*, i32* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_port_buffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5E_MAX_PRIORITY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5E_MAX_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcbnl_buffer*)* @mlx5e_dcbnl_getbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_getbuffer(%struct.net_device* %0, %struct.dcbnl_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcbnl_buffer*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5e_port_buffer, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcbnl_buffer* %1, %struct.dcbnl_buffer** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %6, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %7, align 8
  %19 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %24 = call i32 @MLX5_BUFFER_SUPPORTED(%struct.mlx5_core_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %89

29:                                               ; preds = %2
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %31 = call i32 @mlx5e_port_query_priority2buffer(%struct.mlx5_core_dev* %30, i32* %22)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %89

36:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %22, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %57 = call i32 @mlx5e_port_query_buffer(%struct.mlx5e_priv* %56, %struct.mlx5e_port_buffer* %8)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %89

62:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MLX5E_MAX_BUFFER, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %8, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %76 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %63

84:                                               ; preds = %63
  %85 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %84, %60, %34, %26
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MLX5_BUFFER_SUPPORTED(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_port_query_priority2buffer(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5e_port_query_buffer(%struct.mlx5e_priv*, %struct.mlx5e_port_buffer*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
