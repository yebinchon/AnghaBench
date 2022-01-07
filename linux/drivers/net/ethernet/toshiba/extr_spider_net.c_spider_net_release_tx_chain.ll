; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_release_tx_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_release_tx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32, %struct.net_device*, %struct.spider_net_descr_chain }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.spider_net_descr_chain = type { i32, %struct.spider_net_descr*, %struct.spider_net_descr* }
%struct.spider_net_descr = type { %struct.sk_buff*, %struct.spider_net_descr*, %struct.spider_net_hw_descr* }
%struct.sk_buff = type { i32 }
%struct.spider_net_hw_descr = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"forcing end of tx descriptor with status x%02x\0A\00", align 1
@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*, i32)* @spider_net_release_tx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_release_tx_chain(%struct.spider_net_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.spider_net_descr_chain*, align 8
  %8 = alloca %struct.spider_net_descr*, align 8
  %9 = alloca %struct.spider_net_hw_descr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %15 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %18 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %17, i32 0, i32 2
  store %struct.spider_net_descr_chain* %18, %struct.spider_net_descr_chain** %7, align 8
  br label %19

19:                                               ; preds = %2, %139
  %20 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %21 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %20, i32 0, i32 0
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %25 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %24, i32 0, i32 1
  %26 = load %struct.spider_net_descr*, %struct.spider_net_descr** %25, align 8
  %27 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %28 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %27, i32 0, i32 2
  %29 = load %struct.spider_net_descr*, %struct.spider_net_descr** %28, align 8
  %30 = icmp eq %struct.spider_net_descr* %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %33 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %32, i32 0, i32 0
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 0, i32* %3, align 4
  br label %140

36:                                               ; preds = %19
  %37 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %38 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %37, i32 0, i32 1
  %39 = load %struct.spider_net_descr*, %struct.spider_net_descr** %38, align 8
  store %struct.spider_net_descr* %39, %struct.spider_net_descr** %8, align 8
  %40 = load %struct.spider_net_descr*, %struct.spider_net_descr** %8, align 8
  %41 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %40, i32 0, i32 2
  %42 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %41, align 8
  store %struct.spider_net_hw_descr* %42, %struct.spider_net_hw_descr** %9, align 8
  %43 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %9, align 8
  %44 = call i32 @spider_net_get_descr_status(%struct.spider_net_hw_descr* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %88 [
    i32 131, label %46
    i32 132, label %62
    i32 128, label %71
    i32 129, label %71
    i32 130, label %71
  ]

46:                                               ; preds = %36
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.spider_net_descr*, %struct.spider_net_descr** %8, align 8
  %53 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %52, i32 0, i32 0
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %102

62:                                               ; preds = %36
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %67 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %66, i32 0, i32 0
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  store i32 1, i32* %3, align 4
  br label %140

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %36, %36, %36, %70
  %72 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %73 = call i32 @netif_msg_tx_err(%struct.spider_net_card* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %77 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %76, i32 0, i32 1
  %78 = load %struct.net_device*, %struct.net_device** %77, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %75, %71
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %102

88:                                               ; preds = %36
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %88
  %97 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %98 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %97, i32 0, i32 0
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 1, i32* %3, align 4
  br label %140

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %82, %46
  %103 = load %struct.spider_net_descr*, %struct.spider_net_descr** %8, align 8
  %104 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %103, i32 0, i32 1
  %105 = load %struct.spider_net_descr*, %struct.spider_net_descr** %104, align 8
  %106 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %107 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %106, i32 0, i32 1
  store %struct.spider_net_descr* %105, %struct.spider_net_descr** %107, align 8
  %108 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %109 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %9, align 8
  %110 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.spider_net_descr*, %struct.spider_net_descr** %8, align 8
  %114 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %113, i32 0, i32 0
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %10, align 8
  %116 = load %struct.spider_net_descr*, %struct.spider_net_descr** %8, align 8
  %117 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %116, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %117, align 8
  %118 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %9, align 8
  %119 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %11, align 4
  %121 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %7, align 8
  %122 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %121, i32 0, i32 0
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %102
  %128 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %129 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %136 = call i32 @pci_unmap_single(i32 %130, i32 %131, i32 %134, i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %138 = call i32 @dev_consume_skb_any(%struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %127, %102
  br label %19

140:                                              ; preds = %96, %65, %31
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spider_net_get_descr_status(%struct.spider_net_hw_descr*) #1

declare dso_local i32 @netif_msg_tx_err(%struct.spider_net_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
