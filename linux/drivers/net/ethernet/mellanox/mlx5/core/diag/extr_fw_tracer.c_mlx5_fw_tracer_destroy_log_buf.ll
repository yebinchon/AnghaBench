; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_destroy_log_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_destroy_log_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fw_tracer*)* @mlx5_fw_tracer_destroy_log_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fw_tracer_destroy_log_buf(%struct.mlx5_fw_tracer* %0) #0 {
  %2 = alloca %struct.mlx5_fw_tracer*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %2, align 8
  %5 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %5, i32 0, i32 1
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_dev* %7, %struct.mlx5_core_dev** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(%struct.device* %19, i32 %23, i32 %27, i32 %28)
  %30 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @get_order(i32 %37)
  %39 = call i32 @free_pages(i64 %33, i32 %38)
  br label %40

40:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
