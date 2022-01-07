; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_poll_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_poll_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.efx_mcdi_iface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_poll_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_poll_once(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %5)
  store %struct.efx_mcdi_iface* %6, %struct.efx_mcdi_iface** %4, align 8
  %7 = call i32 (...) @rmb()
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.efx_nic*)**
  %13 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %12, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = call i32 %13(%struct.efx_nic* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %20 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = call i32 @efx_mcdi_read_response_header(%struct.efx_nic* %22)
  %24 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %25 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @efx_mcdi_read_response_header(%struct.efx_nic*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
