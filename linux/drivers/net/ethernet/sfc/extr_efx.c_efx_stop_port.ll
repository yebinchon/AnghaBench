; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_stop_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_stop_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stop port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_stop_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_stop_port(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @ifdown, align 4
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @netif_dbg(%struct.efx_nic* %3, i32 %4, i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %9)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 4
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netif_addr_lock_bh(i32 %21)
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_addr_unlock_bh(i32 %25)
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 2
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = call i32 @efx_selftest_async_cancel(%struct.efx_nic* %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = call i32 @cancel_work_sync(i32* %33)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netif_addr_lock_bh(i32) #1

declare dso_local i32 @netif_addr_unlock_bh(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @efx_selftest_async_cancel(%struct.efx_nic*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
