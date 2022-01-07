; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32, i32, %struct.sk_buff**, %struct.ftgmac100_txdes*, i32, %struct.sk_buff**, %struct.ftgmac100_rxdes* }
%struct.ftgmac100_txdes = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ftgmac100_rxdes = type { i32 }

@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_free_buffers(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftgmac100_rxdes*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ftgmac100_txdes*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %12 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %9
  %16 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %17 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %16, i32 0, i32 6
  %18 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %18, i64 %20
  store %struct.ftgmac100_rxdes* %21, %struct.ftgmac100_rxdes** %4, align 8
  %22 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %23 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %22, i32 0, i32 5
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %4, align 8
  %30 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %15
  br label %52

36:                                               ; preds = %15
  %37 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %38 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %37, i32 0, i32 5
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %41
  store %struct.sk_buff* null, %struct.sk_buff** %42, align 8
  %43 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %44 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RX_BUF_SIZE, align 4
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i32 @dma_unmap_single(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %36, %35
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %9

55:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %89, %55
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %59 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %64 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %63, i32 0, i32 3
  %65 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %65, i64 %67
  store %struct.ftgmac100_txdes* %68, %struct.ftgmac100_txdes** %7, align 8
  %69 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %70 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %69, i32 0, i32 2
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %71, i64 %73
  %75 = load %struct.sk_buff*, %struct.sk_buff** %74, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %8, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %62
  br label %89

79:                                               ; preds = %62
  %80 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %84 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %85 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = call i32 @ftgmac100_free_tx_packet(%struct.ftgmac100* %80, i32 %81, %struct.sk_buff* %82, %struct.ftgmac100_txdes* %83, i32 %87)
  br label %89

89:                                               ; preds = %79, %78
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %56

92:                                               ; preds = %56
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ftgmac100_free_tx_packet(%struct.ftgmac100*, i32, %struct.sk_buff*, %struct.ftgmac100_txdes*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
