; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_skb_return.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_skb_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

@EVENT_RX_PAUSED = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"< rx, len %zu, type 0x%x\0A\00", align 1
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"netif_rx status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_skb_return(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pcpu_sw_netstats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %10)
  store %struct.pcpu_sw_netstats* %11, %struct.pcpu_sw_netstats** %5, align 8
  %12 = load i32, i32* @EVENT_RX_PAUSED, align 4
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_queue_tail(i32* %19, %struct.sk_buff* %20)
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @eth_type_trans(%struct.sk_buff* %28, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %37 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %36, i32 0, i32 0
  %38 = call i64 @u64_stats_update_begin_irqsave(i32* %37)
  store i64 %38, i64* %6, align 8
  %39 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %40 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %47 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %53 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @u64_stats_update_end_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %57 = load i32, i32* @rx_status, align 4
  %58 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %59 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.usbnet*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.usbnet* %56, i32 %57, i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memset(i32 %72, i32 0, i32 4)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i64 @skb_defer_rx_timestamp(%struct.sk_buff* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %35
  br label %92

78:                                               ; preds = %35
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @netif_rx(%struct.sk_buff* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NET_RX_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %86 = load i32, i32* @rx_err, align 4
  %87 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %88 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.usbnet*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.usbnet* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %17, %77, %84, %78
  ret void
}

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @u64_stats_update_begin_irqsave(i32*) #1

declare dso_local i32 @u64_stats_update_end_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @skb_defer_rx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
