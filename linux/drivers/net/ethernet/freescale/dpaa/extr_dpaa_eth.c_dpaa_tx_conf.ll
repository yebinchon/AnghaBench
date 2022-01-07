; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_tx_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_tx_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa_priv = type { i32 }
%struct.dpaa_percpu_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qm_fd = type { i32 }
%struct.sk_buff = type { i32 }

@FM_FD_STAT_TX_ERRORS = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FD status = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dpaa_priv*, %struct.dpaa_percpu_priv*, %struct.qm_fd*, i32)* @dpaa_tx_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_tx_conf(%struct.net_device* %0, %struct.dpaa_priv* %1, %struct.dpaa_percpu_priv* %2, %struct.qm_fd* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dpaa_priv*, align 8
  %8 = alloca %struct.dpaa_percpu_priv*, align 8
  %9 = alloca %struct.qm_fd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.dpaa_priv* %1, %struct.dpaa_priv** %7, align 8
  store %struct.dpaa_percpu_priv* %2, %struct.dpaa_percpu_priv** %8, align 8
  store %struct.qm_fd* %3, %struct.qm_fd** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %13 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  %16 = load i32, i32* @FM_FD_STAT_TX_ERRORS, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = call i64 (...) @net_ratelimit()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.dpaa_priv*, %struct.dpaa_priv** %7, align 8
  %25 = load i32, i32* @hw, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %28 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = load i32, i32* @FM_FD_STAT_TX_ERRORS, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @netif_warn(%struct.dpaa_priv* %24, i32 %25, %struct.net_device* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %23, %20
  %35 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %36 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %5
  %41 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %42 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.dpaa_priv*, %struct.dpaa_priv** %7, align 8
  %46 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %47 = call %struct.sk_buff* @dpaa_cleanup_tx_fd(%struct.dpaa_priv* %45, %struct.qm_fd* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = call i32 @consume_skb(%struct.sk_buff* %48)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_warn(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @dpaa_cleanup_tx_fd(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
