; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_usrev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_usrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FRF_CZ_USREV_DIS = common dso_local global i32 0, align 4
@FRF_CZ_DFLT_EVQ = common dso_local global i32 0, align 4
@FR_CZ_USR_EV_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @efx_siena_sriov_usrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_siena_sriov_usrev(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.siena_nic_data*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.siena_nic_data*, %struct.siena_nic_data** %8, align 8
  store %struct.siena_nic_data* %9, %struct.siena_nic_data** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FRF_CZ_USREV_DIS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  %16 = load i32, i32* @FRF_CZ_DFLT_EVQ, align 4
  %17 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %18 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @EFX_POPULATE_OWORD_2(i32 %10, i32 %11, i32 %15, i32 %16, i32 %21)
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = load i32, i32* @FR_CZ_USR_EV_CFG, align 4
  %25 = call i32 @efx_writeo(%struct.efx_nic* %23, i32* %6, i32 %24)
  ret void
}

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
