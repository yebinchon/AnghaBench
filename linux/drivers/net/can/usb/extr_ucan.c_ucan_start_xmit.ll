; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.ucan_urb_context = type { i32 }
%struct.urb = type { i32 }
%struct.ucan_priv = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.can_frame = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"xmit err: failed to release context\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"xmit err: failed to submit urb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"xmit drop: failed to release context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ucan_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucan_urb_context*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.ucan_urb_context*, align 8
  %11 = alloca %struct.ucan_priv*, align 8
  %12 = alloca %struct.can_frame*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ucan_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.ucan_priv* %14, %struct.ucan_priv** %11, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.can_frame*
  store %struct.can_frame* %18, %struct.can_frame** %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i64 @can_dropped_invalid_skb(%struct.net_device* %19, %struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %156

25:                                               ; preds = %2
  %26 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %27 = call %struct.ucan_urb_context* @ucan_alloc_context(%struct.ucan_priv* %26)
  store %struct.ucan_urb_context* %27, %struct.ucan_urb_context** %10, align 8
  %28 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %10, align 8
  %29 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %30 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %28, i64 %33
  store %struct.ucan_urb_context* %34, %struct.ucan_urb_context** %8, align 8
  %35 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %10, align 8
  %36 = icmp ne %struct.ucan_urb_context* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %42, i32* %3, align 4
  br label %156

43:                                               ; preds = %25
  %44 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %45 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %10, align 8
  %46 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %47 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %8, align 8
  %48 = call %struct.urb* @ucan_prepare_tx_urb(%struct.ucan_priv* %44, %struct.ucan_urb_context* %45, %struct.can_frame* %46, %struct.ucan_urb_context* %47)
  store %struct.urb* %48, %struct.urb** %9, align 8
  %49 = load %struct.urb*, %struct.urb** %9, align 8
  %50 = icmp ne %struct.urb* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %135

52:                                               ; preds = %43
  %53 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %54 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %53, i32 0, i32 2
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %59 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %8, align 8
  %62 = call i32 @can_put_echo_skb(%struct.sk_buff* %57, %struct.TYPE_8__* %60, %struct.ucan_urb_context* %61)
  %63 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %64 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %63, i32 0, i32 2
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.urb*, %struct.urb** %9, align 8
  %68 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %69 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %68, i32 0, i32 3
  %70 = call i32 @usb_anchor_urb(%struct.urb* %67, i32* %69)
  %71 = load %struct.urb*, %struct.urb** %9, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call i32 @usb_submit_urb(%struct.urb* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %129

76:                                               ; preds = %52
  %77 = load %struct.urb*, %struct.urb** %9, align 8
  %78 = call i32 @usb_unanchor_urb(%struct.urb* %77)
  %79 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %80 = load %struct.urb*, %struct.urb** %9, align 8
  %81 = call i32 @ucan_clean_up_tx_urb(%struct.ucan_priv* %79, %struct.urb* %80)
  %82 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %83 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %10, align 8
  %84 = call i32 @ucan_release_context(%struct.ucan_priv* %82, %struct.ucan_urb_context* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %88 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = call i32 @netdev_err(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %76
  %92 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %93 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %92, i32 0, i32 2
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %97 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %8, align 8
  %100 = call i32 @can_free_echo_skb(%struct.TYPE_8__* %98, %struct.ucan_urb_context* %99)
  %101 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %102 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %101, i32 0, i32 2
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %91
  %110 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %111 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @netif_device_detach(%struct.TYPE_8__* %112)
  br label %127

114:                                              ; preds = %91
  %115 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %116 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @netdev_warn(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %121 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %114, %109
  %128 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %128, i32* %3, align 4
  br label %156

129:                                              ; preds = %52
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = call i32 @netif_trans_update(%struct.net_device* %130)
  %132 = load %struct.urb*, %struct.urb** %9, align 8
  %133 = call i32 @usb_free_urb(%struct.urb* %132)
  %134 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %156

135:                                              ; preds = %51
  %136 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %137 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %10, align 8
  %138 = call i32 @ucan_release_context(%struct.ucan_priv* %136, %struct.ucan_urb_context* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %142 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = call i32 @netdev_err(%struct.TYPE_8__* %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @dev_kfree_skb(%struct.sk_buff* %146)
  %148 = load %struct.ucan_priv*, %struct.ucan_priv** %11, align 8
  %149 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %145, %129, %127, %41, %23
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.ucan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.ucan_urb_context* @ucan_alloc_context(%struct.ucan_priv*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.urb* @ucan_prepare_tx_urb(%struct.ucan_priv*, %struct.ucan_urb_context*, %struct.can_frame*, %struct.ucan_urb_context*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.TYPE_8__*, %struct.ucan_urb_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @ucan_clean_up_tx_urb(%struct.ucan_priv*, %struct.urb*) #1

declare dso_local i32 @ucan_release_context(%struct.ucan_priv*, %struct.ucan_urb_context*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @can_free_echo_skb(%struct.TYPE_8__*, %struct.ucan_urb_context*) #1

declare dso_local i32 @netif_device_detach(%struct.TYPE_8__*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
