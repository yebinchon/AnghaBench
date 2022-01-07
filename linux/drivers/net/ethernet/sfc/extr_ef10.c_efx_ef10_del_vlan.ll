; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_del_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_del_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32 }
%struct.efx_ef10_vlan = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VLAN %u to be deleted not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i64)* @efx_ef10_del_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_del_vlan(%struct.efx_nic* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  %7 = alloca %struct.efx_ef10_vlan*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 1
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %10, align 8
  store %struct.efx_ef10_nic_data* %11, %struct.efx_ef10_nic_data** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %17 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.efx_ef10_vlan* @efx_ef10_find_vlan(%struct.efx_nic* %19, i64 %20)
  store %struct.efx_ef10_vlan* %21, %struct.efx_ef10_vlan** %7, align 8
  %22 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %23 = icmp ne %struct.efx_ef10_vlan* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @netif_err(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %15
  %35 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %36 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %37 = call i32 @efx_ef10_del_vlan_internal(%struct.efx_nic* %35, %struct.efx_ef10_vlan* %36)
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %40 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.efx_ef10_vlan* @efx_ef10_find_vlan(%struct.efx_nic*, i64) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local i32 @efx_ef10_del_vlan_internal(%struct.efx_nic*, %struct.efx_ef10_vlan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
