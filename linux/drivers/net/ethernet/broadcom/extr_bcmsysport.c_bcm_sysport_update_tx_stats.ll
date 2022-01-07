; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_update_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_update_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, %struct.bcm_sysport_tx_ring*, %struct.TYPE_2__* }
%struct.bcm_sysport_tx_ring = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*, i64*, i64*)* @bcm_sysport_update_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_update_tx_stats(%struct.bcm_sysport_priv* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %52, %3
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %15 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %12
  %21 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %21, i32 0, i32 1
  %23 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %23, i64 %25
  store %struct.bcm_sysport_tx_ring* %26, %struct.bcm_sysport_tx_ring** %7, align 8
  br label %27

27:                                               ; preds = %37, %20
  %28 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %28, i32 0, i32 0
  %30 = call i32 @u64_stats_fetch_begin_irq(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %32 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %35 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %39 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @u64_stats_fetch_retry_irq(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %27, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %12

55:                                               ; preds = %12
  ret void
}

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
