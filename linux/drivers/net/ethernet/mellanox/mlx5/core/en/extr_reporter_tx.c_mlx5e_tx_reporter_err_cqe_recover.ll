; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_err_cqe_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_err_cqe_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_txqsq = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device*, %struct.mlx5_core_dev* }

@MLX5E_SQ_STATE_RECOVERING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to query SQ 0x%x state. err = %d\0A\00", align 1
@MLX5_SQC_STATE_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mlx5e_tx_reporter_err_cqe_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tx_reporter_err_cqe_recover(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_txqsq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mlx5e_txqsq*
  store %struct.mlx5e_txqsq* %10, %struct.mlx5e_txqsq** %6, align 8
  %11 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %4, align 8
  %16 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load i32, i32* @MLX5E_SQ_STATE_RECOVERING, align 4
  %22 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

27:                                               ; preds = %1
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %29 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx5_core_query_sq_state(%struct.mlx5_core_dev* %28, i32 %31, i64* %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %83

42:                                               ; preds = %27
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MLX5_SQC_STATE_ERR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %83

47:                                               ; preds = %42
  %48 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx5e_tx_disable_queue(i32 %50)
  %52 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %53 = call i32 @mlx5e_wait_for_sq_flush(%struct.mlx5e_txqsq* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %83

57:                                               ; preds = %47
  %58 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mlx5e_health_sq_to_ready(%struct.TYPE_4__* %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %83

68:                                               ; preds = %57
  %69 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %70 = call i32 @mlx5e_reset_txqsq_cc_pc(%struct.mlx5e_txqsq* %69)
  %71 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @MLX5E_SQ_STATE_RECOVERING, align 4
  %78 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %78, i32 0, i32 0
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %82 = call i32 @mlx5e_activate_txqsq(%struct.mlx5e_txqsq* %81)
  store i32 0, i32* %2, align 4
  br label %89

83:                                               ; preds = %67, %56, %46, %35
  %84 = load i32, i32* @MLX5E_SQ_STATE_RECOVERING, align 4
  %85 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %86 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %85, i32 0, i32 0
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %68, %26
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5_core_query_sq_state(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_tx_disable_queue(i32) #1

declare dso_local i32 @mlx5e_wait_for_sq_flush(%struct.mlx5e_txqsq*) #1

declare dso_local i32 @mlx5e_health_sq_to_ready(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx5e_reset_txqsq_cc_pc(%struct.mlx5e_txqsq*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_activate_txqsq(%struct.mlx5e_txqsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
