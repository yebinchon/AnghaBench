; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_new_rxbdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_new_rxbdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bufdesc = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fec_enet_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FEC_ENET_RX_FRSIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Rx DMA memory map failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bufdesc*, %struct.sk_buff*)* @fec_enet_new_rxbdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_new_rxbdp(%struct.net_device* %0, %struct.bufdesc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bufdesc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.fec_enet_private*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.bufdesc* %1, %struct.bufdesc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %10)
  store %struct.fec_enet_private* %11, %struct.fec_enet_private** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %25 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @skb_reserve(%struct.sk_buff* %23, i32 %31)
  br label %33

33:                                               ; preds = %22, %3
  %34 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %35 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FEC_ENET_RX_FRSIZE, align 8
  %42 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %43 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_map_single(i32* %37, i64 %40, i64 %45, i32 %46)
  %48 = call i32 @cpu_to_fec32(i32 %47)
  %49 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %50 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %52 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %56 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fec32_to_cpu(i32 %57)
  %59 = call i64 @dma_mapping_error(i32* %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %33
  %62 = call i64 (...) @net_ratelimit()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @netdev_err(%struct.net_device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_fec32(i32) #1

declare dso_local i32 @dma_map_single(i32*, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @fec32_to_cpu(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
