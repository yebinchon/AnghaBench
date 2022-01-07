; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tso_put_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tso_put_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tso_t = type { i32 }
%struct.mvpp2_tx_queue = type { i32 }
%struct.mvpp2_txq_pcpu = type { i32 }
%struct.mvpp2_port = type { i32 }
%struct.mvpp2_tx_desc = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVPP2_TXD_L_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.tso_t*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*, i32, i32, i32)* @mvpp2_tso_put_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_tso_put_data(%struct.sk_buff* %0, %struct.net_device* %1, %struct.tso_t* %2, %struct.mvpp2_tx_queue* %3, %struct.mvpp2_tx_queue* %4, %struct.mvpp2_txq_pcpu* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.tso_t*, align 8
  %14 = alloca %struct.mvpp2_tx_queue*, align 8
  %15 = alloca %struct.mvpp2_tx_queue*, align 8
  %16 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mvpp2_port*, align 8
  %21 = alloca %struct.mvpp2_tx_desc*, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store %struct.net_device* %1, %struct.net_device** %12, align 8
  store %struct.tso_t* %2, %struct.tso_t** %13, align 8
  store %struct.mvpp2_tx_queue* %3, %struct.mvpp2_tx_queue** %14, align 8
  store %struct.mvpp2_tx_queue* %4, %struct.mvpp2_tx_queue** %15, align 8
  store %struct.mvpp2_txq_pcpu* %5, %struct.mvpp2_txq_pcpu** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %23)
  store %struct.mvpp2_port* %24, %struct.mvpp2_port** %20, align 8
  %25 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %15, align 8
  %26 = call %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue* %25)
  store %struct.mvpp2_tx_desc* %26, %struct.mvpp2_tx_desc** %21, align 8
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %28 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %29 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %14, align 8
  %30 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port* %27, %struct.mvpp2_tx_desc* %28, i32 %31)
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %34 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port* %33, %struct.mvpp2_tx_desc* %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tso_t*, %struct.tso_t** %13, align 8
  %42 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_map_single(i32 %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %22, align 4
  %47 = load %struct.net_device*, %struct.net_device** %12, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %22, align 4
  %52 = call i32 @dma_mapping_error(i32 %50, i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %9
  %56 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %14, align 8
  %57 = call i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %90

60:                                               ; preds = %9
  %61 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %62 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %63 = load i32, i32* %22, align 4
  %64 = call i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port* %61, %struct.mvpp2_tx_desc* %62, i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %60
  %68 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %69 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %70 = load i32, i32* @MVPP2_TXD_L_DESC, align 4
  %71 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %68, %struct.mvpp2_tx_desc* %69, i32 %70)
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %76 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %16, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %79 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %75, %struct.mvpp2_txq_pcpu* %76, %struct.sk_buff* %77, %struct.mvpp2_tx_desc* %78)
  store i32 0, i32* %10, align 4
  br label %90

80:                                               ; preds = %67
  br label %85

81:                                               ; preds = %60
  %82 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %83 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %84 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %82, %struct.mvpp2_tx_desc* %83, i32 0)
  br label %85

85:                                               ; preds = %81, %80
  %86 = load %struct.mvpp2_port*, %struct.mvpp2_port** %20, align 8
  %87 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %16, align 8
  %88 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %21, align 8
  %89 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %86, %struct.mvpp2_txq_pcpu* %87, %struct.sk_buff* null, %struct.mvpp2_tx_desc* %88)
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %85, %74, %55
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txq_inc_put(%struct.mvpp2_port*, %struct.mvpp2_txq_pcpu*, %struct.sk_buff*, %struct.mvpp2_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
