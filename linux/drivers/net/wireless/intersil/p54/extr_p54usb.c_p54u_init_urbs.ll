; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_init_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_init_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54u_priv* }
%struct.p54u_priv = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.urb = type { i32 }
%struct.sk_buff = type { i64 }
%struct.p54u_rx_info = type { %struct.ieee80211_hw*, %struct.urb* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@P54U_PIPE_DATA = common dso_local global i32 0, align 4
@p54u_rx_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @p54u_init_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54u_init_urbs(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.p54u_priv*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.p54u_rx_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.p54u_priv*, %struct.p54u_priv** %10, align 8
  store %struct.p54u_priv* %11, %struct.p54u_priv** %4, align 8
  store %struct.urb* null, %struct.urb** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %88, %1
  %13 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %14 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %13, i32 0, i32 0
  %15 = call i32 @skb_queue_len(i32* %14)
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %91

17:                                               ; preds = %12
  %18 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %19 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @__dev_alloc_skb(i64 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %92

30:                                               ; preds = %17
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %31)
  store %struct.urb* %32, %struct.urb** %5, align 8
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = icmp ne %struct.urb* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %92

38:                                               ; preds = %30
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %41 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %44 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @P54U_PIPE_DATA, align 4
  %47 = call i32 @usb_rcvbulkpipe(i32 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @skb_tail_pointer(%struct.sk_buff* %48)
  %50 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %51 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 32
  %55 = load i32, i32* @p54u_rx_cb, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @usb_fill_bulk_urb(%struct.urb* %39, i32 %42, i32 %47, i32 %49, i64 %54, i32 %55, %struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.p54u_rx_info*
  store %struct.p54u_rx_info* %61, %struct.p54u_rx_info** %7, align 8
  %62 = load %struct.urb*, %struct.urb** %5, align 8
  %63 = load %struct.p54u_rx_info*, %struct.p54u_rx_info** %7, align 8
  %64 = getelementptr inbounds %struct.p54u_rx_info, %struct.p54u_rx_info* %63, i32 0, i32 1
  store %struct.urb* %62, %struct.urb** %64, align 8
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %66 = load %struct.p54u_rx_info*, %struct.p54u_rx_info** %7, align 8
  %67 = getelementptr inbounds %struct.p54u_rx_info, %struct.p54u_rx_info* %66, i32 0, i32 0
  store %struct.ieee80211_hw* %65, %struct.ieee80211_hw** %67, align 8
  %68 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %69 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call i32 @skb_queue_tail(i32* %69, %struct.sk_buff* %70)
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %74 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %73, i32 0, i32 1
  %75 = call i32 @usb_anchor_urb(%struct.urb* %72, i32* %74)
  %76 = load %struct.urb*, %struct.urb** %5, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32 @usb_submit_urb(%struct.urb* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %38
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load %struct.p54u_priv*, %struct.p54u_priv** %4, align 8
  %84 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %83, i32 0, i32 0
  %85 = call i32 @skb_unlink(%struct.sk_buff* %82, i32* %84)
  %86 = load %struct.urb*, %struct.urb** %5, align 8
  %87 = call i32 @usb_unanchor_urb(%struct.urb* %86)
  br label %92

88:                                               ; preds = %38
  %89 = load %struct.urb*, %struct.urb** %5, align 8
  %90 = call i32 @usb_free_urb(%struct.urb* %89)
  store %struct.urb* null, %struct.urb** %5, align 8
  br label %12

91:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %100

92:                                               ; preds = %81, %35, %27
  %93 = load %struct.urb*, %struct.urb** %5, align 8
  %94 = call i32 @usb_free_urb(%struct.urb* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = call i32 @p54u_free_urbs(%struct.ieee80211_hw* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %91
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i64, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @p54u_free_urbs(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
