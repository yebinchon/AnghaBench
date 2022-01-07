; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_assign_vf_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_assign_vf_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.ef10_vf* }
%struct.ef10_vf = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4
@MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32)* @efx_ef10_sriov_assign_vf_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_sriov_assign_vf_vport(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  %7 = alloca %struct.ef10_vf*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %10, align 8
  store %struct.efx_ef10_nic_data* %11, %struct.efx_ef10_nic_data** %6, align 8
  %12 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %13 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %12, i32 0, i32 0
  %14 = load %struct.ef10_vf*, %struct.ef10_vf** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %14, i64 %16
  store %struct.ef10_vf* %17, %struct.ef10_vf** %7, align 8
  %18 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %19 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %18, i32 0, i32 0
  %20 = load %struct.ef10_vf*, %struct.ef10_vf** %19, align 8
  %21 = icmp ne %struct.ef10_vf* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %31 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %32 = load i32, i32* @MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL, align 4
  %33 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %34 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %37 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %36, i32 0, i32 1
  %38 = call i32 @efx_ef10_vport_alloc(%struct.efx_nic* %30, i32 %31, i32 %32, i32 %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %74

43:                                               ; preds = %29
  %44 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %45 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %46 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %49 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @efx_ef10_vport_add_mac(%struct.efx_nic* %44, i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %56 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @eth_zero_addr(i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %74

60:                                               ; preds = %43
  %61 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %62 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %63 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @efx_ef10_evb_port_assign(%struct.efx_nic* %61, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %60
  %72 = load %struct.ef10_vf*, %struct.ef10_vf** %7, align 8
  %73 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %69, %54, %41, %26
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @efx_ef10_vport_alloc(%struct.efx_nic*, i32, i32, i32, i32*) #1

declare dso_local i32 @efx_ef10_vport_add_mac(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @efx_ef10_evb_port_assign(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
