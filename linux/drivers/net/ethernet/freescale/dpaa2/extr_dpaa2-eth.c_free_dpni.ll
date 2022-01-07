; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_free_dpni.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_free_dpni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dpni_reset() failed (err %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*)* @free_dpni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dpni(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  %4 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %5 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %8 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dpni_reset(i32 %6, i32 0, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @netdev_warn(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %21 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %24 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dpni_close(i32 %22, i32 0, i32 %25)
  ret void
}

declare dso_local i32 @dpni_reset(i32, i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @dpni_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
