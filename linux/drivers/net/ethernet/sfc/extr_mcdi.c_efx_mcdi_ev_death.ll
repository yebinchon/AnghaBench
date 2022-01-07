; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_ev_death.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_ev_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }
%struct.efx_mcdi_iface = type { i64, i32, i32, i32, i32, i64, i64 }

@MCDI_MODE_EVENTS = common dso_local global i64 0, align 8
@MCDI_STATUS_DELAY_COUNT = common dso_local global i32 0, align 4
@MCDI_STATUS_DELAY_US = common dso_local global i32 0, align 4
@RESET_TYPE_MC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @efx_mcdi_ev_death to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_ev_death(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_mcdi_iface*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %7)
  store %struct.efx_mcdi_iface* %8, %struct.efx_mcdi_iface** %5, align 8
  %9 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %10 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %9, i32 0, i32 3
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %13 = call i32 @efx_mcdi_proxy_abort(%struct.efx_mcdi_iface* %12)
  %14 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %15 = call i64 @efx_mcdi_complete_sync(%struct.efx_mcdi_iface* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %19 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MCDI_MODE_EVENTS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %26 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %28 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %30 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %32 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %23, %17
  br label %77

36:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MCDI_STATUS_DELAY_COUNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = call i32 @efx_mcdi_poll_reboot(%struct.efx_nic* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @MCDI_STATUS_DELAY_US, align 4
  %49 = call i32 @udelay(i32 %48)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %37

53:                                               ; preds = %46, %37
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %60, align 8
  %62 = icmp ne i32 (%struct.efx_nic*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %67, align 8
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = call i32 %68(%struct.efx_nic* %69)
  br label %71

71:                                               ; preds = %63, %56, %53
  %72 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %73 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = load i32, i32* @RESET_TYPE_MC_FAILURE, align 4
  %76 = call i32 @efx_schedule_reset(%struct.efx_nic* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %35
  %78 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %79 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %78, i32 0, i32 3
  %80 = call i32 @spin_unlock(i32* %79)
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @efx_mcdi_proxy_abort(%struct.efx_mcdi_iface*) #1

declare dso_local i64 @efx_mcdi_complete_sync(%struct.efx_mcdi_iface*) #1

declare dso_local i32 @efx_mcdi_poll_reboot(%struct.efx_nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
