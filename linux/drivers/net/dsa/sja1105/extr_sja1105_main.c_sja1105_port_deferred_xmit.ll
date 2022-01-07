; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_port_deferred_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_port_deferred_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { i32, i32, i32, %struct.TYPE_4__, %struct.sja1105_port* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.sja1105_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.sk_buff* }
%struct.TYPE_5__ = type { i32 }

@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"xmit: timed out polling for tstamp\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.sk_buff*)* @sja1105_port_deferred_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_port_deferred_xmit(%struct.dsa_switch* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sja1105_private*, align 8
  %8 = alloca %struct.sja1105_port*, align 8
  %9 = alloca %struct.skb_shared_hwtstamps, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 1
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %16, align 8
  store %struct.sja1105_private* %17, %struct.sja1105_private** %7, align 8
  %18 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %19 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %18, i32 0, i32 4
  %20 = load %struct.sja1105_port*, %struct.sja1105_port** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %20, i64 %22
  store %struct.sja1105_port* %23, %struct.sja1105_port** %8, align 8
  %24 = bitcast %struct.skb_shared_hwtstamps* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load %struct.sja1105_port*, %struct.sja1105_port** %8, align 8
  %26 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %29 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.TYPE_6__* @DSA_SKB_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %11, align 8
  %35 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @sja1105_mgmt_xmit(%struct.dsa_switch* %35, i32 %36, i32 %37, %struct.sk_buff* %38, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  br label %95

48:                                               ; preds = %3
  %49 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %56 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %59 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %60, align 8
  %62 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %63 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %62, i32 0, i32 3
  %64 = call i32 %61(%struct.TYPE_4__* %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @sja1105_ptpegr_ts_poll(%struct.sja1105_private* %65, i32 %66, i32* %13)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %48
  %71 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %72 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %91

77:                                               ; preds = %48
  %78 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @sja1105_tstamp_reconstruct(%struct.sja1105_private* %78, i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %83 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %82, i32 0, i32 2
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @timecounter_cyc2time(i32* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @ns_to_ktime(i32 %86)
  %88 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %9, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = call i32 @skb_complete_tx_timestamp(%struct.sk_buff* %89, %struct.skb_shared_hwtstamps* %9)
  br label %91

91:                                               ; preds = %77, %70
  %92 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %93 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %47
  %96 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %97 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.TYPE_6__* @DSA_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @sja1105_mgmt_xmit(%struct.dsa_switch*, i32, i32, %struct.sk_buff*, i32) #2

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #2

declare dso_local i32 @sja1105_ptpegr_ts_poll(%struct.sja1105_private*, i32, i32*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @sja1105_tstamp_reconstruct(%struct.sja1105_private*, i32, i32) #2

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #2

declare dso_local i32 @ns_to_ktime(i32) #2

declare dso_local i32 @skb_complete_tx_timestamp(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
