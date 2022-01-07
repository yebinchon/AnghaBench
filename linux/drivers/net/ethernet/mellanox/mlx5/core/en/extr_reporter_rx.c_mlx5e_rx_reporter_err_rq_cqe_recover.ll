; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_err_rq_cqe_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_err_rq_cqe_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_rq = type { i32, %struct.TYPE_2__*, i32, %struct.net_device*, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to query RQ 0x%x state. err = %d\0A\00", align 1
@MLX5_RQC_STATE_ERR = common dso_local global i64 0, align 8
@MLX5E_RQ_STATE_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mlx5e_rx_reporter_err_rq_cqe_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_reporter_err_rq_cqe_recover(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_rq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mlx5e_rq*
  store %struct.mlx5e_rq* %10, %struct.mlx5e_rq** %6, align 8
  %11 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %11, i32 0, i32 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %4, align 8
  %14 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mlx5e_query_rq_state(%struct.mlx5_core_dev* %17, i32 %20, i64* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %60

31:                                               ; preds = %1
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @MLX5_RQC_STATE_ERR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %60

36:                                               ; preds = %31
  %37 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %38 = call i32 @mlx5e_deactivate_rq(%struct.mlx5e_rq* %37)
  %39 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %40 = call i32 @mlx5e_free_rx_descs(%struct.mlx5e_rq* %39)
  %41 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %42 = load i64, i64* @MLX5_RQC_STATE_ERR, align 8
  %43 = call i32 @mlx5e_rq_to_ready(%struct.mlx5e_rq* %41, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %60

47:                                               ; preds = %36
  %48 = load i32, i32* @MLX5E_RQ_STATE_RECOVERING, align 4
  %49 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %49, i32 0, i32 0
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %53 = call i32 @mlx5e_activate_rq(%struct.mlx5e_rq* %52)
  %54 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 0, i32* %2, align 4
  br label %66

60:                                               ; preds = %46, %35, %24
  %61 = load i32, i32* @MLX5E_RQ_STATE_RECOVERING, align 4
  %62 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %62, i32 0, i32 0
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %47
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mlx5e_query_rq_state(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_deactivate_rq(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_free_rx_descs(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_rq_to_ready(%struct.mlx5e_rq*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_activate_rq(%struct.mlx5e_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
