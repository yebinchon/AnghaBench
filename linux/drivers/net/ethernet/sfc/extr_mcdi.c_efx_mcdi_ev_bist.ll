; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_ev_bist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_ev_bist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i64, i32, i32, i32, i64, i64, i32 }

@MCDI_MODE_EVENTS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@RESET_TYPE_MC_BIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_mcdi_ev_bist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_ev_bist(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %4)
  store %struct.efx_mcdi_iface* %5, %struct.efx_mcdi_iface** %3, align 8
  %6 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %7 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %6, i32 0, i32 2
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %12 = call i32 @efx_mcdi_proxy_abort(%struct.efx_mcdi_iface* %11)
  %13 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %14 = call i64 @efx_mcdi_complete_sync(%struct.efx_mcdi_iface* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %18 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCDI_MODE_EVENTS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %26 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %28 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %30 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %32 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %22, %16
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %38 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %40 = load i32, i32* @RESET_TYPE_MC_BIST, align 4
  %41 = call i32 @efx_schedule_reset(%struct.efx_nic* %39, i32 %40)
  %42 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %43 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @efx_mcdi_proxy_abort(%struct.efx_mcdi_iface*) #1

declare dso_local i64 @efx_mcdi_complete_sync(%struct.efx_mcdi_iface*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
