; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_update_xps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_update_xps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.dpaa2_eth_fq*, %struct.net_device* }
%struct.dpaa2_eth_fq = type { i32 }
%struct.net_device = type { i64 }
%struct.cpumask = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Error setting XPS queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @update_xps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_xps(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cpumask, align 4
  %5 = alloca %struct.dpaa2_eth_fq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  %10 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %11 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %14 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i64 [ %17, %19 ], [ 1, %20 ]
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %22, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %54, %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %33 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %32, i32 0, i32 0
  %34 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = srem i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %34, i64 %38
  store %struct.dpaa2_eth_fq* %39, %struct.dpaa2_eth_fq** %5, align 8
  %40 = call i32 @cpumask_clear(%struct.cpumask* %4)
  %41 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %42 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpumask_set_cpu(i32 %43, %struct.cpumask* %4)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @netif_set_xps_queue(%struct.net_device* %45, %struct.cpumask* %4, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netdev_warn_once(%struct.net_device* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %57

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %27

57:                                               ; preds = %50, %27
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @cpumask_clear(%struct.cpumask*) #1

declare dso_local i32 @cpumask_set_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @netif_set_xps_queue(%struct.net_device*, %struct.cpumask*, i32) #1

declare dso_local i32 @netdev_warn_once(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
