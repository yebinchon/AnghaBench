; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qcauart_netdev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qcauart_netdev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.qcauart = type { i32, i64*, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"xmit: iface is down\0A\00", align 1
@QCAFRM_MIN_LEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qcauart_netdev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcauart_netdev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.qcauart*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qcauart* @netdev_priv(%struct.net_device* %12)
  store %struct.qcauart* %13, %struct.qcauart** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %15 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %14, i32 0, i32 3
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %18 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %26 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %29 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netdev_warn(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %142

32:                                               ; preds = %2
  %33 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %34 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QCAFRM_MIN_LEN, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i64, i64* @QCAFRM_MIN_LEN, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %41, %32
  %48 = load i64*, i64** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @qcafrm_create_header(i64* %48, i64 %53)
  %55 = load i64*, i64** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64* %57, i64** %9, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @memcpy(i64* %58, i32 %61, i64 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 %68
  store i64* %70, i64** %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %47
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @memset(i64* %74, i32 0, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 %77
  store i64* %79, i64** %9, align 8
  br label %80

80:                                               ; preds = %73, %47
  %81 = load i64*, i64** %9, align 8
  %82 = call i32 @qcafrm_create_footer(i64* %81)
  %83 = load i64*, i64** %9, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %9, align 8
  %86 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %87 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @netif_stop_queue(i32 %88)
  %90 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %91 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %94 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %98 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = ptrtoint i64* %96 to i64
  %101 = ptrtoint i64* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @serdev_device_write_buf(i32 %92, i64* %95, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %80
  %109 = load i64*, i64** %9, align 8
  %110 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %111 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = ptrtoint i64* %109 to i64
  %114 = ptrtoint i64* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %116, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %122 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %124 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %130 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %129, i32 0, i32 2
  store i64* %128, i64** %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %108, %80
  %137 = load %struct.qcauart*, %struct.qcauart** %6, align 8
  %138 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %137, i32 0, i32 3
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = call i32 @netif_trans_update(%struct.net_device* %140)
  br label %142

142:                                              ; preds = %136, %24
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %143)
  %145 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %145
}

declare dso_local %struct.qcauart* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @qcafrm_create_header(i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @qcafrm_create_footer(i64*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @serdev_device_write_buf(i32, i64*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
