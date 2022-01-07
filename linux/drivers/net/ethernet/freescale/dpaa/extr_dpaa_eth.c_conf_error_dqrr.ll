; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_conf_error_dqrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_conf_error_dqrr.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* @conf_error_dqrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_error_dqrr(%struct.qman_portal* %0, %struct.qman_fq* %1, %struct.qm_dqrr_entry* %2) #0 {
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
  %17 = load %struct.dpaa_priv*, %struct.dpaa_priv** %10, align 8
  %18 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.dpaa_percpu_priv* @this_cpu_ptr(i32 %19)
  store %struct.dpaa_percpu_priv* %20, %struct.dpaa_percpu_priv** %8, align 8
  %21 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %22 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %23 = call i64 @dpaa_eth_napi_schedule(%struct.dpaa_percpu_priv* %21, %struct.qman_portal* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @qman_cb_dqrr_stop, align 4
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = load %struct.dpaa_priv*, %struct.dpaa_priv** %10, align 8
  %30 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %31 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %32 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %31, i32 0, i32 0
  %33 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %34 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dpaa_tx_error(%struct.net_device* %28, %struct.dpaa_priv* %29, %struct.dpaa_percpu_priv* %30, i32* %32, i32 %35)
  %37 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dpaa_percpu_priv* @this_cpu_ptr(i32) #1

declare dso_local i64 @dpaa_eth_napi_schedule(%struct.dpaa_percpu_priv*, %struct.qman_portal*) #1

declare dso_local i32 @dpaa_tx_error(%struct.net_device*, %struct.dpaa_priv*, %struct.dpaa_percpu_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
