; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_resync_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_resync_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx5_fpga_dma_buf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@MLX5_TLS_COMMAND_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Received NULL pointer for handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tls_cmd = common dso_local global i32 0, align 4
@swid = common dso_local global i32 0, align 4
@tls_rcd_sn = common dso_local global i32 0, align 4
@tcp_sn = common dso_local global i32 0, align 4
@command_type = common dso_local global i32 0, align 4
@CMD_RESYNC_RX = common dso_local global i32 0, align 4
@mlx_tls_kfree_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_tls_resync_rx(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MLX5_TLS_COMMAND_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.mlx5_fpga_dma_buf* @kzalloc(i32 %19, i32 %20)
  store %struct.mlx5_fpga_dma_buf* %21, %struct.mlx5_fpga_dma_buf** %10, align 8
  %22 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %23 = icmp ne %struct.mlx5_fpga_dma_buf* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %112

27:                                               ; preds = %4
  %28 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %28, i64 1
  %30 = bitcast %struct.mlx5_fpga_dma_buf* %29 to i8*
  store i8* %30, i8** %13, align 8
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ntohl(i32 %38)
  %40 = call i8* @idr_find(i32* %37, i32 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %51 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %112

54:                                               ; preds = %27
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @mlx5_fpga_tls_flow_to_cmd(i8* %55, i8* %56)
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load i32, i32* @tls_cmd, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* @swid, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ntohl(i32 %62)
  %64 = call i32 @MLX5_SET(i32 %59, i8* %60, i32 %61, i32 %63)
  %65 = load i32, i32* @tls_cmd, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* @tls_rcd_sn, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @be64_to_cpu(i32 %68)
  %70 = call i32 @MLX5_SET64(i32 %65, i8* %66, i32 %67, i32 %69)
  %71 = load i32, i32* @tls_cmd, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* @tcp_sn, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @MLX5_SET(i32 %71, i8* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @tls_cmd, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @command_type, align 4
  %79 = load i32, i32* @CMD_RESYNC_RX, align 4
  %80 = call i32 @MLX5_SET(i32 %76, i8* %77, i32 %78, i32 %79)
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %83 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i8* %81, i8** %86, align 8
  %87 = load i32, i32* @MLX5_TLS_COMMAND_SIZE, align 4
  %88 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %89 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 8
  %93 = load i32, i32* @mlx_tls_kfree_complete, align 4
  %94 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %95 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %104 = call i32 @mlx5_fpga_sbu_conn_sendmsg(i32 %102, %struct.mlx5_fpga_dma_buf* %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %54
  %108 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %109 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %108)
  br label %110

110:                                              ; preds = %107, %54
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %47, %24
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.mlx5_fpga_dma_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @idr_find(i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @mlx5_fpga_tls_flow_to_cmd(i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i32, i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @mlx5_fpga_sbu_conn_sendmsg(i32, %struct.mlx5_fpga_dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
