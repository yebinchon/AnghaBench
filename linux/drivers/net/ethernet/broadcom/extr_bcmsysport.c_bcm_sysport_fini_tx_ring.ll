; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_fini_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_fini_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, %struct.bcm_sysport_tx_ring* }
%struct.bcm_sysport_tx_ring = type { i64, i64, i32*, i32 }

@TDMA_STATUS = common dso_local global i32 0, align 4
@TDMA_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TDMA not stopped!\0A\00", align 1
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"TDMA fini done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*, i32)* @bcm_sysport_fini_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_fini_tx_ring(%struct.bcm_sysport_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %7, i32 0, i32 1
  %9 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %9, i64 %11
  store %struct.bcm_sysport_tx_ring* %12, %struct.bcm_sysport_tx_ring** %5, align 8
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %14 = load i32, i32* @TDMA_STATUS, align 4
  %15 = call i32 @tdma_readl(%struct.bcm_sysport_priv* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TDMA_DISABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %22 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netdev_warn(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  %32 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %32, i32 0, i32 3
  %34 = call i32 @napi_disable(i32* %33)
  %35 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %35, i32 0, i32 3
  %37 = call i32 @netif_napi_del(i32* %36)
  %38 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %39 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %40 = call i32 @bcm_sysport_tx_clean(%struct.bcm_sysport_priv* %38, %struct.bcm_sysport_tx_ring* %39)
  %41 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %42 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %46 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %52 = load i32, i32* @hw, align 4
  %53 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %54 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %51, i32 %52, i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @tdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @bcm_sysport_tx_clean(%struct.bcm_sysport_priv*, %struct.bcm_sysport_tx_ring*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
