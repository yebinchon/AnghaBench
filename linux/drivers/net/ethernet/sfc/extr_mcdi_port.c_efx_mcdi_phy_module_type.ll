; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_module_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_module_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i64 }

@MC_CMD_MEDIA_QSFP_PLUS = common dso_local global i64 0, align 8
@MC_CMD_MEDIA_SFP_PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.efx_nic*)* @efx_mcdi_phy_module_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efx_mcdi_phy_module_type(%struct.efx_nic* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mcdi_phy_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  store %struct.efx_mcdi_phy_data* %7, %struct.efx_mcdi_phy_data** %4, align 8
  %8 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %9 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MC_CMD_MEDIA_QSFP_PLUS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %4, align 8
  %15 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %2, align 8
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = call i32 @efx_mcdi_phy_get_module_eeprom_byte(%struct.efx_nic* %18, i32 0, i32 0)
  switch i32 %19, label %24 [
    i32 3, label %20
    i32 12, label %22
    i32 13, label %22
  ]

20:                                               ; preds = %17
  %21 = load i64, i64* @MC_CMD_MEDIA_SFP_PLUS, align 8
  store i64 %21, i64* %2, align 8
  br label %25

22:                                               ; preds = %17, %17
  %23 = load i64, i64* @MC_CMD_MEDIA_QSFP_PLUS, align 8
  store i64 %23, i64* %2, align 8
  br label %25

24:                                               ; preds = %17
  store i64 0, i64* %2, align 8
  br label %25

25:                                               ; preds = %24, %22, %20, %13
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i32 @efx_mcdi_phy_get_module_eeprom_byte(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
