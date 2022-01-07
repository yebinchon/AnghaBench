; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_drop_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_drop_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rq = type { %struct.mlx5e_cq }
%struct.mlx5e_cq = type { i32 }
%struct.mlx5e_cq_param = type { i32 }
%struct.mlx5e_rq_param = type { i32 }

@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"modify_rq_state failed, rx_if_down_packets won't be counted %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_drop_rq(%struct.mlx5e_priv* %0, %struct.mlx5e_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_cq_param, align 4
  %8 = alloca %struct.mlx5e_rq_param, align 4
  %9 = alloca %struct.mlx5e_cq*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_rq* %1, %struct.mlx5e_rq** %5, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %6, align 8
  %14 = bitcast %struct.mlx5e_cq_param* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = bitcast %struct.mlx5e_rq_param* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 0
  store %struct.mlx5e_cq* %17, %struct.mlx5e_cq** %9, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %19 = call i32 @mlx5e_build_drop_rq_param(%struct.mlx5e_priv* %18, %struct.mlx5e_rq_param* %8)
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %21 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %22 = call i32 @mlx5e_alloc_drop_cq(%struct.mlx5_core_dev* %20, %struct.mlx5e_cq* %21, %struct.mlx5e_cq_param* %7)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %29 = call i32 @mlx5e_create_cq(%struct.mlx5e_cq* %28, %struct.mlx5e_cq_param* %7)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %66

33:                                               ; preds = %27
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %35 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %36 = call i32 @mlx5e_alloc_drop_rq(%struct.mlx5_core_dev* %34, %struct.mlx5e_rq* %35, %struct.mlx5e_rq_param* %8)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %63

40:                                               ; preds = %33
  %41 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %42 = call i32 @mlx5e_create_rq(%struct.mlx5e_rq* %41, %struct.mlx5e_rq_param* %8)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  %47 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %48 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %49 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %50 = call i32 @mlx5e_modify_rq_state(%struct.mlx5e_rq* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %54, i32 0, i32 0
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  store i32 0, i32* %3, align 4
  br label %70

60:                                               ; preds = %45
  %61 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %62 = call i32 @mlx5e_free_rq(%struct.mlx5e_rq* %61)
  br label %63

63:                                               ; preds = %60, %39
  %64 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %65 = call i32 @mlx5e_destroy_cq(%struct.mlx5e_cq* %64)
  br label %66

66:                                               ; preds = %63, %32
  %67 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %68 = call i32 @mlx5e_free_cq(%struct.mlx5e_cq* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %59, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_build_drop_rq_param(%struct.mlx5e_priv*, %struct.mlx5e_rq_param*) #2

declare dso_local i32 @mlx5e_alloc_drop_cq(%struct.mlx5_core_dev*, %struct.mlx5e_cq*, %struct.mlx5e_cq_param*) #2

declare dso_local i32 @mlx5e_create_cq(%struct.mlx5e_cq*, %struct.mlx5e_cq_param*) #2

declare dso_local i32 @mlx5e_alloc_drop_rq(%struct.mlx5_core_dev*, %struct.mlx5e_rq*, %struct.mlx5e_rq_param*) #2

declare dso_local i32 @mlx5e_create_rq(%struct.mlx5e_rq*, %struct.mlx5e_rq_param*) #2

declare dso_local i32 @mlx5e_modify_rq_state(%struct.mlx5e_rq*, i32, i32) #2

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #2

declare dso_local i32 @mlx5e_free_rq(%struct.mlx5e_rq*) #2

declare dso_local i32 @mlx5e_destroy_cq(%struct.mlx5e_cq*) #2

declare dso_local i32 @mlx5e_free_cq(%struct.mlx5e_cq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
