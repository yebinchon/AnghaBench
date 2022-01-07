; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_free_vf_vports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_free_vf_vports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.ef10_vf* }
%struct.ef10_vf = type { i32*, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_DEV_FLAGS_ASSIGNED = common dso_local global i32 0, align 4
@EVB_PORT_ID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_ef10_sriov_free_vf_vports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_sriov_free_vf_vports(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef10_vf*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 1
  %8 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  store %struct.efx_ef10_nic_data* %8, %struct.efx_ef10_nic_data** %3, align 8
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %10 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %9, i32 0, i32 0
  %11 = load %struct.ef10_vf*, %struct.ef10_vf** %10, align 8
  %12 = icmp ne %struct.ef10_vf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %92

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %89, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %15
  %22 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %23 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %22, i32 0, i32 0
  %24 = load %struct.ef10_vf*, %struct.ef10_vf** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %24, i64 %26
  store %struct.ef10_vf* %27, %struct.ef10_vf** %5, align 8
  %28 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %29 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %34 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCI_DEV_FLAGS_ASSIGNED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %89

42:                                               ; preds = %32, %21
  %43 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %44 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %49 = load i32, i32* @EVB_PORT_ID_NULL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @efx_ef10_evb_port_assign(%struct.efx_nic* %48, i32 %49, i32 %50)
  %52 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %53 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %56 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @is_zero_ether_addr(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %54
  %61 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %62 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %63 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %66 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @efx_ef10_vport_del_mac(%struct.efx_nic* %61, i64 %64, i32 %67)
  %69 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %70 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @eth_zero_addr(i32 %71)
  br label %73

73:                                               ; preds = %60, %54
  %74 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %75 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %80 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %81 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @efx_ef10_vport_free(%struct.efx_nic* %79, i64 %82)
  %84 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %85 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.ef10_vf*, %struct.ef10_vf** %5, align 8
  %88 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %86, %41
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %15

92:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @efx_ef10_evb_port_assign(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @efx_ef10_vport_del_mac(%struct.efx_nic*, i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @efx_ef10_vport_free(%struct.efx_nic*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
