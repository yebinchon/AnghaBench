; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_net_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_net_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_txb = type { i32 }
%struct.net_device = type { i32 }
%struct.ipw_priv = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"dev->xmit(%d bytes)\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i64 0, align 8
@rtap_iface = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.libipw_txb*, %struct.net_device*, i32)* @ipw_net_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipw_net_hard_start_xmit(%struct.libipw_txb* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.libipw_txb*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.libipw_txb* %0, %struct.libipw_txb** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw_priv* %11, %struct.ipw_priv** %7, align 8
  %12 = load %struct.libipw_txb*, %struct.libipw_txb** %4, align 8
  %13 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IPW_DEBUG_TX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %21 = load %struct.libipw_txb*, %struct.libipw_txb** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ipw_tx_skb(%struct.ipw_priv* %20, %struct.libipw_txb* %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @NETDEV_TX_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %29 = call i32 @__ipw_led_activity_on(%struct.ipw_priv* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i64, i64* %9, align 8
  ret i64 %35
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_TX(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ipw_tx_skb(%struct.ipw_priv*, %struct.libipw_txb*, i32) #1

declare dso_local i32 @__ipw_led_activity_on(%struct.ipw_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
