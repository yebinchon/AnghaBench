; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { i32, i32 }

@DMATXCTRL = common dso_local global i32 0, align 4
@DMATXSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xge_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xge_pdata*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %4)
  store %struct.xge_pdata* %5, %struct.xge_pdata** %3, align 8
  %6 = call i32 (...) @rtnl_lock()
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_running(%struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %15 = call i32 @xge_intr_disable(%struct.xge_pdata* %14)
  %16 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %16, i32 0, i32 0
  %18 = call i32 @napi_disable(i32* %17)
  %19 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %20 = load i32, i32* @DMATXCTRL, align 4
  %21 = call i32 @xge_wr_csr(%struct.xge_pdata* %19, i32 %20, i32 0)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @xge_txc_poll(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @xge_free_pending_skb(%struct.net_device* %24)
  %26 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %27 = load i32, i32* @DMATXSTATUS, align 4
  %28 = call i32 @xge_wr_csr(%struct.xge_pdata* %26, i32 %27, i32 -1)
  %29 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %30 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xge_setup_desc(i32 %31)
  %33 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %34 = call i32 @xge_update_tx_desc_addr(%struct.xge_pdata* %33)
  %35 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %36 = call i32 @xge_mac_init(%struct.xge_pdata* %35)
  %37 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %38 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %37, i32 0, i32 0
  %39 = call i32 @napi_enable(i32* %38)
  %40 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %41 = call i32 @xge_intr_enable(%struct.xge_pdata* %40)
  %42 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %43 = call i32 @xge_mac_enable(%struct.xge_pdata* %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @netif_start_queue(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %11, %10
  %47 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @xge_intr_disable(%struct.xge_pdata*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

declare dso_local i32 @xge_txc_poll(%struct.net_device*) #1

declare dso_local i32 @xge_free_pending_skb(%struct.net_device*) #1

declare dso_local i32 @xge_setup_desc(i32) #1

declare dso_local i32 @xge_update_tx_desc_addr(%struct.xge_pdata*) #1

declare dso_local i32 @xge_mac_init(%struct.xge_pdata*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @xge_intr_enable(%struct.xge_pdata*) #1

declare dso_local i32 @xge_mac_enable(%struct.xge_pdata*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
