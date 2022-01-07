; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_mcdi_poll_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_mcdi_poll_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.siena_nic_data* }
%struct.siena_nic_data = type { i64* }

@FR_CZ_MC_TREG_SMEM = common dso_local global i32 0, align 4
@EFX_DWORD_0 = common dso_local global i32 0, align 4
@SIENA_STAT_tx_good_bytes = common dso_local global i64 0, align 8
@SIENA_STAT_rx_good_bytes = common dso_local global i64 0, align 8
@MC_STATUS_DWORD_ASSERT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_mcdi_poll_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_mcdi_poll_reboot(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.siena_nic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.siena_nic_data*, %struct.siena_nic_data** %9, align 8
  store %struct.siena_nic_data* %10, %struct.siena_nic_data** %4, align 8
  %11 = load i32, i32* @FR_CZ_MC_TREG_SMEM, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = call i32 @MCDI_STATUS(%struct.efx_nic* %12)
  %14 = add i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @efx_readd(%struct.efx_nic* %15, i32* %6, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @EFX_DWORD_0, align 4
  %20 = call i64 @EFX_DWORD_FIELD(i32 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @EFX_ZERO_DWORD(i32 %25)
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @efx_writed(%struct.efx_nic* %27, i32* %6, i32 %28)
  %30 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %31 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @SIENA_STAT_tx_good_bytes, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %36 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @SIENA_STAT_rx_good_bytes, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @MC_STATUS_DWORD_ASSERT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @EINTR, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %24
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %43, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @MCDI_STATUS(%struct.efx_nic*) #1

declare dso_local i32 @efx_readd(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_DWORD_FIELD(i32, i32) #1

declare dso_local i32 @EFX_ZERO_DWORD(i32) #1

declare dso_local i32 @efx_writed(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
