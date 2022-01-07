; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_siena_sriov_set_vf_vlan(%struct.efx_nic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.siena_nic_data*, align 8
  %11 = alloca %struct.siena_vf*, align 8
  %12 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 1
  %15 = load %struct.siena_nic_data*, %struct.siena_nic_data** %14, align 8
  store %struct.siena_nic_data* %15, %struct.siena_nic_data** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load %struct.siena_nic_data*, %struct.siena_nic_data** %10, align 8
  %26 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %25, i32 0, i32 0
  %27 = load %struct.siena_vf*, %struct.siena_vf** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %27, i64 %29
  store %struct.siena_vf* %30, %struct.siena_vf** %11, align 8
  %31 = load %struct.siena_vf*, %struct.siena_vf** %11, align 8
  %32 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @VLAN_VID_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 7
  %39 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %36, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = load %struct.siena_vf*, %struct.siena_vf** %11, align 8
  %45 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.siena_vf*, %struct.siena_vf** %11, align 8
  %48 = call i32 @__efx_siena_sriov_update_vf_addr(%struct.siena_vf* %47)
  %49 = load %struct.siena_vf*, %struct.siena_vf** %11, align 8
  %50 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %24, %21
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @__efx_siena_sriov_update_vf_addr(%struct.siena_vf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
