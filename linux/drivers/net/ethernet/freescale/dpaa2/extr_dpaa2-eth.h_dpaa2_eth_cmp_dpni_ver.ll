; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.h_dpaa2_eth_cmp_dpni_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.h_dpaa2_eth_cmp_dpni_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, i64, i64)* @dpaa2_eth_cmp_dpni_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_cmp_dpni_ver(%struct.dpaa2_eth_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %7, align 8
  %19 = sub nsw i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %23 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
