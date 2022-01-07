; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_err_icosq_cqe_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_err_icosq_cqe_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_icosq = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.net_device*, %struct.mlx5_core_dev*, %struct.mlx5e_rq }
%struct.net_device = type { i32 }
%struct.mlx5e_rq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to query ICOSQ 0x%x state. err = %d\0A\00", align 1
@MLX5_SQC_STATE_ERR = common dso_local global i64 0, align 8
@MLX5E_SQ_STATE_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mlx5e_rx_reporter_err_icosq_cqe_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_reporter_err_icosq_cqe_recover(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5e_icosq*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.mlx5e_icosq*
  store %struct.mlx5e_icosq* %11, %struct.mlx5e_icosq** %5, align 8
  %12 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store %struct.mlx5e_rq* %15, %struct.mlx5e_rq** %7, align 8
  %16 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %4, align 8
  %21 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %6, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %27 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlx5_core_query_sq_state(%struct.mlx5_core_dev* %26, i32 %29, i64* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %85

40:                                               ; preds = %1
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @MLX5_SQC_STATE_ERR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %85

45:                                               ; preds = %40
  %46 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %47 = call i32 @mlx5e_deactivate_rq(%struct.mlx5e_rq* %46)
  %48 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %49 = call i32 @mlx5e_wait_for_icosq_flush(%struct.mlx5e_icosq* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %85

53:                                               ; preds = %45
  %54 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %55 = call i32 @mlx5e_deactivate_icosq(%struct.mlx5e_icosq* %54)
  %56 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %60 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mlx5e_health_sq_to_ready(%struct.TYPE_4__* %58, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %85

66:                                               ; preds = %53
  %67 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %68 = call i32 @mlx5e_reset_icosq_cc_pc(%struct.mlx5e_icosq* %67)
  %69 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %70 = call i32 @mlx5e_free_rx_descs(%struct.mlx5e_rq* %69)
  %71 = load i32, i32* @MLX5E_SQ_STATE_RECOVERING, align 4
  %72 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %72, i32 0, i32 0
  %74 = call i32 @clear_bit(i32 %71, i32* %73)
  %75 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %76 = call i32 @mlx5e_activate_icosq(%struct.mlx5e_icosq* %75)
  %77 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %78 = call i32 @mlx5e_activate_rq(%struct.mlx5e_rq* %77)
  %79 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %80 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %91

85:                                               ; preds = %65, %52, %44, %33
  %86 = load i32, i32* @MLX5E_SQ_STATE_RECOVERING, align 4
  %87 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %87, i32 0, i32 0
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %66
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @mlx5_core_query_sq_state(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_deactivate_rq(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_wait_for_icosq_flush(%struct.mlx5e_icosq*) #1

declare dso_local i32 @mlx5e_deactivate_icosq(%struct.mlx5e_icosq*) #1

declare dso_local i32 @mlx5e_health_sq_to_ready(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx5e_reset_icosq_cc_pc(%struct.mlx5e_icosq*) #1

declare dso_local i32 @mlx5e_free_rx_descs(%struct.mlx5e_rq*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_activate_icosq(%struct.mlx5e_icosq*) #1

declare dso_local i32 @mlx5e_activate_rq(%struct.mlx5e_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
