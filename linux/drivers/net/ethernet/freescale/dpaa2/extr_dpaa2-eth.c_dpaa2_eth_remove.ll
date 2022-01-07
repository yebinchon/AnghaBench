; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dpaa2_eth_priv = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Removed interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dpaa2_eth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_remove(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %2, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.net_device* @dev_get_drvdata(%struct.device* %8)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dpaa2_eth_priv* %11, %struct.dpaa2_eth_priv** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kthread_stop(i32 %21)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %25 = call i32 @fsl_mc_free_irqs(%struct.fsl_mc_device* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %28 = call i32 @free_rings(%struct.dpaa2_eth_priv* %27)
  %29 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %30 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free_percpu(i32 %31)
  %33 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %34 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free_percpu(i32 %35)
  %37 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %38 = call i32 @del_ch_napi(%struct.dpaa2_eth_priv* %37)
  %39 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %40 = call i32 @free_dpbp(%struct.dpaa2_eth_priv* %39)
  %41 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %42 = call i32 @free_dpio(%struct.dpaa2_eth_priv* %41)
  %43 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %44 = call i32 @free_dpni(%struct.dpaa2_eth_priv* %43)
  %45 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %46 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @fsl_mc_portal_free(i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @fsl_mc_free_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @free_rings(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @del_ch_napi(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_dpbp(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_dpio(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_dpni(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @fsl_mc_portal_free(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
