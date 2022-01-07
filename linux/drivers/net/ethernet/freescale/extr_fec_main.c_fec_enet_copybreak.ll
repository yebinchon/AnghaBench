; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_copybreak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_copybreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bufdesc = type { i32 }
%struct.fec_enet_private = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FEC_ENET_RX_FRSIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff**, %struct.bufdesc*, i64, i32)* @fec_enet_copybreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_copybreak(%struct.net_device* %0, %struct.sk_buff** %1, %struct.bufdesc* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.bufdesc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fec_enet_private*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %8, align 8
  store %struct.bufdesc* %2, %struct.bufdesc** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %14)
  store %struct.fec_enet_private* %15, %struct.fec_enet_private** %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %12, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %70

22:                                               ; preds = %5
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %23, i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %13, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %70

29:                                               ; preds = %22
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %12, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %35 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fec32_to_cpu(i32 %36)
  %38 = load i64, i64* @FEC_ENET_RX_FRSIZE, align 8
  %39 = load %struct.fec_enet_private*, %struct.fec_enet_private** %12, align 8
  %40 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_sync_single_for_cpu(i32* %33, i32 %37, i64 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %29
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @memcpy(i32 %50, i32 %54, i64 %55)
  br label %67

57:                                               ; preds = %29
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @swap_buffer2(i32 %60, i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %57, %47
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %69, align 8
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %28, %21
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i64, i32) #1

declare dso_local i32 @fec32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @swap_buffer2(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
