; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_link_state_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_link_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.dpni_link_state, i32, i32, i32 }
%struct.dpni_link_state = type { i32, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dpni_get_link_state() failed\0A\00", align 1
@DPNI_LINK_OPT_PAUSE = common dso_local global i32 0, align 4
@DPNI_LINK_OPT_ASYM_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Link Event: state %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @link_state_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_state_update(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.dpni_link_state, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %7 = bitcast %struct.dpni_link_state* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dpni_get_link_state(i32 %10, i32 0, i32 %13, %struct.dpni_link_state* %4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %95

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.dpni_link_state, %struct.dpni_link_state* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DPNI_LINK_OPT_PAUSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.dpni_link_state, %struct.dpni_link_state* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DPNI_LINK_OPT_ASYM_PAUSE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = xor i32 %32, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @dpaa2_eth_set_rx_taildrop(%struct.dpaa2_eth_priv* %42, i32 %46)
  %48 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %49 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.dpni_link_state, %struct.dpni_link_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.dpni_link_state, %struct.dpni_link_state* %4, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %90

56:                                               ; preds = %24
  %57 = getelementptr inbounds %struct.dpni_link_state, %struct.dpni_link_state* %4, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %62 = call i32 @update_tx_fqids(%struct.dpaa2_eth_priv* %61)
  %63 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %64 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netif_carrier_on(i32 %65)
  %67 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %68 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_tx_start_all_queues(i32 %69)
  br label %80

71:                                               ; preds = %56
  %72 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %73 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netif_tx_stop_all_queues(i32 %74)
  %76 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %77 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netif_carrier_off(i32 %78)
  br label %80

80:                                               ; preds = %71, %60
  %81 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %82 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.dpni_link_state, %struct.dpni_link_state* %4, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %89 = call i32 @netdev_info(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %80, %55
  %91 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %92 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %91, i32 0, i32 0
  %93 = bitcast %struct.dpni_link_state* %92 to i8*
  %94 = bitcast %struct.dpni_link_state* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpni_get_link_state(i32, i32, i32, %struct.dpni_link_state*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i32 @dpaa2_eth_set_rx_taildrop(%struct.dpaa2_eth_priv*, i32) #2

declare dso_local i32 @update_tx_fqids(%struct.dpaa2_eth_priv*) #2

declare dso_local i32 @netif_carrier_on(i32) #2

declare dso_local i32 @netif_tx_start_all_queues(i32) #2

declare dso_local i32 @netif_tx_stop_all_queues(i32) #2

declare dso_local i32 @netif_carrier_off(i32) #2

declare dso_local i32 @netdev_info(i32, i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
