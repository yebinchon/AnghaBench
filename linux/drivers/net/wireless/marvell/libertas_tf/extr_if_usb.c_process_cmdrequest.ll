; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_process_cmdrequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_process_cmdrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.if_usb_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbtf_private = type { i32, i32 }

@MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"The receive buffer is invalid: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbtf_private*)* @process_cmdrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cmdrequest(i32 %0, i32* %1, %struct.sk_buff* %2, %struct.if_usb_card* %3, %struct.lbtf_private* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.if_usb_card*, align 8
  %10 = alloca %struct.lbtf_private*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.if_usb_card* %3, %struct.if_usb_card** %9, align 8
  store %struct.lbtf_private* %4, %struct.lbtf_private** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15, %5
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %21 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @lbtf_deb_usbd(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @kfree_skb(%struct.sk_buff* %26)
  br label %52

28:                                               ; preds = %15
  %29 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %30 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %34 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @memcpy(i32 %35, i32* %39, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %47 = call i32 @lbtf_cmd_response_rx(%struct.lbtf_private* %46)
  %48 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %49 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %48, i32 0, i32 0
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbtf_cmd_response_rx(%struct.lbtf_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
