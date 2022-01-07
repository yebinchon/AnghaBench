; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_process_cmdtypedata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_process_cmdtypedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.if_usb_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbs_private = type { i32 }

@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4
@MRVDRV_MIN_PKT_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Packet length is Invalid\0A\00", align 1
@IPFIELD_ALIGN_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbs_private*)* @process_cmdtypedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cmdtypedata(i32 %0, %struct.sk_buff* %1, %struct.if_usb_card* %2, %struct.lbs_private* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.if_usb_card*, align 8
  %8 = alloca %struct.lbs_private*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.if_usb_card* %2, %struct.if_usb_card** %7, align 8
  store %struct.lbs_private* %3, %struct.lbs_private** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %11 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MRVDRV_MIN_PKT_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14, %4
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %7, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @lbs_deb_usbd(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  br label %39

26:                                               ; preds = %14
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @IPFIELD_ALIGN_OFFSET, align 4
  %29 = call i32 @skb_reserve(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @skb_put(%struct.sk_buff* %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %35 = call i32 @skb_pull(%struct.sk_buff* %33, i32 %34)
  %36 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @lbs_process_rxed_packet(%struct.lbs_private* %36, %struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @lbs_process_rxed_packet(%struct.lbs_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
