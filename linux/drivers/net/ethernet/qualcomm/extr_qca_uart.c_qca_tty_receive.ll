; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qca_tty_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qca_tty_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.qcauart = type { %struct.TYPE_5__*, i32, %struct.net_device* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i64, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"recv: no RX tail\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"recv: invalid RX length\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"recv: out of RX resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*, i8*, i64)* @qca_tty_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_tty_receive(%struct.serdev_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qcauart*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %14 = call %struct.qcauart* @serdev_device_get_drvdata(%struct.serdev_device* %13)
  store %struct.qcauart* %14, %struct.qcauart** %8, align 8
  %15 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %16 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  store %struct.net_device_stats* %19, %struct.net_device_stats** %10, align 8
  %20 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %21 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @netdev_alloc_skb_ip_align(%struct.net_device* %25, i64 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_5__*
  %33 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %34 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %33, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %36 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %24
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %163

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48, %3
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %157, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %160

54:                                               ; preds = %50
  %55 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %56 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %55, i32 0, i32 1
  %57 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %58 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %63 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @skb_tailroom(%struct.TYPE_5__* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @qcafrm_fsm_decode(i32* %56, i32 %61, i32 %65, i8 zeroext %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  switch i32 %71, label %95 [
    i32 131, label %72
    i32 129, label %72
    i32 128, label %73
    i32 130, label %84
  ]

72:                                               ; preds = %54, %54
  br label %156

73:                                               ; preds = %54
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = call i32 @netdev_dbg(%struct.net_device* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %77 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %156

84:                                               ; preds = %54
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = call i32 @netdev_dbg(%struct.net_device* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %92 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %156

95:                                               ; preds = %54
  %96 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %102 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %106 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @skb_put(%struct.TYPE_5__* %107, i32 %108)
  %110 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %111 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %114 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @eth_type_trans(%struct.TYPE_5__* %112, i32 %117)
  %119 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %120 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %124 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %125 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  %128 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %129 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = call i32 @netif_rx_ni(%struct.TYPE_5__* %130)
  %132 = load %struct.net_device*, %struct.net_device** %9, align 8
  %133 = load %struct.net_device*, %struct.net_device** %9, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i8* @netdev_alloc_skb_ip_align(%struct.net_device* %132, i64 %137)
  %139 = bitcast i8* %138 to %struct.TYPE_5__*
  %140 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %141 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %140, i32 0, i32 0
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %141, align 8
  %142 = load %struct.qcauart*, %struct.qcauart** %8, align 8
  %143 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = icmp ne %struct.TYPE_5__* %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %95
  %147 = load %struct.net_device*, %struct.net_device** %9, align 8
  %148 = call i32 @netdev_dbg(%struct.net_device* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %149 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %150 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i64, i64* %11, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  br label %163

155:                                              ; preds = %95
  br label %156

156:                                              ; preds = %155, %84, %73, %72
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %11, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %11, align 8
  br label %50

160:                                              ; preds = %50
  %161 = load i64, i64* %11, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %146, %39
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.qcauart* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i8* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @qcafrm_fsm_decode(i32*, i32, i32, i8 zeroext) #1

declare dso_local i32 @skb_tailroom(%struct.TYPE_5__*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_put(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
