; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_egress_ern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_egress_ern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%union.qm_mr_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qm_fd }
%struct.qm_fd = type { i32 }
%struct.dpaa_percpu_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dpaa_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dpaa_fq = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_portal*, %struct.qman_fq*, %union.qm_mr_entry*)* @egress_ern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egress_ern(%struct.qman_portal* %0, %struct.qman_fq* %1, %union.qm_mr_entry* %2) #0 {
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %union.qm_mr_entry*, align 8
  %7 = alloca %struct.qm_fd*, align 8
  %8 = alloca %struct.dpaa_percpu_priv*, align 8
  %9 = alloca %struct.dpaa_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store %union.qm_mr_entry* %2, %union.qm_mr_entry** %6, align 8
  %12 = load %union.qm_mr_entry*, %union.qm_mr_entry** %6, align 8
  %13 = bitcast %union.qm_mr_entry* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.qm_fd* %14, %struct.qm_fd** %7, align 8
  %15 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %16 = bitcast %struct.qman_fq* %15 to %struct.dpaa_fq*
  %17 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.dpaa_priv* %20, %struct.dpaa_priv** %9, align 8
  %21 = load %struct.dpaa_priv*, %struct.dpaa_priv** %9, align 8
  %22 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.dpaa_percpu_priv* @this_cpu_ptr(i32 %23)
  store %struct.dpaa_percpu_priv* %24, %struct.dpaa_percpu_priv** %8, align 8
  %25 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %26 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %31 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %36 = load %union.qm_mr_entry*, %union.qm_mr_entry** %6, align 8
  %37 = call i32 @count_ern(%struct.dpaa_percpu_priv* %35, %union.qm_mr_entry* %36)
  %38 = load %struct.dpaa_priv*, %struct.dpaa_priv** %9, align 8
  %39 = load %struct.qm_fd*, %struct.qm_fd** %7, align 8
  %40 = call %struct.sk_buff* @dpaa_cleanup_tx_fd(%struct.dpaa_priv* %38, %struct.qm_fd* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %41)
  ret void
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dpaa_percpu_priv* @this_cpu_ptr(i32) #1

declare dso_local i32 @count_ern(%struct.dpaa_percpu_priv*, %union.qm_mr_entry*) #1

declare dso_local %struct.sk_buff* @dpaa_cleanup_tx_fd(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
