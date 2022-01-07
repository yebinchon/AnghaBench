; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_rx_csum_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_rx_csum_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qm_fd = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@FM_FD_STAT_L4CV = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_priv*, %struct.qm_fd*)* @rx_csum_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_csum_offload(%struct.dpaa_priv* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa_priv*, align 8
  %5 = alloca %struct.qm_fd*, align 8
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %4, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %5, align 8
  %6 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %7 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %16 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = load i32, i32* @FM_FD_STAT_L4CV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %14, %2
  %25 = load i32, i32* @CHECKSUM_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
