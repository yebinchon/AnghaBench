; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32, i32, %struct.sk_buff**, i32, i32, %struct.net_device* }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ftgmac100_rxdes = type { i8*, i8* }

@RX_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to allocate rx skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to map rx page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftgmac100*, i32, %struct.ftgmac100_rxdes*, i32)* @ftgmac100_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_alloc_rx_buf(%struct.ftgmac100* %0, i32 %1, %struct.ftgmac100_rxdes* %2, i32 %3) #0 {
  %5 = alloca %struct.ftgmac100*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ftgmac100_rxdes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ftgmac100_rxdes* %2, %struct.ftgmac100_rxdes** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %14 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %13, i32 0, i32 5
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = load i32, i32* @RX_BUF_SIZE, align 4
  %18 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = call i64 (...) @net_ratelimit()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = call i32 @netdev_warn(%struct.net_device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %35 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  br label %69

37:                                               ; preds = %4
  %38 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %39 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RX_BUF_SIZE, align 4
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @dma_map_single(i32 %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %48 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @dma_mapping_error(i32 %49, i32 %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %37
  %55 = call i64 (...) @net_ratelimit()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = call i32 @netdev_err(%struct.net_device* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %61)
  %63 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %64 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %60, %37
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %72 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %71, i32 0, i32 2
  %73 = load %struct.sk_buff**, %struct.sk_buff*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %73, i64 %75
  store %struct.sk_buff* %70, %struct.sk_buff** %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %7, align 8
  %80 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = call i32 (...) @dma_wmb()
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %84 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %69
  %89 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %90 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %7, align 8
  %94 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %98

95:                                               ; preds = %69
  %96 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %7, align 8
  %97 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %96, i32 0, i32 0
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %12, align 4
  ret i32 %99
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
