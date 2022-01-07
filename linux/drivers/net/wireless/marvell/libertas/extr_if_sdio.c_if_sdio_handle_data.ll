; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_handle_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i32 }
%struct.sk_buff = type { i32 }

@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"response packet too large (%d bytes)\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i32*, i32)* @if_sdio_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_handle_data(%struct.if_sdio_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @E2BIG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %19 = load i32, i32* @NET_IP_ALIGN, align 4
  %20 = add i32 %18, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %40

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i32, i32* @NET_IP_ALIGN, align 4
  %30 = call i32 @skb_reserve(%struct.sk_buff* %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @skb_put_data(%struct.sk_buff* %31, i32* %32, i32 %33)
  %35 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %36 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @lbs_process_rxed_packet(i32 %37, %struct.sk_buff* %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %27, %24, %12
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @lbs_process_rxed_packet(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
