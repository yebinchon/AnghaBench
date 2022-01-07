; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@VF_TX_FILTER_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_siena_sriov_get_vf_config(%struct.efx_nic* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.siena_nic_data*, align 8
  %9 = alloca %struct.siena_vf*, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load %struct.siena_nic_data*, %struct.siena_nic_data** %12, align 8
  store %struct.siena_nic_data* %13, %struct.siena_nic_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load %struct.siena_nic_data*, %struct.siena_nic_data** %8, align 8
  %24 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %23, i32 0, i32 0
  %25 = load %struct.siena_vf*, %struct.siena_vf** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %25, i64 %27
  store %struct.siena_vf* %28, %struct.siena_vf** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %31 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %33 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %36 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ether_addr_copy(i32 %34, i32 %38)
  %40 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %43 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %45 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @VLAN_VID_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %53 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = and i32 %56, 7
  %58 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %59 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.siena_vf*, %struct.siena_vf** %9, align 8
  %61 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VF_TX_FILTER_ON, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %67 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %22, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
