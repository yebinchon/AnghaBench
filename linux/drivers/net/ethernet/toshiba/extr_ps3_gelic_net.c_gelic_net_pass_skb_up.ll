; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_net_pass_skb_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_net_pass_skb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_descr = type { %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.gelic_card = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GELIC_NET_MAX_MTU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"buffer full %x %x %x\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@GELIC_DESCR_DATA_STATUS_CHK_MASK = common dso_local global i32 0, align 4
@GELIC_DESCR_DATA_ERROR_CHK_MASK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_descr*, %struct.gelic_card*, %struct.net_device*)* @gelic_net_pass_skb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_net_pass_skb_up(%struct.gelic_descr* %0, %struct.gelic_card* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.gelic_descr*, align 8
  %5 = alloca %struct.gelic_card*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gelic_descr* %0, %struct.gelic_descr** %4, align 8
  store %struct.gelic_card* %1, %struct.gelic_card** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %11 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %10, i32 0, i32 0
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %14 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @be32_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %18 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gelic_card*, %struct.gelic_card** %5, align 8
  %22 = call i32 @ctodev(%struct.gelic_card* %21)
  %23 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %24 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = load i32, i32* @GELIC_NET_MAX_MTU, align 4
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %22, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %32 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %38 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  br label %46

41:                                               ; preds = %3
  %42 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %43 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @be32_to_cpu(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i32 [ %40, %36 ], [ %45, %41 ]
  %48 = call i32 @skb_put(%struct.sk_buff* %30, i32 %47)
  %49 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %50 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %46
  %54 = load %struct.gelic_card*, %struct.gelic_card** %5, align 8
  %55 = call i32 @ctodev(%struct.gelic_card* %54)
  %56 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %57 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @be32_to_cpu(i32 %58)
  %60 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %61 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be32_to_cpu(i32 %62)
  %64 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %65 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = call i32 @dev_info(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %53, %46
  %70 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %71 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %70, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @skb_pull(%struct.sk_buff* %72, i32 2)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i32 @eth_type_trans(%struct.sk_buff* %74, %struct.net_device* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %69
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @GELIC_DESCR_DATA_STATUS_CHK_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @GELIC_DESCR_DATA_ERROR_CHK_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %102

99:                                               ; preds = %90, %85
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %106

103:                                              ; preds = %69
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %103, %102
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %6, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = call i32 @netif_receive_skb(%struct.sk_buff* %122)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @ctodev(%struct.gelic_card*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
