; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_conf_dflt_dqrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_conf_dflt_dqrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%struct.qm_dqrr_entry = type { i32 }
%struct.dpaa_percpu_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.dpaa_priv = type { i32 }
%struct.dpaa_fq = type { %struct.net_device* }

@qman_cb_dqrr_stop = common dso_local global i32 0, align 4
@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* @conf_dflt_dqrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_dflt_dqrr(%struct.qman_portal* %0, %struct.qman_fq* %1, %struct.qm_dqrr_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_portal*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca %struct.qm_dqrr_entry*, align 8
  %8 = alloca %struct.dpaa_percpu_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dpaa_priv*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store %struct.qm_dqrr_entry* %2, %struct.qm_dqrr_entry** %7, align 8
  %11 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %12 = bitcast %struct.qman_fq* %11 to %struct.dpaa_fq*
  %13 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %9, align 8
  %16 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.dpaa_priv* %16, %struct.dpaa_priv** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %19 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %20 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %19, i32 0, i32 0
  %21 = call i32 @trace_dpaa_tx_conf_fd(%struct.net_device* %17, %struct.qman_fq* %18, i32* %20)
  %22 = load %struct.dpaa_priv*, %struct.dpaa_priv** %10, align 8
  %23 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.dpaa_percpu_priv* @this_cpu_ptr(i32 %24)
  store %struct.dpaa_percpu_priv* %25, %struct.dpaa_percpu_priv** %8, align 8
  %26 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %27 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %28 = call i64 @dpaa_eth_napi_schedule(%struct.dpaa_percpu_priv* %26, %struct.qman_portal* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @qman_cb_dqrr_stop, align 4
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = load %struct.dpaa_priv*, %struct.dpaa_priv** %10, align 8
  %35 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %36 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %37 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %36, i32 0, i32 0
  %38 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %39 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dpaa_tx_conf(%struct.net_device* %33, %struct.dpaa_priv* %34, %struct.dpaa_percpu_priv* %35, i32* %37, i32 %40)
  %42 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @trace_dpaa_tx_conf_fd(%struct.net_device*, %struct.qman_fq*, i32*) #1

declare dso_local %struct.dpaa_percpu_priv* @this_cpu_ptr(i32) #1

declare dso_local i64 @dpaa_eth_napi_schedule(%struct.dpaa_percpu_priv*, %struct.qman_portal*) #1

declare dso_local i32 @dpaa_tx_conf(%struct.net_device*, %struct.dpaa_priv*, %struct.dpaa_percpu_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
