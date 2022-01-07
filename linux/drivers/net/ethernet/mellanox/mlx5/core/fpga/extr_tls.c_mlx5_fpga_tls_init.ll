; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.mlx5_fpga_tls* }
%struct.mlx5_fpga_tls = type { i32, i32, i32, i32, i32, i32, i32, %struct.mlx5_fpga_conn* }
%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_fpga_conn_attr = type { %struct.mlx5_fpga_device*, i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_V12 = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_AES_GCM128 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@SBU_QP_QUEUE_SIZE = common dso_local global i8* null, align 8
@mlx5_fpga_tls_hw_qp_recv_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error creating TLS command connection %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_tls_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca %struct.mlx5_fpga_conn_attr, align 8
  %6 = alloca %struct.mlx5_fpga_conn*, align 8
  %7 = alloca %struct.mlx5_fpga_tls*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %10, align 8
  store %struct.mlx5_fpga_device* %11, %struct.mlx5_fpga_device** %4, align 8
  %12 = bitcast %struct.mlx5_fpga_conn_attr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  store i32 0, i32* %8, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = call i32 @mlx5_fpga_is_tls_device(%struct.mlx5_core_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %18 = icmp ne %struct.mlx5_fpga_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %97

20:                                               ; preds = %16
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlx5_fpga_tls* @kzalloc(i32 40, i32 %21)
  store %struct.mlx5_fpga_tls* %22, %struct.mlx5_fpga_tls** %7, align 8
  %23 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %24 = icmp ne %struct.mlx5_fpga_tls* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %97

28:                                               ; preds = %20
  %29 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %30 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %30, i32 0, i32 0
  %32 = call i32 @mlx5_fpga_tls_get_caps(%struct.mlx5_fpga_device* %29, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %93

36:                                               ; preds = %28
  %37 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLX5_ACCEL_TLS_V12, align 4
  %41 = load i32, i32* @MLX5_ACCEL_TLS_AES_GCM128, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @ENOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %93

48:                                               ; preds = %36
  %49 = load i8*, i8** @SBU_QP_QUEUE_SIZE, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %5, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** @SBU_QP_QUEUE_SIZE, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %5, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @mlx5_fpga_tls_hw_qp_recv_cb, align 4
  %54 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %5, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %5, i32 0, i32 0
  store %struct.mlx5_fpga_device* %55, %struct.mlx5_fpga_device** %56, align 8
  %57 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %58 = call %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device* %57, %struct.mlx5_fpga_conn_attr* %5)
  store %struct.mlx5_fpga_conn* %58, %struct.mlx5_fpga_conn** %6, align 8
  %59 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %60 = call i64 @IS_ERR(%struct.mlx5_fpga_conn* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %64 = call i32 @PTR_ERR(%struct.mlx5_fpga_conn* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %93

68:                                               ; preds = %48
  %69 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %70 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %71 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %70, i32 0, i32 7
  store %struct.mlx5_fpga_conn* %69, %struct.mlx5_fpga_conn** %71, align 8
  %72 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %72, i32 0, i32 6
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %76 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %75, i32 0, i32 5
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %79 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %78, i32 0, i32 4
  %80 = call i32 @idr_init(i32* %79)
  %81 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %81, i32 0, i32 3
  %83 = call i32 @idr_init(i32* %82)
  %84 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %84, i32 0, i32 2
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %88 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %87, i32 0, i32 1
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %91 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %91, i32 0, i32 0
  store %struct.mlx5_fpga_tls* %90, %struct.mlx5_fpga_tls** %92, align 8
  store i32 0, i32* %2, align 4
  br label %97

93:                                               ; preds = %62, %45, %35
  %94 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %95 = call i32 @kfree(%struct.mlx5_fpga_tls* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %68, %25, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_fpga_is_tls_device(%struct.mlx5_core_dev*) #2

declare dso_local %struct.mlx5_fpga_tls* @kzalloc(i32, i32) #2

declare dso_local i32 @mlx5_fpga_tls_get_caps(%struct.mlx5_fpga_device*, i32*) #2

declare dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device*, %struct.mlx5_fpga_conn_attr*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @idr_init(i32*) #2

declare dso_local i32 @kfree(%struct.mlx5_fpga_tls*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
