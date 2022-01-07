; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_process_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_process_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MCDI_EVENT_LINKCHANGE_SPEED = common dso_local global i32 0, align 4
@efx_mcdi_event_link_speed = common dso_local global i64* null, align 8
@MCDI_EVENT_LINKCHANGE_LINK_FLAGS = common dso_local global i32 0, align 4
@MCDI_EVENT_LINKCHANGE_FCNTL = common dso_local global i32 0, align 4
@MCDI_EVENT_LINKCHANGE_LP_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mcdi_process_link_change(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MCDI_EVENT_LINKCHANGE_SPEED, align 4
  %12 = call i64 @EFX_QWORD_FIELD(i32 %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64*, i64** @efx_mcdi_event_link_speed, align 8
  %15 = call i64 @ARRAY_SIZE(i64* %14)
  %16 = icmp uge i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @EFX_WARN_ON_PARANOID(i32 %17)
  %19 = load i64*, i64** @efx_mcdi_event_link_speed, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MCDI_EVENT_LINKCHANGE_LINK_FLAGS, align 4
  %26 = call i64 @EFX_QWORD_FIELD(i32 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MCDI_EVENT_LINKCHANGE_FCNTL, align 4
  %30 = call i64 @EFX_QWORD_FIELD(i32 %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MCDI_EVENT_LINKCHANGE_LP_CAP, align 4
  %34 = call i64 @EFX_QWORD_FIELD(i32 %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @efx_mcdi_phy_decode_link(%struct.efx_nic* %35, i32* %37, i64 %38, i64 %39, i64 %40)
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @efx_mcdi_phy_check_fcntl(%struct.efx_nic* %42, i64 %43)
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = call i32 @efx_link_status_changed(%struct.efx_nic* %45)
  ret void
}

declare dso_local i64 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @efx_mcdi_phy_decode_link(%struct.efx_nic*, i32*, i64, i64, i64) #1

declare dso_local i32 @efx_mcdi_phy_check_fcntl(%struct.efx_nic*, i64) #1

declare dso_local i32 @efx_link_status_changed(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
