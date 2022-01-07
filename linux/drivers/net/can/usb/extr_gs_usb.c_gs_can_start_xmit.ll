; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_can_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_can_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.gs_can = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.urb = type { i32, i32 }
%struct.gs_host_frame = type { i32, i32, i32, i32, i32 }
%struct.can_frame = type { i32, i32, i32 }
%struct.gs_tx_context = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@GS_MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid tx context %d\0A\00", align 1
@GSUSB_ENDPOINT_OUT = common dso_local global i32 0, align 4
@gs_usb_xmit_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"usb_submit failed (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @gs_can_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_can_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gs_can*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.gs_host_frame*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gs_tx_context*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.gs_can* @netdev_priv(%struct.net_device* %14)
  store %struct.gs_can* %15, %struct.gs_can** %6, align 8
  %16 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %17 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @can_dropped_invalid_skb(%struct.net_device* %20, %struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %202

26:                                               ; preds = %2
  %27 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %28 = call %struct.gs_tx_context* @gs_alloc_tx_context(%struct.gs_can* %27)
  store %struct.gs_tx_context* %28, %struct.gs_tx_context** %13, align 8
  %29 = load %struct.gs_tx_context*, %struct.gs_tx_context** %13, align 8
  %30 = icmp ne %struct.gs_tx_context* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %32, i32* %3, align 4
  br label %202

33:                                               ; preds = %26
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %34)
  store %struct.urb* %35, %struct.urb** %8, align 8
  %36 = load %struct.urb*, %struct.urb** %8, align 8
  %37 = icmp ne %struct.urb* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %192

39:                                               ; preds = %33
  %40 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %41 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = load %struct.urb*, %struct.urb** %8, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = call %struct.gs_host_frame* @usb_alloc_coherent(i32 %42, i32 20, i32 %43, i32* %45)
  store %struct.gs_host_frame* %46, %struct.gs_host_frame** %9, align 8
  %47 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %48 = icmp ne %struct.gs_host_frame* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %189

52:                                               ; preds = %39
  %53 = load %struct.gs_tx_context*, %struct.gs_tx_context** %13, align 8
  %54 = getelementptr inbounds %struct.gs_tx_context, %struct.gs_tx_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %180

63:                                               ; preds = %52
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %66 = getelementptr inbounds %struct.gs_host_frame, %struct.gs_host_frame* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %68 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %71 = getelementptr inbounds %struct.gs_host_frame, %struct.gs_host_frame* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.can_frame*
  store %struct.can_frame* %75, %struct.can_frame** %10, align 8
  %76 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %80 = getelementptr inbounds %struct.gs_host_frame, %struct.gs_host_frame* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %85 = getelementptr inbounds %struct.gs_host_frame, %struct.gs_host_frame* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %87 = getelementptr inbounds %struct.gs_host_frame, %struct.gs_host_frame* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %93 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32 %88, i32 %91, i32 %94)
  %96 = load %struct.urb*, %struct.urb** %8, align 8
  %97 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %98 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %101 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GSUSB_ENDPOINT_OUT, align 4
  %104 = call i32 @usb_sndbulkpipe(i32 %102, i32 %103)
  %105 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %106 = load i32, i32* @gs_usb_xmit_callback, align 4
  %107 = load %struct.gs_tx_context*, %struct.gs_tx_context** %13, align 8
  %108 = call i32 @usb_fill_bulk_urb(%struct.urb* %96, i32 %99, i32 %104, %struct.gs_host_frame* %105, i32 20, i32 %106, %struct.gs_tx_context* %107)
  %109 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %110 = load %struct.urb*, %struct.urb** %8, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.urb*, %struct.urb** %8, align 8
  %115 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %116 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %115, i32 0, i32 2
  %117 = call i32 @usb_anchor_urb(%struct.urb* %114, i32* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @can_put_echo_skb(%struct.sk_buff* %118, %struct.net_device* %119, i32 %120)
  %122 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %123 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %122, i32 0, i32 1
  %124 = call i32 @atomic_inc(i32* %123)
  %125 = load %struct.urb*, %struct.urb** %8, align 8
  %126 = load i32, i32* @GFP_ATOMIC, align 4
  %127 = call i32 @usb_submit_urb(%struct.urb* %125, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %63
  %132 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %133 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %132, i32 0, i32 1
  %134 = call i32 @atomic_dec(i32* %133)
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @can_free_echo_skb(%struct.net_device* %135, i32 %136)
  %138 = load %struct.gs_tx_context*, %struct.gs_tx_context** %13, align 8
  %139 = call i32 @gs_free_tx_context(%struct.gs_tx_context* %138)
  %140 = load %struct.urb*, %struct.urb** %8, align 8
  %141 = call i32 @usb_unanchor_urb(%struct.urb* %140)
  %142 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %143 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %146 = load %struct.urb*, %struct.urb** %8, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @usb_free_coherent(i32 %144, i32 20, %struct.gs_host_frame* %145, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %131
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = call i32 @netif_device_detach(%struct.net_device* %155)
  br label %165

157:                                              ; preds = %131
  %158 = load %struct.net_device*, %struct.net_device** %5, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %162 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %157, %154
  br label %176

166:                                              ; preds = %63
  %167 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %168 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %167, i32 0, i32 1
  %169 = call i32 @atomic_read(i32* %168)
  %170 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %171 = icmp uge i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.net_device*, %struct.net_device** %5, align 8
  %174 = call i32 @netif_stop_queue(%struct.net_device* %173)
  br label %175

175:                                              ; preds = %172, %166
  br label %176

176:                                              ; preds = %175, %165
  %177 = load %struct.urb*, %struct.urb** %8, align 8
  %178 = call i32 @usb_free_urb(%struct.urb* %177)
  %179 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %179, i32* %3, align 4
  br label %202

180:                                              ; preds = %59
  %181 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %182 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.gs_host_frame*, %struct.gs_host_frame** %9, align 8
  %185 = load %struct.urb*, %struct.urb** %8, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @usb_free_coherent(i32 %183, i32 20, %struct.gs_host_frame* %184, i32 %187)
  br label %189

189:                                              ; preds = %180, %49
  %190 = load %struct.urb*, %struct.urb** %8, align 8
  %191 = call i32 @usb_free_urb(%struct.urb* %190)
  br label %192

192:                                              ; preds = %189, %38
  %193 = load %struct.gs_tx_context*, %struct.gs_tx_context** %13, align 8
  %194 = call i32 @gs_free_tx_context(%struct.gs_tx_context* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = call i32 @dev_kfree_skb(%struct.sk_buff* %195)
  %197 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %198 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %192, %176, %31, %24
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.gs_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.gs_tx_context* @gs_alloc_tx_context(%struct.gs_can*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.gs_host_frame* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, %struct.gs_host_frame*, i32, i32, %struct.gs_tx_context*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @gs_free_tx_context(%struct.gs_tx_context*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, %struct.gs_host_frame*, i32) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
