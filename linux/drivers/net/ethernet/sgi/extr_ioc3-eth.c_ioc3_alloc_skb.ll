; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ioc3_erxbuf = type { i32 }

@RX_BUF_SIZE = common dso_local global i64 0, align 8
@IOC3_DMA_XFER_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3_private*, %struct.sk_buff**, %struct.ioc3_erxbuf**, i32*)* @ioc3_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_alloc_skb(%struct.ioc3_private* %0, %struct.sk_buff** %1, %struct.ioc3_erxbuf** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioc3_private*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.ioc3_erxbuf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %6, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %7, align 8
  store %struct.ioc3_erxbuf** %2, %struct.ioc3_erxbuf*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @RX_BUF_SIZE, align 8
  %14 = load i64, i64* @IOC3_DMA_XFER_LEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = sub nsw i64 %15, 1
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @alloc_skb(i64 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @aligned_rx_skb_addr(i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.ioc3_private*, %struct.ioc3_private** %6, align 8
  %37 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RX_BUF_SIZE, align 8
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_map_single(i32 %38, i64 %41, i64 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ioc3_private*, %struct.ioc3_private** %6, align 8
  %46 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @dma_mapping_error(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ioc3_erxbuf*
  %63 = load %struct.ioc3_erxbuf**, %struct.ioc3_erxbuf*** %8, align 8
  store %struct.ioc3_erxbuf* %62, %struct.ioc3_erxbuf** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load i32, i32* @RX_OFFSET, align 4
  %66 = call i32 @skb_reserve(%struct.sk_buff* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %68, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %56, %51, %21
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @aligned_rx_skb_addr(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
