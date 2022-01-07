; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_create_io_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_create_io_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_ring*, %struct.ena_com_dev* }
%struct.ena_ring = type { i32, i32, i32, i32 }
%struct.ena_com_dev = type { i32 }
%struct.ena_com_create_io_ctx = type { i32, i32, i32, i32, i32, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_RX = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to create I/O RX queue num %d rc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to get RX queue handlers. RX queue num %d rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i32)* @ena_create_io_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_create_io_rx_queue(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca %struct.ena_com_create_io_ctx, align 4
  %8 = alloca %struct.ena_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 2
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %13, align 8
  store %struct.ena_com_dev* %14, %struct.ena_com_dev** %6, align 8
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 1
  %17 = load %struct.ena_ring*, %struct.ena_ring** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %17, i64 %19
  store %struct.ena_ring* %20, %struct.ena_ring** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ENA_IO_IRQ_IDX(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ENA_IO_RXQ_IDX(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = call i32 @memset(%struct.ena_com_create_io_ctx* %7, i32 0, i32 24)
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @ENA_COM_IO_QUEUE_DIRECTION_RX, align 4
  %29 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 4
  %31 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %35 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %39 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_node(i32 %40)
  %42 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %44 = call i32 @ena_com_create_io_queue(%struct.ena_com_dev* %43, %struct.ena_com_create_io_ctx* %7)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %2
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %49 = load i32, i32* @ifup, align 4
  %50 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @netif_err(%struct.ena_adapter* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %88

57:                                               ; preds = %2
  %58 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %61 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %60, i32 0, i32 1
  %62 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %63 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %62, i32 0, i32 0
  %64 = call i32 @ena_com_get_io_handlers(%struct.ena_com_dev* %58, i32 %59, i32* %61, i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %69 = load i32, i32* @ifup, align 4
  %70 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @netif_err(%struct.ena_adapter* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %57
  %81 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %82 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ena_com_update_numa_node(i32 %83, i32 %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %67, %47
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ENA_IO_IRQ_IDX(i32) #1

declare dso_local i32 @ENA_IO_RXQ_IDX(i32) #1

declare dso_local i32 @memset(%struct.ena_com_create_io_ctx*, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @ena_com_create_io_queue(%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ena_com_get_io_handlers(%struct.ena_com_dev*, i32, i32*, i32*) #1

declare dso_local i32 @ena_com_destroy_io_queue(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_update_numa_node(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
