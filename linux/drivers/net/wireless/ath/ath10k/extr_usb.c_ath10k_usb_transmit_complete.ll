; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_transmit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_transmit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.ath10k_urb_context* }
%struct.ath10k_urb_context = type { %struct.ath10k_usb_pipe*, %struct.sk_buff* }
%struct.ath10k_usb_pipe = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32 }

@ATH10K_DBG_USB_BULK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pipe: %d, failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ath10k_usb_transmit_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_usb_transmit_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ath10k_urb_context*, align 8
  %4 = alloca %struct.ath10k_usb_pipe*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %8, align 8
  store %struct.ath10k_urb_context* %9, %struct.ath10k_urb_context** %3, align 8
  %10 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %10, i32 0, i32 0
  %12 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %11, align 8
  store %struct.ath10k_usb_pipe* %12, %struct.ath10k_usb_pipe** %4, align 8
  %13 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %5, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = load i32, i32* @ATH10K_DBG_USB_BULK, align 4
  %25 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %26 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath10k_dbg(%struct.ath10k* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %33, i32 0, i32 1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %36, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %37, align 8
  %38 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %38, i32 0, i32 0
  %40 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %39, align 8
  %41 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %3, align 8
  %42 = call i32 @ath10k_usb_free_urb_to_pipe(%struct.ath10k_usb_pipe* %40, %struct.ath10k_urb_context* %41)
  %43 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %44 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @skb_queue_tail(i32* %44, %struct.sk_buff* %45)
  %47 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %48 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %47, i32 0, i32 0
  %49 = call i32 @schedule_work(i32* %48)
  ret void
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_usb_free_urb_to_pipe(%struct.ath10k_usb_pipe*, %struct.ath10k_urb_context*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
