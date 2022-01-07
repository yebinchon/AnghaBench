; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_txqsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_txqsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.mlx5e_params = type { i64 }
%struct.mlx5e_sq_param = type { i32 }
%struct.mlx5e_txqsq = type { i64, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_create_sq_param = type { i32, i32, i32*, i32, i64 }

@MLX5E_SQ_STATE_AM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, i64, i32, %struct.mlx5e_params*, %struct.mlx5e_sq_param*, %struct.mlx5e_txqsq*, i32)* @mlx5e_open_txqsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_txqsq(%struct.mlx5e_channel* %0, i64 %1, i32 %2, %struct.mlx5e_params* %3, %struct.mlx5e_sq_param* %4, %struct.mlx5e_txqsq* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_params*, align 8
  %13 = alloca %struct.mlx5e_sq_param*, align 8
  %14 = alloca %struct.mlx5e_txqsq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx5e_create_sq_param, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.mlx5e_params* %3, %struct.mlx5e_params** %12, align 8
  store %struct.mlx5e_sq_param* %4, %struct.mlx5e_sq_param** %13, align 8
  store %struct.mlx5e_txqsq* %5, %struct.mlx5e_txqsq** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = bitcast %struct.mlx5e_create_sq_param* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.mlx5e_params*, %struct.mlx5e_params** %12, align 8
  %23 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %13, align 8
  %24 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @mlx5e_alloc_txqsq(%struct.mlx5e_channel* %20, i32 %21, %struct.mlx5e_params* %22, %struct.mlx5e_sq_param* %23, %struct.mlx5e_txqsq* %24, i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %8, align 4
  br label %95

31:                                               ; preds = %7
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %16, i32 0, i32 4
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %16, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %36 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %16, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %42 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %16, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %45 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %16, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %13, align 8
  %52 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %53 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %52, i32 0, i32 2
  %54 = call i32 @mlx5e_create_sq_rdy(i32 %50, %struct.mlx5e_sq_param* %51, %struct.mlx5e_create_sq_param* %16, i32* %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  br label %91

58:                                               ; preds = %31
  %59 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %60 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %65 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  %73 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @mlx5e_set_sq_maxrate(i32 %74, %struct.mlx5e_txqsq* %75, i64 %76)
  br label %78

78:                                               ; preds = %71, %58
  %79 = load %struct.mlx5e_params*, %struct.mlx5e_params** %12, align 8
  %80 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @MLX5E_SQ_STATE_AM, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %87 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %78
  store i32 0, i32* %8, align 4
  br label %95

91:                                               ; preds = %57
  %92 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, align 8
  %93 = call i32 @mlx5e_free_txqsq(%struct.mlx5e_txqsq* %92)
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %90, %29
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_alloc_txqsq(%struct.mlx5e_channel*, i32, %struct.mlx5e_params*, %struct.mlx5e_sq_param*, %struct.mlx5e_txqsq*, i32) #2

declare dso_local i32 @mlx5e_create_sq_rdy(i32, %struct.mlx5e_sq_param*, %struct.mlx5e_create_sq_param*, i32*) #2

declare dso_local i32 @mlx5e_set_sq_maxrate(i32, %struct.mlx5e_txqsq*, i64) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @mlx5e_free_txqsq(%struct.mlx5e_txqsq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
