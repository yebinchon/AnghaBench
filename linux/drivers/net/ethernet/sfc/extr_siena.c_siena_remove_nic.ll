; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_remove_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_remove_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32*, i32 }

@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @siena_remove_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siena_remove_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = call i32 @efx_mcdi_mon_remove(%struct.efx_nic* %3)
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 1
  %8 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %5, i32* %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = load i32, i32* @RESET_TYPE_ALL, align 4
  %11 = call i32 @efx_mcdi_reset(%struct.efx_nic* %9, i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = call i32 @efx_mcdi_detach(%struct.efx_nic* %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = call i32 @efx_mcdi_fini(%struct.efx_nic* %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret void
}

declare dso_local i32 @efx_mcdi_mon_remove(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_mcdi_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_mcdi_detach(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_fini(%struct.efx_nic*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
