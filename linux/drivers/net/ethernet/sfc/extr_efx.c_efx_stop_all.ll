; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_stop_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_stop_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*, i32*, i32*)*, i32 (%struct.efx_nic*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_stop_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_stop_all(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %3)
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = call i32 %15(%struct.efx_nic* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.efx_nic*, i32*, i32*)*, i32 (%struct.efx_nic*, i32*, i32*)** %24, align 8
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = call i32 %25(%struct.efx_nic* %26, i32* null, i32* null)
  %28 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %34, align 8
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = call i32 %35(%struct.efx_nic* %36)
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = call i32 @efx_stop_port(%struct.efx_nic* %38)
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @netif_running(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %10
  %46 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @netif_device_present(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %10
  %52 = phi i1 [ false, %10 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netif_tx_disable(i32 %57)
  %59 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %60 = call i32 @efx_stop_datapath(%struct.efx_nic* %59)
  br label %61

61:                                               ; preds = %51, %9
  ret void
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @efx_stop_port(%struct.efx_nic*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @efx_stop_datapath(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
