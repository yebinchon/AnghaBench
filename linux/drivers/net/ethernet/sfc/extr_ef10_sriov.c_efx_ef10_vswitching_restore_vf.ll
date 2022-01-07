; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vswitching_restore_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_vswitching_restore_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32 }

@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ef10_vswitching_restore_vf(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  store %struct.efx_ef10_nic_data* %8, %struct.efx_ef10_nic_data** %4, align 8
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %10 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %17 = call i32 @efx_ef10_vadaptor_free(%struct.efx_nic* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %24 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @efx_ef10_vadaptor_free(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
