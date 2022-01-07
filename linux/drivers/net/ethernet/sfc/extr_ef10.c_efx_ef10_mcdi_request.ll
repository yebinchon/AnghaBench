; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_mcdi_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_mcdi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@ER_DZ_MC_DB_LWRD = common dso_local global i32 0, align 4
@ER_DZ_MC_DB_HWRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*, i64, i32*, i64)* @efx_ef10_mcdi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_mcdi_request(%struct.efx_nic* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.efx_ef10_nic_data*, align 8
  %12 = alloca i32*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %14, align 8
  store %struct.efx_ef10_nic_data* %15, %struct.efx_ef10_nic_data** %11, align 8
  %16 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %11, align 8
  %17 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @memcpy(i32* %20, i32* %21, i64 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @memcpy(i32* %26, i32* %27, i64 %28)
  %30 = call i32 (...) @wmb()
  %31 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %32 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %11, align 8
  %33 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = ashr i32 %36, 32
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load i32, i32* @ER_DZ_MC_DB_LWRD, align 4
  %40 = call i32 @_efx_writed(%struct.efx_nic* %31, i32 %38, i32 %39)
  %41 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %42 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %11, align 8
  %43 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load i32, i32* @ER_DZ_MC_DB_HWRD, align 4
  %49 = call i32 @_efx_writed(%struct.efx_nic* %41, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @_efx_writed(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
