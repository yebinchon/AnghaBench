; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_port_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_port_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i64*, %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_port_reconfigure(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_mcdi_phy_data*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 3
  %7 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  store %struct.efx_mcdi_phy_data* %7, %struct.efx_mcdi_phy_data** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @ethtool_linkset_to_mcdi_cap(i64* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %3, align 8
  %21 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %18, %14 ], [ %22, %19 ]
  store i32 %24, i32* %4, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ethtool_fec_caps_to_mcdi(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %34 = call i32 @efx_get_mcdi_phy_flags(%struct.efx_nic* %33)
  %35 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @efx_mcdi_set_link(%struct.efx_nic* %31, i32 %32, i32 %34, i32 %37, i32 0)
  ret i32 %38
}

declare dso_local i32 @ethtool_linkset_to_mcdi_cap(i64*) #1

declare dso_local i32 @ethtool_fec_caps_to_mcdi(i32) #1

declare dso_local i32 @efx_mcdi_set_link(%struct.efx_nic*, i32, i32, i32, i32) #1

declare dso_local i32 @efx_get_mcdi_phy_flags(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
