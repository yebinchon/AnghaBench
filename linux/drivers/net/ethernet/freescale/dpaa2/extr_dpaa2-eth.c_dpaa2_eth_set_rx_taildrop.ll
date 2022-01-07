; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_rx_taildrop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_rx_taildrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.dpni_taildrop = type { i32, i32, i32 }

@DPAA2_ETH_TAILDROP_THRESH = common dso_local global i32 0, align 4
@DPAA2_RX_FQ = common dso_local global i64 0, align 8
@DPNI_CP_QUEUE = common dso_local global i32 0, align 4
@DPNI_QUEUE_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dpni_set_taildrop() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*, i32)* @dpaa2_eth_set_rx_taildrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa2_eth_set_rx_taildrop(%struct.dpaa2_eth_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpni_taildrop, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.dpni_taildrop* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %10 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @DPAA2_ETH_TAILDROP_THRESH, align 4
  %19 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %64, %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %28 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DPAA2_RX_FQ, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %64

38:                                               ; preds = %26
  %39 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %43 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DPNI_CP_QUEUE, align 4
  %46 = load i32, i32* @DPNI_QUEUE_RX, align 4
  %47 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %48 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dpni_set_taildrop(i32 %41, i32 0, i32 %44, i32 %45, i32 %46, i32 0, i32 %54, %struct.dpni_taildrop* %5)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %38
  %59 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %60 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netdev_err(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %67

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %20

67:                                               ; preds = %58, %20
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %70 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpni_set_taildrop(i32, i32, i32, i32, i32, i32, i32, %struct.dpni_taildrop*) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
