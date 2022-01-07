; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_reset_mc_allocations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_reset_mc_allocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_3__, %struct.efx_ef10_nic_data* }
%struct.TYPE_3__ = type { i32 }
%struct.efx_ef10_nic_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@EFX_EF10_RSS_CONTEXT_INVALID = common dso_local global i32 0, align 4
@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_ef10_reset_mc_allocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_reset_mc_allocations(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 2
  %6 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  store %struct.efx_ef10_nic_data* %6, %struct.efx_ef10_nic_data** %3, align 8
  %7 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %8 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %10 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %12 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %14 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = call i32 @efx_ef10_forget_old_piobufs(%struct.efx_nic* %15)
  %17 = load i32, i32* @EFX_EF10_RSS_CONTEXT_INVALID, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %21, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %24 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %25 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  ret void
}

declare dso_local i32 @efx_ef10_forget_old_piobufs(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
