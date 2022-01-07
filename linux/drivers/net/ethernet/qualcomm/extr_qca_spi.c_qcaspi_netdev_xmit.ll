; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.qcaspi = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.sk_buff**, i32 }

@QCAFRM_MIN_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"queue was unexpectedly full!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@QCAFRM_HEADER_LEN = common dso_local global i64 0, align 8
@QCAFRM_FOOTER_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Tx-ing packet: Size: 0x%08x\0A\00", align 1
@QCASPI_HW_PKT_LEN = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qcaspi_netdev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_netdev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.qcaspi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %12)
  store %struct.qcaspi* %13, %struct.qcaspi** %8, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QCAFRM_MIN_LEN, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i64, i64* @QCAFRM_MIN_LEN, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %27 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %28, align 8
  %30 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %31 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %29, i64 %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %25
  %38 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %39 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_warn(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %43 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_stop_queue(i32 %44)
  %46 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %47 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %193

52:                                               ; preds = %25
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i64 @skb_headroom(%struct.sk_buff* %53)
  %55 = load i64, i64* @QCAFRM_HEADER_LEN, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i64 @skb_tailroom(%struct.sk_buff* %58)
  %60 = load i64, i64* @QCAFRM_FOOTER_LEN, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %57, %52
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i64, i64* @QCAFRM_HEADER_LEN, align 8
  %67 = load i64, i64* @QCAFRM_FOOTER_LEN, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %65, i64 %66, i64 %69, i32 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %10, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %76 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %80, i32* %3, align 4
  br label %193

81:                                               ; preds = %64
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @dev_kfree_skb(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %4, align 8
  br label %85

85:                                               ; preds = %81, %57
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %88, %89
  store i64 %90, i64* %6, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = load i64, i64* @QCAFRM_HEADER_LEN, align 8
  %93 = call i64* @skb_push(%struct.sk_buff* %91, i64 %92)
  store i64* %93, i64** %7, align 8
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @qcafrm_create_header(i64* %94, i64 %95)
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64* @skb_put_zero(%struct.sk_buff* %100, i64 %101)
  store i64* %102, i64** %7, align 8
  br label %103

103:                                              ; preds = %99, %85
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i64, i64* @QCAFRM_FOOTER_LEN, align 8
  %106 = call i64* @skb_put(%struct.sk_buff* %104, i64 %105)
  store i64* %106, i64** %7, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = call i32 @qcafrm_create_footer(i64* %107)
  %109 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %110 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @netdev_dbg(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QCASPI_HW_PKT_LEN, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %122 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %120
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 8
  %128 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %129 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %136 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %140, %103
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %144 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load %struct.sk_buff**, %struct.sk_buff*** %145, align 8
  %147 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %148 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %146, i64 %150
  store %struct.sk_buff* %142, %struct.sk_buff** %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %155 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i64 %153, i64* %156, align 8
  %157 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %158 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %157, i32 0, i32 3
  %159 = call i32 @qcaspi_tx_ring_has_space(%struct.TYPE_6__* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %141
  %162 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %163 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @netif_stop_queue(i32 %164)
  %166 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %167 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %161, %141
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = call i32 @netif_trans_update(%struct.net_device* %172)
  %174 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %175 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = icmp ne %struct.TYPE_5__* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %171
  %179 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %180 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TASK_RUNNING, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = load %struct.qcaspi*, %struct.qcaspi** %8, align 8
  %188 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = call i32 @wake_up_process(%struct.TYPE_5__* %189)
  br label %191

191:                                              ; preds = %186, %178, %171
  %192 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %74, %37
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @qcafrm_create_header(i64*, i64) #1

declare dso_local i64* @skb_put_zero(%struct.sk_buff*, i64) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @qcafrm_create_footer(i64*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64) #1

declare dso_local i32 @qcaspi_tx_ring_has_space(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @wake_up_process(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
