; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_siena_sriov_set_vf_mac(%struct.efx_nic* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.siena_nic_data*, align 8
  %9 = alloca %struct.siena_vf*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 1
  %12 = load %struct.siena_nic_data*, %struct.siena_nic_data** %11, align 8
  store %struct.siena_nic_data* %12, %struct.siena_nic_data** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.siena_nic_data*, %struct.siena_nic_data** %8, align 8
  %23 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %22, i32 0, i32 0
  %24 = load %struct.siena_vf*, %struct.siena_vf** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %24, i64 %26
  store %struct.siena_vf* %27, %struct.siena_vf** %9, align 8
  %28 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %29 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %32 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @ether_addr_copy(i32 %34, i32* %35)
  %37 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %38 = call i32 @__efx_siena_sriov_update_vf_addr(%struct.siena_vf* %37)
  %39 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %40 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %21, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @__efx_siena_sriov_update_vf_addr(%struct.siena_vf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
