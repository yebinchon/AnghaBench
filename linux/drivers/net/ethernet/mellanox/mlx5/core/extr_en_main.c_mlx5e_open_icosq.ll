; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_icosq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_icosq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_sq_param = type { i32 }
%struct.mlx5e_icosq = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_create_sq_param = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_icosq(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.mlx5e_sq_param* %2, %struct.mlx5e_icosq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca %struct.mlx5e_params*, align 8
  %8 = alloca %struct.mlx5e_sq_param*, align 8
  %9 = alloca %struct.mlx5e_icosq*, align 8
  %10 = alloca %struct.mlx5e_create_sq_param, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %6, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %7, align 8
  store %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq_param** %8, align 8
  store %struct.mlx5e_icosq* %3, %struct.mlx5e_icosq** %9, align 8
  %12 = bitcast %struct.mlx5e_create_sq_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %14 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %8, align 8
  %15 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %9, align 8
  %16 = call i32 @mlx5e_alloc_icosq(%struct.mlx5e_channel* %13, %struct.mlx5e_sq_param* %14, %struct.mlx5e_icosq* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %9, align 8
  %23 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %10, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %10, i32 0, i32 1
  store i32* %29, i32** %30, align 8
  %31 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %8, align 8
  %39 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %39, i32 0, i32 0
  %41 = call i32 @mlx5e_create_sq_rdy(i32 %37, %struct.mlx5e_sq_param* %38, %struct.mlx5e_create_sq_param* %10, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %46

45:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %50

46:                                               ; preds = %44
  %47 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %9, align 8
  %48 = call i32 @mlx5e_free_icosq(%struct.mlx5e_icosq* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %45, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_alloc_icosq(%struct.mlx5e_channel*, %struct.mlx5e_sq_param*, %struct.mlx5e_icosq*) #2

declare dso_local i32 @mlx5e_create_sq_rdy(i32, %struct.mlx5e_sq_param*, %struct.mlx5e_create_sq_param*, i32*) #2

declare dso_local i32 @mlx5e_free_icosq(%struct.mlx5e_icosq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
