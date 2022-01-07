; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ptp.c_cxgb4_ptp_read_hwstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ptp.c_cxgb4_ptp_read_hwstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32* }
%struct.port_info = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@MAC_PORT_TX_TS_VAL_LO = common dso_local global i32 0, align 4
@MAC_PORT_TX_TS_VAL_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_ptp_read_hwstamp(%struct.adapter* %0, %struct.port_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.port_info* %1, %struct.port_info** %4, align 8
  store %struct.skb_shared_hwtstamps* null, %struct.skb_shared_hwtstamps** %5, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(i32* %9)
  store %struct.skb_shared_hwtstamps* %10, %struct.skb_shared_hwtstamps** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load %struct.port_info*, %struct.port_info** %4, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAC_PORT_TX_TS_VAL_LO, align 4
  %16 = call i32 @T5_PORT_REG(i32 %14, i32 %15)
  %17 = call i32 @t4_read_reg(%struct.adapter* %11, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = load %struct.port_info*, %struct.port_info** %4, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAC_PORT_TX_TS_VAL_HI, align 4
  %23 = call i32 @T5_PORT_REG(i32 %21, i32 %22)
  %24 = call i32 @t4_read_reg(%struct.adapter* %18, i32 %23)
  %25 = shl i32 %24, 32
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ns_to_ktime(i32 %28)
  %30 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %31 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %36 = call i32 @skb_tstamp_tx(i32* %34, %struct.skb_shared_hwtstamps* %35)
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_kfree_skb_any(i32* %39)
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  ret void
}

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(i32*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @T5_PORT_REG(i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @skb_tstamp_tx(i32*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
