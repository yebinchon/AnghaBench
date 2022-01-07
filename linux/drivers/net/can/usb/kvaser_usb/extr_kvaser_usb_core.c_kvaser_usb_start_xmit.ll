; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.kvaser_usb_net_priv = type { i32, i32, i32, %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb* }
%struct.kvaser_usb_tx_urb_context = type { i32, %struct.kvaser_usb_net_priv*, i32 }
%struct.kvaser_usb = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* (%struct.kvaser_usb_net_priv*, %struct.sk_buff*, i32*, i32*, i32)* }
%struct.urb = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot find free context\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@kvaser_usb_write_bulk_callback = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @kvaser_usb_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kvaser_usb_net_priv*, align 8
  %7 = alloca %struct.kvaser_usb*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.kvaser_usb_tx_urb_context*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.kvaser_usb_net_priv* %18, %struct.kvaser_usb_net_priv** %6, align 8
  %19 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %20 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %19, i32 0, i32 4
  %21 = load %struct.kvaser_usb*, %struct.kvaser_usb** %20, align 8
  store %struct.kvaser_usb* %21, %struct.kvaser_usb** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store %struct.net_device_stats* %23, %struct.net_device_stats** %8, align 8
  store %struct.kvaser_usb_tx_urb_context* null, %struct.kvaser_usb_tx_urb_context** %9, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @can_dropped_invalid_skb(%struct.net_device* %25, %struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %239

31:                                               ; preds = %2
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %32)
  store %struct.urb* %33, %struct.urb** %10, align 8
  %34 = load %struct.urb*, %struct.urb** %10, align 8
  %35 = icmp ne %struct.urb* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %38 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @dev_kfree_skb(%struct.sk_buff* %41)
  %43 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %239

44:                                               ; preds = %31
  %45 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %46 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %16, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %94, %44
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %52 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %97

55:                                               ; preds = %49
  %56 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %57 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %56, i32 0, i32 3
  %58 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %58, i64 %60
  %62 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %65 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %55
  %69 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %70 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %69, i32 0, i32 3
  %71 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %71, i64 %73
  store %struct.kvaser_usb_tx_urb_context* %74, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %77 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %79 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %83 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %86 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %68
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = call i32 @netif_stop_queue(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %68
  br label %97

93:                                               ; preds = %55
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %15, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %49

97:                                               ; preds = %92, %49
  %98 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %99 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %98, i32 0, i32 1
  %100 = load i64, i64* %16, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %103 = icmp ne %struct.kvaser_usb_tx_urb_context* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %97
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %107, i32* %14, align 4
  br label %235

108:                                              ; preds = %97
  %109 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %110 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i8* (%struct.kvaser_usb_net_priv*, %struct.sk_buff*, i32*, i32*, i32)*, i8* (%struct.kvaser_usb_net_priv*, %struct.sk_buff*, i32*, i32*, i32)** %112, align 8
  %114 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %117 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %116, i32 0, i32 2
  %118 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %119 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i8* %113(%struct.kvaser_usb_net_priv* %114, %struct.sk_buff* %115, i32* %117, i32* %12, i32 %120)
  store i8* %121, i8** %11, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %150, label %124

124:                                              ; preds = %108
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @dev_kfree_skb(%struct.sk_buff* %129)
  %131 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %132 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %131, i32 0, i32 1
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %132, i64 %133)
  %135 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %136 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %139 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %141 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 8
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = call i32 @netif_wake_queue(%struct.net_device* %144)
  %146 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %147 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %146, i32 0, i32 1
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  br label %235

150:                                              ; preds = %108
  %151 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %152 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %153 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %152, i32 0, i32 1
  store %struct.kvaser_usb_net_priv* %151, %struct.kvaser_usb_net_priv** %153, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %157 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @can_put_echo_skb(%struct.sk_buff* %154, %struct.net_device* %155, i32 %158)
  %160 = load %struct.urb*, %struct.urb** %10, align 8
  %161 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %162 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %165 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %168 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @usb_sndbulkpipe(i32 %166, i32 %171)
  %173 = load i8*, i8** %11, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @kvaser_usb_write_bulk_callback, align 4
  %176 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %177 = call i32 @usb_fill_bulk_urb(%struct.urb* %160, i32 %163, i32 %172, i8* %173, i32 %174, i32 %175, %struct.kvaser_usb_tx_urb_context* %176)
  %178 = load %struct.urb*, %struct.urb** %10, align 8
  %179 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %180 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %179, i32 0, i32 2
  %181 = call i32 @usb_anchor_urb(%struct.urb* %178, i32* %180)
  %182 = load %struct.urb*, %struct.urb** %10, align 8
  %183 = load i32, i32* @GFP_ATOMIC, align 4
  %184 = call i32 @usb_submit_urb(%struct.urb* %182, i32 %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %150
  %189 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %190 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %189, i32 0, i32 1
  %191 = load i64, i64* %16, align 8
  %192 = call i32 @spin_lock_irqsave(i32* %190, i64 %191)
  %193 = load %struct.net_device*, %struct.net_device** %5, align 8
  %194 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %195 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @can_free_echo_skb(%struct.net_device* %193, i32 %196)
  %198 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %199 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %9, align 8
  %202 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %204 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.net_device*, %struct.net_device** %5, align 8
  %208 = call i32 @netif_wake_queue(%struct.net_device* %207)
  %209 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %210 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %209, i32 0, i32 1
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load %struct.urb*, %struct.urb** %10, align 8
  %214 = call i32 @usb_unanchor_urb(%struct.urb* %213)
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @kfree(i8* %215)
  %217 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %218 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* @ENODEV, align 4
  %223 = sub nsw i32 0, %222
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %188
  %226 = load %struct.net_device*, %struct.net_device** %5, align 8
  %227 = call i32 @netif_device_detach(%struct.net_device* %226)
  br label %232

228:                                              ; preds = %188
  %229 = load %struct.net_device*, %struct.net_device** %5, align 8
  %230 = load i32, i32* %13, align 4
  %231 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %229, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %228, %225
  br label %235

233:                                              ; preds = %150
  %234 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %233, %232, %124, %104
  %236 = load %struct.urb*, %struct.urb** %10, align 8
  %237 = call i32 @usb_free_urb(%struct.urb* %236)
  %238 = load i32, i32* %14, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %36, %29
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.kvaser_usb_tx_urb_context*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
