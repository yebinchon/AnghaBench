; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_init_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_init_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.mlx5_fpga_conn = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.mlx5_fpga_device* }
%struct.TYPE_14__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5_fpga_device = type { %struct.TYPE_9__, %struct.mlx5_core_dev* }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Modifying QP %u to INIT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@st = common dso_local global i32 0, align 4
@MLX5_QP_ST_RC = common dso_local global i32 0, align 4
@pm_state = common dso_local global i32 0, align 4
@MLX5_QP_PM_MIGRATED = common dso_local global i32 0, align 4
@primary_address_path = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@MLX5_FPGA_PKEY_INDEX = common dso_local global i32 0, align 4
@MLX5_FPGA_PORT_NUM = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@cqn_snd = common dso_local global i32 0, align 4
@cqn_rcv = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@MLX5_CMD_OP_RST2INIT_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"qp_modify RST2INIT failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*)* @mlx5_fpga_conn_init_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_init_qp(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_conn*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %2, align 8
  %7 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %7, i32 0, i32 2
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  store %struct.mlx5_fpga_device* %9, %struct.mlx5_fpga_device** %3, align 8
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %10, i32 0, i32 1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %4, align 8
  store i32* null, i32** %5, align 8
  %13 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %13, i32 0, i32 2
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %14, align 8
  %16 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 %23, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %104

31:                                               ; preds = %1
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @st, align 4
  %35 = load i32, i32* @MLX5_QP_ST_RC, align 4
  %36 = call i32 @MLX5_SET(i32* %32, i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @pm_state, align 4
  %40 = load i32, i32* @MLX5_QP_PM_MIGRATED, align 4
  %41 = call i32 @MLX5_SET(i32* %37, i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @primary_address_path, i32 0, i32 1), align 4
  %45 = load i32, i32* @MLX5_FPGA_PKEY_INDEX, align 4
  %46 = call i32 @MLX5_SET(i32* %42, i32* %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @primary_address_path, i32 0, i32 0), align 4
  %50 = load i32, i32* @MLX5_FPGA_PORT_NUM, align 4
  %51 = call i32 @MLX5_SET(i32* %47, i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @pd, align 4
  %55 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %55, i32 0, i32 2
  %57 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %56, align 8
  %58 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @MLX5_SET(i32* %52, i32* %53, i32 %54, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @cqn_snd, align 4
  %65 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %66 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @MLX5_SET(i32* %62, i32* %63, i32 %64, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @cqn_rcv, align 4
  %74 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %75 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @MLX5_SET(i32* %71, i32* %72, i32 %73, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @dbr_addr, align 4
  %83 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MLX5_SET64(i32* %80, i32* %81, i32 %82, i32 %88)
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %91 = load i32, i32* @MLX5_CMD_OP_RST2INIT_QP, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %94 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = call i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev* %90, i32 %91, i32 0, i32* %92, %struct.TYPE_16__* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %31
  %100 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %104

103:                                              ; preds = %31
  br label %104

104:                                              ; preds = %103, %99, %28
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32*) #1

declare dso_local i32 @MLX5_SET(i32*, i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev*, i32, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
